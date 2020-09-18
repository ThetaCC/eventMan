-- Dictionary of event subscribers
local subscribers = {}

-- API Base
local eventMan = {}

-- Subscribes callback function to a type of event
function eventMan.subscribe(type, callback)
    local array = {}

    if subscribers[type] then
        array = subscribers[type]
    else
        subscribers[type] = array
    end

    array[#array+1] = callback
end

-- Event handling function
function eventMan.handleEvents()
    local eventParams = {os.pullEvent()}

    local event = table.remove(eventParams, 1)

    if subscribers[event] then
        for i,v in pairs(subscribers[event]) do
            v(unpack(eventParams))
        end
    end
end

return eventMan