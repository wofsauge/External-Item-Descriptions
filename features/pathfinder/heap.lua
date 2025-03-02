
local Heap = {}
Heap.__index = Heap

local function findLowest( a, b )
    return a < b
end

local function newHeap( template, compare )
    return setmetatable( {
        Data = {},
        Compare = compare or findLowest,
        Size = 0
    }, template )
end

local function sortUp( heap, index )
    if index <= 1 then return end
    local pIndex = index % 2 == 0 and index / 2 or ( index - 1 ) / 2

    if not heap.Compare( heap.Data[pIndex], heap.Data[index] ) then
        heap.Data[pIndex], heap.Data[index] = heap.Data[index], heap.Data[pIndex]
        sortUp( heap, pIndex )
    end
end

local function sortDown( heap, index )
    local leftIndex, rightIndex, minIndex
    leftIndex = index * 2
    rightIndex = leftIndex + 1
    if rightIndex > heap.Size then
        if leftIndex > heap.Size then return
        else minIndex = leftIndex end
    else
        if heap.Compare( heap.Data[leftIndex], heap.Data[rightIndex] ) then minIndex = leftIndex
        else minIndex = rightIndex end
    end

    if not heap.Compare( heap.Data[index], heap.Data[minIndex] ) then
        heap.Data[index], heap.Data[minIndex] = heap.Data[minIndex], heap.Data[index]
        sortDown( heap, minIndex )
    end
end

function Heap:Empty()
    return self.Size == 0
end

function Heap:Clear()
    self.Data, self.Size, self.Compare = {}, 0, self.Compare or findLowest
    return self
end

function Heap:Push( item )
    if item then
        self.Size = self.Size + 1
        self.Data[self.Size] = item
        sortUp( self, self.Size )
    end
    return self
end

function Heap:Pop()
    local root
    if self.Size > 0 then
        root = self.Data[1]
        self.Data[1] = self.Data[self.Size]
        self.Data[self.Size] = nil
        self.Size = self.Size - 1
        if self.Size > 1 then
            sortDown( self, 1 )
        end
    end
    return root
end

return setmetatable( Heap, { __call = function( self, ... ) return newHeap( self, ... ) end } )