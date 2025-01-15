# Documentation For Nebula
## Booting The Library
```lua
local Nebula = loadstring(game:HttpGet("https://pastebin.com/raw/LsCy0sFq"))()
or if the first dont work
local Nebula = loadstring(game:HttpGet("https://raw.githubusercontent.com/ElDonNadie820/Nebula-Ui-Library/refs/heads/main/Nebula%20Library.lua"))()
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
```
return _G.Main
```
## 
Only button for the moment bc im making toggles, dropdown and slider.
