
-- Positions must be a table (or metatable) where table.x and table.y are accessible.

local FindVector = require( "features.pathfinder.find_vector" )
local Heap = require( "features.pathfinder.heap" )

local Luafinding = {}
Luafinding.__index = Luafinding

-- This instantiates a new Luafinding class for usage later.
-- "start" and "finish" should both be 2 dimensional FindVectors, or just a table with "x" and "y" keys. See the note at the top of this file.
-- positionOpenCheck can be a function or a table.
-- If it's a function it must have a return value of true or false depending on whether or not the position is open.
-- If it's a table it should simply be a table of values such as "pos[x][y] = true".
function Luafinding:Initialize( start, finish, positionOpenCheck )
    local newPath = setmetatable( { Start = FindVector(start.Y,start.X), Finish = FindVector(finish.Y,finish.X), PositionOpenCheck = positionOpenCheck }, Luafinding )
    newPath:CalculatePath()
    return newPath
end

local function distance( start, finish )
    local dx = start.x - finish.x
    local dy = start.y - finish.y
    return dx * dx + dy * dy
end

local positionIsOpen
local function positionIsOpenTable( pos, check ) return check[pos.x] and check[pos.x][pos.y] end
local function positionIsOpenCustom( pos, check ) return check( _, pos ) end

local adjacentPositions = {
    FindVector( 0, -1 ),
    FindVector( -1, 0 ),
    FindVector( 0, 1 ),
    FindVector( 1, 0 ),
}

local function fetchOpenAdjacentNodes( pos, positionOpenCheck )
    local result = {}

    for i = 1, #adjacentPositions do
        local adjacentPos = pos + adjacentPositions[i]
        if positionIsOpen( adjacentPos, positionOpenCheck ) then
            table.insert( result, adjacentPos )
        end
    end

    return result
end

-- This is the function used to actually calculate the path.
-- It returns the calcated path table, or nil if it cannot find a path.
function Luafinding:CalculatePath()
    local start, finish, positionOpenCheck = self.Start, self.Finish, self.PositionOpenCheck
    if not positionOpenCheck then return end
    positionIsOpen = type( positionOpenCheck ) == "table" and positionIsOpenTable or positionIsOpenCustom
    if not positionIsOpen( finish, positionOpenCheck ) then return end
    -- EID edit: check if end position is surrounded by stuff and therefore unaccessable. This is done for a quick early out
    local directlyAdjacents = fetchOpenAdjacentNodes( self.Finish, positionOpenCheck )
    if #directlyAdjacents == 0 then return end
    -- edit end
    local open, closed = Heap(), {}

    start.gScore = 0
    start.hScore = distance( start, finish )
    start.fScore = start.hScore

    open.Compare = function( a, b )
        return a.fScore < b.fScore
    end

    open:Push( start )

    while not open:Empty() do
        local current = open:Pop()
        local currentId = current:ID()
        if not closed[currentId] then
            if current == finish then
                local path = {}
                while true do
                    if current.previous then
                        table.insert( path, 1, current )
                        current = current.previous
                    else
                        table.insert( path, 1, start )
                        self.Path = path
                        return path
                    end
                end
            end

            closed[currentId] = true

            local adjacents = fetchOpenAdjacentNodes( current, positionOpenCheck )
            for i = 1, #adjacents do
                local adjacent = adjacents[i]
                if not closed[adjacent:ID()] then
                    local added_gScore = current.gScore + distance( current, adjacent )

                    if not adjacent.gScore or added_gScore < adjacent.gScore then
                        adjacent.gScore = added_gScore
                        if not adjacent.hScore then
                            adjacent.hScore = distance( adjacent, finish )
                        end
                        adjacent.fScore = added_gScore + adjacent.hScore

                        open:Push( adjacent )
                        adjacent.previous = current
                    end
                end
            end
        end
    end
end

function Luafinding:GetPath()
    return self.Path
end

function Luafinding:GetDistance()
    local path = self.Path
    if not path then return end
    return distance( path[1], path[#path] )
end

function Luafinding:GetTiles()
    local path = self.Path
    if not path then return end
    return #path
end

function Luafinding:__tostring()
    local path = self.Path
    local string = ""

    if path then
        for k, v in ipairs( path ) do
            local formatted = ( k .. ": " .. v )
            string = k == 1 and formatted or string .. "\n" .. formatted
        end
    end

    return string
end

return setmetatable( Luafinding, { __call = function( self, ... ) return self:Initialize( ... ) end } )