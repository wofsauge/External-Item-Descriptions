
local FindVector = {}
FindVector.__index = FindVector

local function newFindVector( x, y )
    return setmetatable( { x = x or 0, y = y or 0 }, FindVector )
end

function FindVector.__unm( vTbl )
    return newFindVector( -vTbl.x, -vTbl.y )
end

function FindVector.__add( a, b )
    return newFindVector( a.x + b.x, a.y + b.y )
end

function FindVector.__sub( a, b )
    return newFindVector( a.x - b.x, a.y - b.y )
end

function FindVector.__mul( a, b )
    if type( a ) == "number" then
        return newFindVector( a * b.x, a * b.y )
    elseif type( b ) == "number" then
        return newFindVector( a.x * b, a.y * b )
    else
        return newFindVector( a.x * b.x, a.y * b.y )
    end
end

function FindVector.__div( a, b )
    return newFindVector( a.x / b, a.y / b )
end

function FindVector.__eq( a, b )
    return a.x == b.x and a.y == b.y
end

function FindVector:__tostring()
    return "(" .. self.x .. ", " .. self.y .. ")"
end

function FindVector:ID()
    if self._ID == nil then
        local x, y = self.x, self.y
        self._ID = 0.5 * ( ( x + y ) * ( x + y + 1 ) + y )
    end

    return self._ID
end

return setmetatable( FindVector, { __call = function( _, ... ) return newFindVector( ... ) end } )