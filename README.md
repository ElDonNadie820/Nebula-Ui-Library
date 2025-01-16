# Documentation For Nebula
## Booting The Library
```lua
local Nebula = loadstring(game:HttpGet("https://pastebin.com/raw/LsCy0sFq"))()

if the first dont work then use

local Nebula = loadstring(game:HttpGet("https://raw.githubusercontent.com/ElDonNadie820/Nebula-Ui-Library/refs/heads/main/Nebula%20Library.lua"))()

or if you want a modernized (beta) one then use

local Nebula = loadstring(game:HttpGet("https://pastebin.com/raw/wZThH2G4"))()
```
## Making The Gui
```lua
local Frame1 = _G.Main:New("Name Of The Hub")
```
## Making A Button
```lua
Frame1:Button("Print Hi", function()
-- Here Goes What The Button Will Do
end)
```
## Put This At The End Of The Script (Required)
```lua
return _G.Main
```
## 
Only button for the moment bc im making toggles, dropdown and slider.
