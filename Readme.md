# Description

## eventMan
A useful small lib made for ComputerCraft, that handles events and lets you subscribe functions to events

Example use:

```lua
local eventMan = require("eventMan")

local function printKey(keycode)
    print(keys.getName(keycode) .. " key pressed")
end

eventMan.subscribe("key", printKey)

while true do
    eventMan.handleEvents()
end
```

# Installation
Run following in computercraft computer:
```
wget 
```