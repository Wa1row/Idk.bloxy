-- hi im wairow



--[[
	ui-engine-v2
	version 1.3a
	by singularity (v1 @ king wairow) (wairow)
--]]

local ui_options = {
	main_color = color3.fromrgb(0, 192, 192),
	min_size = vector2.new(400, 300),
	toggle_key = enum.keycode.rightshift,
	can_resize = true,
}

do
	local imgui = game:getservice("coregui"):findfirstchild("imgui")
	if imgui then imgui:destroy() end
end

local imgui = instance.new("screengui")
local prefabs = instance.new("frame")
local label = instance.new("textlabel")
local window = instance.new("imagelabel")
local resizer = instance.new("frame")
local bar = instance.new("frame")
local toggle = instance.new("imagebutton")
local base = instance.new("imagelabel")
local top = instance.new("imagelabel")
local tabs = instance.new("frame")
local title = instance.new("textlabel")
local tabselection = instance.new("imagelabel")
local tabbuttons = instance.new("frame")
local uilistlayout = instance.new("uilistlayout")
local frame = instance.new("frame")
local tab = instance.new("frame")
local uilistlayout_2 = instance.new("uilistlayout")
local textbox = instance.new("textbox")
local textbox_roundify_4px = instance.new("imagelabel")
local slider = instance.new("imagelabel")
local title_2 = instance.new("textlabel")
local indicator = instance.new("imagelabel")
local value = instance.new("textlabel")
local textlabel = instance.new("textlabel")
local textlabel_2 = instance.new("textlabel")
local circle = instance.new("imagelabel")
local uilistlayout_3 = instance.new("uilistlayout")
local dropdown = instance.new("textbutton")
local indicator_2 = instance.new("imagelabel")
local box = instance.new("imagebutton")
local objects = instance.new("scrollingframe")
local uilistlayout_4 = instance.new("uilistlayout")
local textbutton_roundify_4px = instance.new("imagelabel")
local tabbutton = instance.new("textbutton")
local textbutton_roundify_4px_2 = instance.new("imagelabel")
local folder = instance.new("imagelabel")
local button = instance.new("textbutton")
local textbutton_roundify_4px_3 = instance.new("imagelabel")
local toggle_2 = instance.new("imagelabel")
local objects_2 = instance.new("frame")
local uilistlayout_5 = instance.new("uilistlayout")
local horizontalalignment = instance.new("frame")
local uilistlayout_6 = instance.new("uilistlayout")
local console = instance.new("imagelabel")
local scrollingframe = instance.new("scrollingframe")
local source = instance.new("textbox")
local comments = instance.new("textlabel")
local globals = instance.new("textlabel")
local keywords = instance.new("textlabel")
local remotehighlight = instance.new("textlabel")
local strings = instance.new("textlabel")
local tokens = instance.new("textlabel")
local numbers = instance.new("textlabel")
local info = instance.new("textlabel")
local lines = instance.new("textlabel")
local colorpicker = instance.new("imagelabel")
local palette = instance.new("imagelabel")
local indicator_3 = instance.new("imagelabel")
local sample = instance.new("imagelabel")
local saturation = instance.new("imagelabel")
local indicator_4 = instance.new("frame")
local switch = instance.new("textbutton")
local textbutton_roundify_4px_4 = instance.new("imagelabel")
local title_3 = instance.new("textlabel")
local button_2 = instance.new("textbutton")
local textbutton_roundify_4px_5 = instance.new("imagelabel")
local dropdownbutton = instance.new("textbutton")
local keybind = instance.new("imagelabel")
local title_4 = instance.new("textlabel")
local input = instance.new("textbutton")
local input_roundify_4px = instance.new("imagelabel")
local windows = instance.new("frame")

imgui.name = "imgui"
imgui.parent = game:getservice("coregui")

prefabs.name = "prefabs"
prefabs.parent = imgui
prefabs.backgroundcolor3 = color3.new(1, 1, 1)
prefabs.size = udim2.new(0, 100, 0, 100)
prefabs.visible = false

label.name = "label"
label.parent = prefabs
label.backgroundcolor3 = color3.new(1, 1, 1)
label.backgroundtransparency = 1
label.size = udim2.new(0, 200, 0, 20)
label.font = enum.font.gothamsemibold
label.text = "hello, world 123"
label.textcolor3 = color3.new(1, 1, 1)
label.textsize = 14
label.textxalignment = enum.textxalignment.left

window.name = "window"
window.parent = prefabs
window.active = true
window.backgroundcolor3 = color3.new(1, 1, 1)
window.backgroundtransparency = 1
window.clipsdescendants = true
window.position = udim2.new(0, 20, 0, 20)
window.selectable = true
window.size = udim2.new(0, 200, 0, 200)
window.image = "rbxassetid://2851926732"
window.imagecolor3 = color3.new(0.0823529, 0.0862745, 0.0901961)
window.scaletype = enum.scaletype.slice
window.slicecenter = rect.new(12, 12, 12, 12)

resizer.name = "resizer"
resizer.parent = window
resizer.active = true
resizer.backgroundcolor3 = color3.new(1, 1, 1)
resizer.backgroundtransparency = 1
resizer.bordersizepixel = 0
resizer.position = udim2.new(1, -20, 1, -20)
resizer.size = udim2.new(0, 20, 0, 20)

bar.name = "bar"
bar.parent = window
bar.backgroundcolor3 = color3.new(0.160784, 0.290196, 0.478431)
bar.bordersizepixel = 0
bar.position = udim2.new(0, 0, 0, 5)
bar.size = udim2.new(1, 0, 0, 15)

toggle.name = "toggle"
toggle.parent = bar
toggle.backgroundcolor3 = color3.new(1, 1, 1)
toggle.backgroundtransparency = 1
toggle.position = udim2.new(0, 5, 0, -2)
toggle.rotation = 90
toggle.size = udim2.new(0, 20, 0, 20)
toggle.zindex = 2
toggle.image = "https://www.roblox.com/thumbs/asset.ashx?width=420&height=420&assetid=4731371541"

base.name = "base"
base.parent = bar
base.backgroundcolor3 = color3.new(0.160784, 0.290196, 0.478431)
base.bordersizepixel = 0
base.position = udim2.new(0, 0, 0.800000012, 0)
base.size = udim2.new(1, 0, 0, 10)
base.image = "rbxassetid://2851926732"
base.imagecolor3 = color3.new(0.160784, 0.290196, 0.478431)
base.scaletype = enum.scaletype.slice
base.slicecenter = rect.new(12, 12, 12, 12)

top.name = "top"
top.parent = bar
top.backgroundcolor3 = color3.new(1, 1, 1)
top.backgroundtransparency = 1
top.position = udim2.new(0, 0, 0, -5)
top.size = udim2.new(1, 0, 0, 10)
top.image = "rbxassetid://2851926732"
top.imagecolor3 = color3.new(0.160784, 0.290196, 0.478431)
top.scaletype = enum.scaletype.slice
top.slicecenter = rect.new(12, 12, 12, 12)

tabs.name = "tabs"
tabs.parent = window
tabs.backgroundcolor3 = color3.new(1, 1, 1)
tabs.backgroundtransparency = 1
tabs.position = udim2.new(0, 15, 0, 60)
tabs.size = udim2.new(1, -30, 1, -60)

title.name = "title"
title.parent = window
title.backgroundcolor3 = color3.new(1, 1, 1)
title.backgroundtransparency = 1
title.position = udim2.new(0, 30, 0, 3)
title.size = udim2.new(0, 200, 0, 20)
title.font = enum.font.gothambold
title.text = "gamer time"
title.textcolor3 = color3.new(1, 1, 1)
title.textsize = 14
title.textxalignment = enum.textxalignment.left

tabselection.name = "tabselection"
tabselection.parent = window
tabselection.backgroundcolor3 = color3.new(1, 1, 1)
tabselection.backgroundtransparency = 1
tabselection.position = udim2.new(0, 15, 0, 30)
tabselection.size = udim2.new(1, -30, 0, 25)
tabselection.visible = false
tabselection.image = "rbxassetid://2851929490"
tabselection.imagecolor3 = color3.new(0.145098, 0.14902, 0.156863)
tabselection.scaletype = enum.scaletype.slice
tabselection.slicecenter = rect.new(4, 4, 4, 4)

tabbuttons.name = "tabbuttons"
tabbuttons.parent = tabselection
tabbuttons.backgroundcolor3 = color3.new(1, 1, 1)
tabbuttons.backgroundtransparency = 1
tabbuttons.size = udim2.new(1, 0, 1, 0)

uilistlayout.parent = tabbuttons
uilistlayout.filldirection = enum.filldirection.horizontal
uilistlayout.sortorder = enum.sortorder.layoutorder
uilistlayout.padding = udim.new(0, 2)

frame.parent = tabselection
frame.backgroundcolor3 = color3.new(0.12549, 0.227451, 0.372549)
frame.bordercolor3 = color3.new(0.105882, 0.164706, 0.207843)
frame.bordersizepixel = 0
frame.position = udim2.new(0, 0, 1, 0)
frame.size = udim2.new(1, 0, 0, 2)

tab.name = "tab"
tab.parent = prefabs
tab.backgroundcolor3 = color3.new(1, 1, 1)
tab.backgroundtransparency = 1
tab.size = udim2.new(1, 0, 1, 0)
tab.visible = false

uilistlayout_2.parent = tab
uilistlayout_2.sortorder = enum.sortorder.layoutorder
uilistlayout_2.padding = udim.new(0, 5)

textbox.parent = prefabs
textbox.backgroundcolor3 = color3.new(1, 1, 1)
textbox.backgroundtransparency = 1
textbox.bordersizepixel = 0
textbox.size = udim2.new(1, 0, 0, 20)
textbox.zindex = 2
textbox.font = enum.font.gothamsemibold
textbox.placeholdercolor3 = color3.new(0.698039, 0.698039, 0.698039)
textbox.placeholdertext = "input text"
textbox.text = ""
textbox.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
textbox.textsize = 14

textbox_roundify_4px.name = "textbox_roundify_4px"
textbox_roundify_4px.parent = textbox
textbox_roundify_4px.backgroundcolor3 = color3.new(1, 1, 1)
textbox_roundify_4px.backgroundtransparency = 1
textbox_roundify_4px.size = udim2.new(1, 0, 1, 0)
textbox_roundify_4px.image = "rbxassetid://2851929490"
textbox_roundify_4px.imagecolor3 = color3.new(0.203922, 0.207843, 0.219608)
textbox_roundify_4px.scaletype = enum.scaletype.slice
textbox_roundify_4px.slicecenter = rect.new(4, 4, 4, 4)

slider.name = "slider"
slider.parent = prefabs
slider.backgroundcolor3 = color3.new(1, 1, 1)
slider.backgroundtransparency = 1
slider.position = udim2.new(0, 0, 0.178571433, 0)
slider.size = udim2.new(1, 0, 0, 20)
slider.image = "rbxassetid://2851929490"
slider.imagecolor3 = color3.new(0.145098, 0.14902, 0.156863)
slider.scaletype = enum.scaletype.slice
slider.slicecenter = rect.new(4, 4, 4, 4)

title_2.name = "title"
title_2.parent = slider
title_2.backgroundcolor3 = color3.new(1, 1, 1)
title_2.backgroundtransparency = 1
title_2.position = udim2.new(0.5, 0, 0.5, -10)
title_2.size = udim2.new(0, 0, 0, 20)
title_2.zindex = 2
title_2.font = enum.font.gothambold
title_2.text = "slider"
title_2.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
title_2.textsize = 14

indicator.name = "indicator"
indicator.parent = slider
indicator.backgroundcolor3 = color3.new(1, 1, 1)
indicator.backgroundtransparency = 1
indicator.size = udim2.new(0, 0, 0, 20)
indicator.image = "rbxassetid://2851929490"
indicator.imagecolor3 = color3.new(0.254902, 0.262745, 0.278431)
indicator.scaletype = enum.scaletype.slice
indicator.slicecenter = rect.new(4, 4, 4, 4)

value.name = "value"
value.parent = slider
value.backgroundcolor3 = color3.new(1, 1, 1)
value.backgroundtransparency = 1
value.position = udim2.new(1, -55, 0.5, -10)
value.size = udim2.new(0, 50, 0, 20)
value.font = enum.font.gothambold
value.text = "0%"
value.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
value.textsize = 14

textlabel.parent = slider
textlabel.backgroundcolor3 = color3.new(1, 1, 1)
textlabel.backgroundtransparency = 1
textlabel.position = udim2.new(1, -20, -0.75, 0)
textlabel.size = udim2.new(0, 26, 0, 50)
textlabel.font = enum.font.gothambold
textlabel.text = "]"
textlabel.textcolor3 = color3.new(0.627451, 0.627451, 0.627451)
textlabel.textsize = 14

textlabel_2.parent = slider
textlabel_2.backgroundcolor3 = color3.new(1, 1, 1)
textlabel_2.backgroundtransparency = 1
textlabel_2.position = udim2.new(1, -65, -0.75, 0)
textlabel_2.size = udim2.new(0, 26, 0, 50)
textlabel_2.font = enum.font.gothambold
textlabel_2.text = "["
textlabel_2.textcolor3 = color3.new(0.627451, 0.627451, 0.627451)
textlabel_2.textsize = 14

circle.name = "circle"
circle.parent = prefabs
circle.backgroundcolor3 = color3.new(1, 1, 1)
circle.backgroundtransparency = 1
circle.image = "rbxassetid://266543268"
circle.imagetransparency = 0.5

uilistlayout_3.parent = prefabs
uilistlayout_3.filldirection = enum.filldirection.horizontal
uilistlayout_3.sortorder = enum.sortorder.layoutorder
uilistlayout_3.padding = udim.new(0, 20)

dropdown.name = "dropdown"
dropdown.parent = prefabs
dropdown.backgroundcolor3 = color3.new(1, 1, 1)
dropdown.backgroundtransparency = 1
dropdown.bordersizepixel = 0
dropdown.position = udim2.new(-0.055555556, 0, 0.0833333284, 0)
dropdown.size = udim2.new(0, 200, 0, 20)
dropdown.zindex = 2
dropdown.font = enum.font.gothambold
dropdown.text = "      dropdown"
dropdown.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
dropdown.textsize = 14
dropdown.textxalignment = enum.textxalignment.left

indicator_2.name = "indicator"
indicator_2.parent = dropdown
indicator_2.backgroundcolor3 = color3.new(1, 1, 1)
indicator_2.backgroundtransparency = 1
indicator_2.position = udim2.new(0.899999976, -10, 0.100000001, 0)
indicator_2.rotation = -90
indicator_2.size = udim2.new(0, 15, 0, 15)
indicator_2.zindex = 2
indicator_2.image = "https://www.roblox.com/thumbs/asset.ashx?width=420&height=420&assetid=4744658743"

box.name = "box"
box.parent = dropdown
box.backgroundcolor3 = color3.new(1, 1, 1)
box.backgroundtransparency = 1
box.position = udim2.new(0, 0, 0, 25)
box.size = udim2.new(1, 0, 0, 150)
box.zindex = 3
box.image = "rbxassetid://2851929490"
box.imagecolor3 = color3.new(0.129412, 0.133333, 0.141176)
box.scaletype = enum.scaletype.slice
box.slicecenter = rect.new(4, 4, 4, 4)

objects.name = "objects"
objects.parent = box
objects.backgroundcolor3 = color3.new(1, 1, 1)
objects.backgroundtransparency = 1
objects.bordersizepixel = 0
objects.size = udim2.new(1, 0, 1, 0)
objects.zindex = 3
objects.canvassize = udim2.new(0, 0, 0, 0)
objects.scrollbarthickness = 8

uilistlayout_4.parent = objects
uilistlayout_4.sortorder = enum.sortorder.layoutorder

textbutton_roundify_4px.name = "textbutton_roundify_4px"
textbutton_roundify_4px.parent = dropdown
textbutton_roundify_4px.backgroundcolor3 = color3.new(1, 1, 1)
textbutton_roundify_4px.backgroundtransparency = 1
textbutton_roundify_4px.size = udim2.new(1, 0, 1, 0)
textbutton_roundify_4px.image = "rbxassetid://2851929490"
textbutton_roundify_4px.imagecolor3 = color3.new(0.203922, 0.207843, 0.219608)
textbutton_roundify_4px.scaletype = enum.scaletype.slice
textbutton_roundify_4px.slicecenter = rect.new(4, 4, 4, 4)

tabbutton.name = "tabbutton"
tabbutton.parent = prefabs
tabbutton.backgroundcolor3 = color3.new(0.160784, 0.290196, 0.478431)
tabbutton.backgroundtransparency = 1
tabbutton.bordersizepixel = 0
tabbutton.position = udim2.new(0.185185179, 0, 0, 0)
tabbutton.size = udim2.new(0, 71, 0, 20)
tabbutton.zindex = 2
tabbutton.font = enum.font.gothamsemibold
tabbutton.text = "test tab"
tabbutton.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
tabbutton.textsize = 14

textbutton_roundify_4px_2.name = "textbutton_roundify_4px"
textbutton_roundify_4px_2.parent = tabbutton
textbutton_roundify_4px_2.backgroundcolor3 = color3.new(1, 1, 1)
textbutton_roundify_4px_2.backgroundtransparency = 1
textbutton_roundify_4px_2.size = udim2.new(1, 0, 1, 0)
textbutton_roundify_4px_2.image = "rbxassetid://2851929490"
textbutton_roundify_4px_2.imagecolor3 = color3.new(0.203922, 0.207843, 0.219608)
textbutton_roundify_4px_2.scaletype = enum.scaletype.slice
textbutton_roundify_4px_2.slicecenter = rect.new(4, 4, 4, 4)

folder.name = "folder"
folder.parent = prefabs
folder.backgroundcolor3 = color3.new(1, 1, 1)
folder.backgroundtransparency = 1
folder.position = udim2.new(0, 0, 0, 50)
folder.size = udim2.new(1, 0, 0, 20)
folder.image = "rbxassetid://2851929490"
folder.imagecolor3 = color3.new(0.0823529, 0.0862745, 0.0901961)
folder.scaletype = enum.scaletype.slice
folder.slicecenter = rect.new(4, 4, 4, 4)

button.name = "button"
button.parent = folder
button.backgroundcolor3 = color3.new(0.160784, 0.290196, 0.478431)
button.backgroundtransparency = 1
button.bordersizepixel = 0
button.size = udim2.new(1, 0, 0, 20)
button.zindex = 2
button.font = enum.font.gothamsemibold
button.text = "      folder"
button.textcolor3 = color3.new(1, 1, 1)
button.textsize = 14
button.textxalignment = enum.textxalignment.left

textbutton_roundify_4px_3.name = "textbutton_roundify_4px"
textbutton_roundify_4px_3.parent = button
textbutton_roundify_4px_3.backgroundcolor3 = color3.new(1, 1, 1)
textbutton_roundify_4px_3.backgroundtransparency = 1
textbutton_roundify_4px_3.size = udim2.new(1, 0, 1, 0)
textbutton_roundify_4px_3.image = "rbxassetid://2851929490"
textbutton_roundify_4px_3.imagecolor3 = color3.new(0.160784, 0.290196, 0.478431)
textbutton_roundify_4px_3.scaletype = enum.scaletype.slice
textbutton_roundify_4px_3.slicecenter = rect.new(4, 4, 4, 4)

toggle_2.name = "toggle"
toggle_2.parent = button
toggle_2.backgroundcolor3 = color3.new(1, 1, 1)
toggle_2.backgroundtransparency = 1
toggle_2.position = udim2.new(0, 5, 0, 0)
toggle_2.size = udim2.new(0, 20, 0, 20)
toggle_2.image = "https://www.roblox.com/thumbs/asset.ashx?width=420&height=420&assetid=4731371541"

objects_2.name = "objects"
objects_2.parent = folder
objects_2.backgroundcolor3 = color3.new(1, 1, 1)
objects_2.backgroundtransparency = 1
objects_2.position = udim2.new(0, 10, 0, 25)
objects_2.size = udim2.new(1, -10, 1, -25)
objects_2.visible = false

uilistlayout_5.parent = objects_2
uilistlayout_5.sortorder = enum.sortorder.layoutorder
uilistlayout_5.padding = udim.new(0, 5)

horizontalalignment.name = "horizontalalignment"
horizontalalignment.parent = prefabs
horizontalalignment.backgroundcolor3 = color3.new(1, 1, 1)
horizontalalignment.backgroundtransparency = 1
horizontalalignment.size = udim2.new(1, 0, 0, 20)

uilistlayout_6.parent = horizontalalignment
uilistlayout_6.filldirection = enum.filldirection.horizontal
uilistlayout_6.sortorder = enum.sortorder.layoutorder
uilistlayout_6.padding = udim.new(0, 5)

console.name = "console"
console.parent = prefabs
console.backgroundcolor3 = color3.new(1, 1, 1)
console.backgroundtransparency = 1
console.size = udim2.new(1, 0, 0, 200)
console.image = "rbxassetid://2851928141"
console.imagecolor3 = color3.new(0.129412, 0.133333, 0.141176)
console.scaletype = enum.scaletype.slice
console.slicecenter = rect.new(8, 8, 8, 8)

scrollingframe.parent = console
scrollingframe.backgroundcolor3 = color3.new(1, 1, 1)
scrollingframe.backgroundtransparency = 1
scrollingframe.bordersizepixel = 0
scrollingframe.size = udim2.new(1, 0, 1, 1)
scrollingframe.canvassize = udim2.new(0, 0, 0, 0)
scrollingframe.scrollbarthickness = 4

source.name = "source"
source.parent = scrollingframe
source.backgroundcolor3 = color3.new(1, 1, 1)
source.backgroundtransparency = 1
source.position = udim2.new(0, 40, 0, 0)
source.size = udim2.new(1, -40, 0, 10000)
source.zindex = 3
source.cleartextonfocus = false
source.font = enum.font.code
source.multiline = true
source.placeholdercolor3 = color3.new(0.8, 0.8, 0.8)
source.text = ""
source.textcolor3 = color3.new(1, 1, 1)
source.textsize = 15
source.textstrokecolor3 = color3.new(1, 1, 1)
source.textwrapped = true
source.textxalignment = enum.textxalignment.left
source.textyalignment = enum.textyalignment.top

comments.name = "comments"
comments.parent = source
comments.backgroundcolor3 = color3.new(1, 1, 1)
comments.backgroundtransparency = 1
comments.size = udim2.new(1, 0, 1, 0)
comments.zindex = 5
comments.font = enum.font.code
comments.text = ""
comments.textcolor3 = color3.new(0.231373, 0.784314, 0.231373)
comments.textsize = 15
comments.textxalignment = enum.textxalignment.left
comments.textyalignment = enum.textyalignment.top

globals.name = "globals"
globals.parent = source
globals.backgroundcolor3 = color3.new(1, 1, 1)
globals.backgroundtransparency = 1
globals.size = udim2.new(1, 0, 1, 0)
globals.zindex = 5
globals.font = enum.font.code
globals.text = ""
globals.textcolor3 = color3.new(0.517647, 0.839216, 0.968628)
globals.textsize = 15
globals.textxalignment = enum.textxalignment.left
globals.textyalignment = enum.textyalignment.top

keywords.name = "keywords"
keywords.parent = source
keywords.backgroundcolor3 = color3.new(1, 1, 1)
keywords.backgroundtransparency = 1
keywords.size = udim2.new(1, 0, 1, 0)
keywords.zindex = 5
keywords.font = enum.font.code
keywords.text = ""
keywords.textcolor3 = color3.new(0.972549, 0.427451, 0.486275)
keywords.textsize = 15
keywords.textxalignment = enum.textxalignment.left
keywords.textyalignment = enum.textyalignment.top

remotehighlight.name = "remotehighlight"
remotehighlight.parent = source
remotehighlight.backgroundcolor3 = color3.new(1, 1, 1)
remotehighlight.backgroundtransparency = 1
remotehighlight.size = udim2.new(1, 0, 1, 0)
remotehighlight.zindex = 5
remotehighlight.font = enum.font.code
remotehighlight.text = ""
remotehighlight.textcolor3 = color3.new(0, 0.568627, 1)
remotehighlight.textsize = 15
remotehighlight.textxalignment = enum.textxalignment.left
remotehighlight.textyalignment = enum.textyalignment.top

strings.name = "strings"
strings.parent = source
strings.backgroundcolor3 = color3.new(1, 1, 1)
strings.backgroundtransparency = 1
strings.size = udim2.new(1, 0, 1, 0)
strings.zindex = 5
strings.font = enum.font.code
strings.text = ""
strings.textcolor3 = color3.new(0.678431, 0.945098, 0.584314)
strings.textsize = 15
strings.textxalignment = enum.textxalignment.left
strings.textyalignment = enum.textyalignment.top

tokens.name = "tokens"
tokens.parent = source
tokens.backgroundcolor3 = color3.new(1, 1, 1)
tokens.backgroundtransparency = 1
tokens.size = udim2.new(1, 0, 1, 0)
tokens.zindex = 5
tokens.font = enum.font.code
tokens.text = ""
tokens.textcolor3 = color3.new(1, 1, 1)
tokens.textsize = 15
tokens.textxalignment = enum.textxalignment.left
tokens.textyalignment = enum.textyalignment.top

numbers.name = "numbers"
numbers.parent = source
numbers.backgroundcolor3 = color3.new(1, 1, 1)
numbers.backgroundtransparency = 1
numbers.size = udim2.new(1, 0, 1, 0)
numbers.zindex = 4
numbers.font = enum.font.code
numbers.text = ""
numbers.textcolor3 = color3.new(1, 0.776471, 0)
numbers.textsize = 15
numbers.textxalignment = enum.textxalignment.left
numbers.textyalignment = enum.textyalignment.top

info.name = "info"
info.parent = source
info.backgroundcolor3 = color3.new(1, 1, 1)
info.backgroundtransparency = 1
info.size = udim2.new(1, 0, 1, 0)
info.zindex = 5
info.font = enum.font.code
info.text = ""
info.textcolor3 = color3.new(0, 0.635294, 1)
info.textsize = 15
info.textxalignment = enum.textxalignment.left
info.textyalignment = enum.textyalignment.top

lines.name = "lines"
lines.parent = scrollingframe
lines.backgroundcolor3 = color3.new(1, 1, 1)
lines.backgroundtransparency = 1
lines.bordersizepixel = 0
lines.size = udim2.new(0, 40, 0, 10000)
lines.zindex = 4
lines.font = enum.font.code
lines.text = "1\n"
lines.textcolor3 = color3.new(1, 1, 1)
lines.textsize = 15
lines.textwrapped = true
lines.textyalignment = enum.textyalignment.top

colorpicker.name = "colorpicker"
colorpicker.parent = prefabs
colorpicker.backgroundcolor3 = color3.new(1, 1, 1)
colorpicker.backgroundtransparency = 1
colorpicker.size = udim2.new(0, 180, 0, 110)
colorpicker.image = "rbxassetid://2851929490"
colorpicker.imagecolor3 = color3.new(0.203922, 0.207843, 0.219608)
colorpicker.scaletype = enum.scaletype.slice
colorpicker.slicecenter = rect.new(4, 4, 4, 4)

palette.name = "palette"
palette.parent = colorpicker
palette.backgroundcolor3 = color3.new(1, 1, 1)
palette.backgroundtransparency = 1
palette.position = udim2.new(0.0500000007, 0, 0.0500000007, 0)
palette.size = udim2.new(0, 100, 0, 100)
palette.image = "rbxassetid://698052001"
palette.scaletype = enum.scaletype.slice
palette.slicecenter = rect.new(4, 4, 4, 4)

indicator_3.name = "indicator"
indicator_3.parent = palette
indicator_3.backgroundcolor3 = color3.new(1, 1, 1)
indicator_3.backgroundtransparency = 1
indicator_3.size = udim2.new(0, 5, 0, 5)
indicator_3.zindex = 2
indicator_3.image = "rbxassetid://2851926732"
indicator_3.imagecolor3 = color3.new(0, 0, 0)
indicator_3.scaletype = enum.scaletype.slice
indicator_3.slicecenter = rect.new(12, 12, 12, 12)

sample.name = "sample"
sample.parent = colorpicker
sample.backgroundcolor3 = color3.new(1, 1, 1)
sample.backgroundtransparency = 1
sample.position = udim2.new(0.800000012, 0, 0.0500000007, 0)
sample.size = udim2.new(0, 25, 0, 25)
sample.image = "rbxassetid://2851929490"
sample.scaletype = enum.scaletype.slice
sample.slicecenter = rect.new(4, 4, 4, 4)

saturation.name = "saturation"
saturation.parent = colorpicker
saturation.backgroundcolor3 = color3.new(1, 1, 1)
saturation.position = udim2.new(0.649999976, 0, 0.0500000007, 0)
saturation.size = udim2.new(0, 15, 0, 100)
saturation.image = "rbxassetid://3641079629"

indicator_4.name = "indicator"
indicator_4.parent = saturation
indicator_4.backgroundcolor3 = color3.new(1, 1, 1)
indicator_4.bordersizepixel = 0
indicator_4.size = udim2.new(0, 20, 0, 2)
indicator_4.zindex = 2

switch.name = "switch"
switch.parent = prefabs
switch.backgroundcolor3 = color3.new(1, 1, 1)
switch.backgroundtransparency = 1
switch.bordersizepixel = 0
switch.position = udim2.new(0.229411766, 0, 0.20714286, 0)
switch.size = udim2.new(0, 20, 0, 20)
switch.zindex = 2
switch.font = enum.font.sourcesans
switch.text = ""
switch.textcolor3 = color3.new(1, 1, 1)
switch.textsize = 18

textbutton_roundify_4px_4.name = "textbutton_roundify_4px"
textbutton_roundify_4px_4.parent = switch
textbutton_roundify_4px_4.backgroundcolor3 = color3.new(1, 1, 1)
textbutton_roundify_4px_4.backgroundtransparency = 1
textbutton_roundify_4px_4.size = udim2.new(1, 0, 1, 0)
textbutton_roundify_4px_4.image = "rbxassetid://2851929490"
textbutton_roundify_4px_4.imagecolor3 = color3.new(0.160784, 0.290196, 0.478431)
textbutton_roundify_4px_4.imagetransparency = 0.5
textbutton_roundify_4px_4.scaletype = enum.scaletype.slice
textbutton_roundify_4px_4.slicecenter = rect.new(4, 4, 4, 4)

title_3.name = "title"
title_3.parent = switch
title_3.backgroundcolor3 = color3.new(1, 1, 1)
title_3.backgroundtransparency = 1
title_3.position = udim2.new(1.20000005, 0, 0, 0)
title_3.size = udim2.new(0, 20, 0, 20)
title_3.font = enum.font.gothamsemibold
title_3.text = "switch"
title_3.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
title_3.textsize = 14
title_3.textxalignment = enum.textxalignment.left

button_2.name = "button"
button_2.parent = prefabs
button_2.backgroundcolor3 = color3.new(0.160784, 0.290196, 0.478431)
button_2.backgroundtransparency = 1
button_2.bordersizepixel = 0
button_2.size = udim2.new(0, 91, 0, 20)
button_2.zindex = 2
button_2.font = enum.font.gothamsemibold
button_2.textcolor3 = color3.new(1, 1, 1)
button_2.textsize = 14

textbutton_roundify_4px_5.name = "textbutton_roundify_4px"
textbutton_roundify_4px_5.parent = button_2
textbutton_roundify_4px_5.backgroundcolor3 = color3.new(1, 1, 1)
textbutton_roundify_4px_5.backgroundtransparency = 1
textbutton_roundify_4px_5.size = udim2.new(1, 0, 1, 0)
textbutton_roundify_4px_5.image = "rbxassetid://2851929490"
textbutton_roundify_4px_5.imagecolor3 = color3.new(0.160784, 0.290196, 0.478431)
textbutton_roundify_4px_5.scaletype = enum.scaletype.slice
textbutton_roundify_4px_5.slicecenter = rect.new(4, 4, 4, 4)

dropdownbutton.name = "dropdownbutton"
dropdownbutton.parent = prefabs
dropdownbutton.backgroundcolor3 = color3.new(0.129412, 0.133333, 0.141176)
dropdownbutton.bordersizepixel = 0
dropdownbutton.size = udim2.new(1, 0, 0, 20)
dropdownbutton.zindex = 3
dropdownbutton.font = enum.font.gothambold
dropdownbutton.text = "      button"
dropdownbutton.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
dropdownbutton.textsize = 14
dropdownbutton.textxalignment = enum.textxalignment.left

keybind.name = "keybind"
keybind.parent = prefabs
keybind.backgroundcolor3 = color3.new(1, 1, 1)
keybind.backgroundtransparency = 1
keybind.size = udim2.new(0, 200, 0, 20)
keybind.image = "rbxassetid://2851929490"
keybind.imagecolor3 = color3.new(0.203922, 0.207843, 0.219608)
keybind.scaletype = enum.scaletype.slice
keybind.slicecenter = rect.new(4, 4, 4, 4)

title_4.name = "title"
title_4.parent = keybind
title_4.backgroundcolor3 = color3.new(1, 1, 1)
title_4.backgroundtransparency = 1
title_4.size = udim2.new(0, 0, 1, 0)
title_4.font = enum.font.gothambold
title_4.text = "keybind"
title_4.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
title_4.textsize = 14
title_4.textxalignment = enum.textxalignment.left

input.name = "input"
input.parent = keybind
input.backgroundcolor3 = color3.new(1, 1, 1)
input.backgroundtransparency = 1
input.bordersizepixel = 0
input.position = udim2.new(1, -85, 0, 2)
input.size = udim2.new(0, 80, 1, -4)
input.zindex = 2
input.font = enum.font.gothamsemibold
input.text = "rshift"
input.textcolor3 = color3.new(0.784314, 0.784314, 0.784314)
input.textsize = 12
input.textwrapped = true

input_roundify_4px.name = "input_roundify_4px"
input_roundify_4px.parent = input
input_roundify_4px.backgroundcolor3 = color3.new(1, 1, 1)
input_roundify_4px.backgroundtransparency = 1
input_roundify_4px.size = udim2.new(1, 0, 1, 0)
input_roundify_4px.image = "rbxassetid://2851929490"
input_roundify_4px.imagecolor3 = color3.new(0.290196, 0.294118, 0.313726)
input_roundify_4px.scaletype = enum.scaletype.slice
input_roundify_4px.slicecenter = rect.new(4, 4, 4, 4)

windows.name = "windows"
windows.parent = imgui
windows.backgroundcolor3 = color3.new(1, 1, 1)
windows.backgroundtransparency = 1
windows.position = udim2.new(0, 20, 0, 20)
windows.size = udim2.new(1, 20, 1, -20)

--[[ script ]]--
script.parent = imgui

local uis = game:getservice("userinputservice")
local tweenservice = game:getservice("tweenservice")
local rs = game:getservice("runservice")
local ps = game:getservice("players")

local p = ps.localplayer
local mouse = p:getmouse()

local prefabs = script.parent:waitforchild("prefabs")
local windows = script.parent:findfirstchild("windows")

local checks = {
	["binding"] = false,
}

uis.inputbegan:connect(function(input, gameprocessed)
	if input.keycode == ((typeof(ui_options.toggle_key) == "enumitem") and ui_options.toggle_key or enum.keycode.rightshift) then
		if script.parent then
			if not checks.binding then
				script.parent.enabled = not script.parent.enabled
			end
		end
	end
end)

local function resize(part, new, _delay)
	_delay = _delay or 0.5
	local tweeninfo = tweeninfo.new(_delay, enum.easingstyle.quad, enum.easingdirection.out)
	local tween = tweenservice:create(part, tweeninfo, new)
	tween:play()
end

local function rgbtohsv(r, g, b) -- idk who made this function, but thanks
	r, g, b = r / 255, g / 255, b / 255
	local max, min = math.max(r, g, b), math.min(r, g, b)
	local h, s, v
	v = max

	local d = max - min
	if max == 0 then
		s = 0
	else
		s = d / max
	end

	if max == min then
		h = 0
	else
		if max == r then
			h = (g - b) / d
			if g < b then
				h = h + 6
			end
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end

	return h, s, v
end

local function hasprop(object, prop)
	local a, b = pcall(function()
		return object[tostring(prop)]
	end)
	if a then
		return b
	end
end

local function gnamelen(obj)
	return obj.textbounds.x + 15
end

local function gmouse()
	return vector2.new(uis:getmouselocation().x + 1, uis:getmouselocation().y - 35)
end

local function ripple(button, x, y)
	spawn(function()
		button.clipsdescendants = true

		local circle = prefabs:findfirstchild("circle"):clone()

		circle.parent = button
		circle.zindex = 1000

		local new_x = x - circle.absoluteposition.x
		local new_y = y - circle.absoluteposition.y
		circle.position = udim2.new(0, new_x, 0, new_y)

		local size = 0
		if button.absolutesize.x > button.absolutesize.y then
			 size = button.absolutesize.x * 1.5
		elseif button.absolutesize.x < button.absolutesize.y then
			 size = button.absolutesize.y * 1.5
		elseif button.absolutesize.x == button.absolutesize.y then
			size = button.absolutesize.x * 1.5
		end

		circle:tweensizeandposition(udim2.new(0, size, 0, size), udim2.new(0.5, -size / 2, 0.5, -size / 2), "out", "quad", 0.5, false, nil)
		resize(circle, {imagetransparency = 1}, 0.5)

		wait(0.5)
		circle:destroy()
	end)
end

local windows = 0
local library = {}

local function format_windows()
	local ull = prefabs:findfirstchild("uilistlayout"):clone()
	ull.parent = windows
	local data = {}

	for i,v in next, windows:getchildren() do
		if not (v:isa("uilistlayout")) then
			data[v] = v.absoluteposition
		end
	end

	ull:destroy()

	for i,v in next, data do
		i.position = udim2.new(0, v.x, 0, v.y)
	end
end

function library:formatwindows()
	format_windows()
end

function library:addwindow(title, options)
	windows = windows + 1
	local dropdown_open = false
	title = tostring(title or "new window")
	options = (typeof(options) == "table") and options or ui_options
	options.tween_time = 0.1

	local window = prefabs:findfirstchild("window"):clone()
	window.parent = windows
	window:findfirstchild("title").text = title
	window.size = udim2.new(0, options.min_size.x, 0, options.min_size.y)
	window.zindex = window.zindex + (windows * 10)

	do -- altering window color
		local title = window:findfirstchild("title")
		local bar = window:findfirstchild("bar")
		local base = bar:findfirstchild("base")
		local top = bar:findfirstchild("top")
		local splitframe = window:findfirstchild("tabselection"):findfirstchild("frame")
		local toggle = bar:findfirstchild("toggle")

		spawn(function()
			while true do
				bar.backgroundcolor3 = options.main_color
				base.backgroundcolor3 = options.main_color
				base.imagecolor3 = options.main_color
				top.imagecolor3 = options.main_color
				splitframe.backgroundcolor3 = options.main_color

				rs.heartbeat:wait()
			end
		end)

	end

	local resizer = window:waitforchild("resizer")

	local window_data = {}
	window.draggable = true

	do -- resize window
		local oldicon = mouse.icon
		local entered = false
		resizer.mouseenter:connect(function()
			window.draggable = false
			if options.can_resize then
				oldicon = mouse.icon
				-- mouse.icon = "http://www.roblox.com/asset?id=4745131330"
			end
			entered = true
		end)

		resizer.mouseleave:connect(function()
			entered = false
			if options.can_resize then
				mouse.icon = oldicon
			end
			window.draggable = true
		end)

		local held = false
		uis.inputbegan:connect(function(inputobject)
			if inputobject.userinputtype == enum.userinputtype.mousebutton1 then
				held = true

				spawn(function() -- loop check
					if entered and resizer.active and options.can_resize then
						while held and resizer.active do

							local mouse_location = gmouse()
							local x = mouse_location.x - window.absoluteposition.x
							local y = mouse_location.y - window.absoluteposition.y

							--
							if x >= options.min_size.x and y >= options.min_size.y then
								resize(window, {size = udim2.new(0, x, 0, y)}, options.tween_time)
							elseif x >= options.min_size.x then
								resize(window, {size = udim2.new(0, x, 0, options.min_size.y)}, options.tween_time)
							elseif y >= options.min_size.y then
								resize(window, {size = udim2.new(0, options.min_size.x, 0, y)}, options.tween_time)
							else
								resize(window, {size = udim2.new(0, options.min_size.x, 0, options.min_size.y)}, options.tween_time)
							end

							rs.heartbeat:wait()
						end
					end
				end)
			end
		end)
		uis.inputended:connect(function(inputobject)
			if inputobject.userinputtype == enum.userinputtype.mousebutton1 then
				held = false
			end
		end)
	end

	do -- [open / close] window
		local open_close = window:findfirstchild("bar"):findfirstchild("toggle")
		local open = true
		local canopen = true

		local oldwindowdata = {}
		local oldy = window.absolutesize.y
		open_close.mousebutton1click:connect(function()
			if canopen then
				canopen = false

				if open then
					-- close

					oldwindowdata = {}
					for i,v in next, window:findfirstchild("tabs"):getchildren() do
						oldwindowdata[v] = v.visible
						v.visible = false
					end

					resizer.active = false

					oldy = window.absolutesize.y
					resize(open_close, {rotation = 0}, options.tween_time)
					resize(window, {size = udim2.new(0, window.absolutesize.x, 0, 26)}, options.tween_time)
					open_close.parent:findfirstchild("base").transparency = 1

				else
					-- open

					for i,v in next, oldwindowdata do
						i.visible = v
					end

					resizer.active = true

					resize(open_close, {rotation = 90}, options.tween_time)
					resize(window, {size = udim2.new(0, window.absolutesize.x, 0, oldy)}, options.tween_time)
					open_close.parent:findfirstchild("base").transparency = 0

				end

				open = not open
				wait(options.tween_time)
				canopen = true

			end
		end)
	end

	do -- ui elements
		local tabs = window:findfirstchild("tabs")
		local tab_selection = window:findfirstchild("tabselection")
		local tab_buttons = tab_selection:findfirstchild("tabbuttons")

		do -- add tab
			function window_data:addtab(tab_name)
				local tab_data = {}
				tab_name = tostring(tab_name or "new tab")
				tab_selection.visible = true

				local new_button = prefabs:findfirstchild("tabbutton"):clone()
				new_button.parent = tab_buttons
				new_button.text = tab_name
				new_button.size = udim2.new(0, gnamelen(new_button), 0, 20)
				new_button.zindex = new_button.zindex + (windows * 10)
				new_button:getchildren()[1].zindex = new_button:getchildren()[1].zindex + (windows * 10)

				local new_tab = prefabs:findfirstchild("tab"):clone()
				new_tab.parent = tabs
				new_tab.zindex = new_tab.zindex + (windows * 10)

				local function show()
					if dropdown_open then return end
					for i, v in next, tab_buttons:getchildren() do
						if not (v:isa("uilistlayout")) then
							v:getchildren()[1].imagecolor3 = color3.fromrgb(52, 53, 56)
							resize(v, {size = udim2.new(0, v.absolutesize.x, 0, 20)}, options.tween_time)
						end
					end
					for i, v in next, tabs:getchildren() do
						v.visible = false
					end

					resize(new_button, {size = udim2.new(0, new_button.absolutesize.x, 0, 25)}, options.tween_time)
					new_button:getchildren()[1].imagecolor3 = color3.fromrgb(73, 75, 79)
					new_tab.visible = true
				end

				new_button.mousebutton1click:connect(function()
					show()
				end)

				function tab_data:show()
					show()
				end

				do -- tab elements

					function tab_data:addlabel(label_text) -- [label]
						label_text = tostring(label_text or "new label")

						local label = prefabs:findfirstchild("label"):clone()

						label.parent = new_tab
						label.text = label_text
						label.size = udim2.new(0, gnamelen(label), 0, 20)
						label.zindex = label.zindex + (windows * 10)

						return label
					end

					function tab_data:addbutton(button_text, callback) -- [button]
						button_text = tostring(button_text or "new button")
						callback = typeof(callback) == "function" and callback or function()end

						local button = prefabs:findfirstchild("button"):clone()

						button.parent = new_tab
						button.text = button_text
						button.size = udim2.new(0, gnamelen(button), 0, 20)
						button.zindex = button.zindex + (windows * 10)
						button:getchildren()[1].zindex = button:getchildren()[1].zindex + (windows * 10)

						spawn(function()
							while true do
								if button and button:getchildren()[1] then
									button:getchildren()[1].imagecolor3 = options.main_color
								end
								rs.heartbeat:wait()
							end
						end)

						button.mousebutton1click:connect(function()
							ripple(button, mouse.x, mouse.y)
							pcall(callback)
						end)

						return button
					end

					function tab_data:addswitch(switch_text, callback) -- [switch]
						local switch_data = {}

						switch_text = tostring(switch_text or "new switch")
						callback = typeof(callback) == "function" and callback or function()end

						local switch = prefabs:findfirstchild("switch"):clone()

						switch.parent = new_tab
						switch:findfirstchild("title").text = switch_text

						switch:findfirstchild("title").zindex = switch:findfirstchild("title").zindex + (windows * 10)
						switch.zindex = switch.zindex + (windows * 10)
						switch:getchildren()[1].zindex = switch:getchildren()[1].zindex + (windows * 10)

						spawn(function()
							while true do
								if switch and switch:getchildren()[1] then
									switch:getchildren()[1].imagecolor3 = options.main_color
								end
								rs.heartbeat:wait()
							end
						end)

						local toggled = false
						switch.mousebutton1click:connect(function()
							toggled = not toggled
							switch.text = toggled and utf8.char(10003) or ""
							pcall(callback, toggled)
						end)

						function switch_data:set(bool)
							toggled = (typeof(bool) == "boolean") and bool or false
							switch.text = toggled and utf8.char(10003) or ""
							pcall(callback,toggled)
						end

						return switch_data, switch
					end

					function tab_data:addtextbox(textbox_text, callback, textbox_options)
						textbox_text = tostring(textbox_text or "new textbox")
						callback = typeof(callback) == "function" and callback or function()end
						textbox_options = typeof(textbox_options) == "table" and textbox_options or {["clear"] = true}
						textbox_options = {
							["clear"] = ((textbox_options.clear) == true)
						}

						local textbox = prefabs:findfirstchild("textbox"):clone()

						textbox.parent = new_tab
						textbox.placeholdertext = textbox_text
						textbox.zindex = textbox.zindex + (windows * 10)
						textbox:getchildren()[1].zindex = textbox:getchildren()[1].zindex + (windows * 10)

						textbox.focuslost:connect(function(ep)
							if ep then
								if #textbox.text > 0 then
									pcall(callback, textbox.text)
									if textbox_options.clear then
										textbox.text = ""
									end
								end
							end
						end)

						return textbox
					end

					function tab_data:addslider(slider_text, callback, slider_options)
						local slider_data = {}

						slider_text = tostring(slider_text or "new slider")
						callback = typeof(callback) == "function" and callback or function()end
						slider_options = typeof(slider_options) == "table" and slider_options or {}
						slider_options = {
							["min"] = slider_options.min or 0,
							["max"] = slider_options.max or 100,
							["readonly"] = slider_options.readonly or false,
						}

						local slider = prefabs:findfirstchild("slider"):clone()

						slider.parent = new_tab
						slider.zindex = slider.zindex + (windows * 10)

						local title = slider:findfirstchild("title")
						local indicator = slider:findfirstchild("indicator")
						local value = slider:findfirstchild("value")
						title.zindex = title.zindex + (windows * 10)
						indicator.zindex = indicator.zindex + (windows * 10)
						value.zindex = value.zindex + (windows * 10)

						title.text = slider_text

						do -- slider math
							local entered = false
							slider.mouseenter:connect(function()
								entered = true
								window.draggable = false
							end)
							slider.mouseleave:connect(function()
								entered = false
								window.draggable = true
							end)

							local held = false
							uis.inputbegan:connect(function(inputobject)
								if inputobject.userinputtype == enum.userinputtype.mousebutton1 then
									held = true

									spawn(function() -- loop check
										if entered and not slider_options.readonly then
											while held and (not dropdown_open) do
												local mouse_location = gmouse()
												local x = (slider.absolutesize.x - (slider.absolutesize.x - ((mouse_location.x - slider.absoluteposition.x)) + 1)) / slider.absolutesize.x

												local min = 0
												local max = 1

												local size = min
												if x >= min and x <= max then
													size = x
												elseif x < min then
													size = min
												elseif x > max then
													size = max
												end

												resize(indicator, {size = udim2.new(size or min, 0, 0, 20)}, options.tween_time)
												local p = math.floor((size or min) * 100)

												local maxv = slider_options.max
												local minv = slider_options.min
												local diff = maxv - minv

												local sel_value = math.floor(((diff / 100) * p) + minv)

												value.text = tostring(sel_value)
												pcall(callback, sel_value)

												rs.heartbeat:wait()
											end
										end
									end)
								end
							end)
							uis.inputended:connect(function(inputobject)
								if inputobject.userinputtype == enum.userinputtype.mousebutton1 then
									held = false
								end
							end)

							function slider_data:set(new_value)
								new_value = tonumber(new_value) or 0
								new_value = (((new_value >= 0 and new_value <= 100) and new_value) / 100)

								resize(indicator, {size = udim2.new(new_value or 0, 0, 0, 20)}, options.tween_time)
								local p = math.floor((new_value or 0) * 100)

								local maxv = slider_options.max
								local minv = slider_options.min
								local diff = maxv - minv

								local sel_value = math.floor(((diff / 100) * p) + minv)

								value.text = tostring(sel_value)
								pcall(callback, sel_value)
							end

							slider_data:set(slider_options["min"])
						end

						return slider_data, slider
					end

					function tab_data:addkeybind(keybind_name, callback, keybind_options)
						local keybind_data = {}

						keybind_name = tostring(keybind_name or "new keybind")
						callback = typeof(callback) == "function" and callback or function()end
						keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
						keybind_options = {
							["standard"] = keybind_options.standard or enum.keycode.rightshift,
						}

						local keybind = prefabs:findfirstchild("keybind"):clone()
						local input = keybind:findfirstchild("input")
						local title = keybind:findfirstchild("title")
						keybind.zindex = keybind.zindex + (windows * 10)
						input.zindex = input.zindex + (windows * 10)
						input:getchildren()[1].zindex = input:getchildren()[1].zindex + (windows * 10)
						title.zindex = title.zindex + (windows * 10)

						keybind.parent = new_tab
						title.text = "  " .. keybind_name
						keybind.size = udim2.new(0, gnamelen(title) + 80, 0, 20)

						local shortkeys = { -- thanks to stroketon for helping me out with this
				            rightcontrol = 'rightctrl',
				            leftcontrol = 'leftctrl',
				            leftshift = 'lshift',
				            rightshift = 'rshift',
				            mousebutton1 = "mouse1",
				            mousebutton2 = "mouse2"
				        }

						local keybind = keybind_options.standard

						function keybind_data:setkeybind(keybind)
							local key = shortkeys[keybind.name] or keybind.name
							input.text = key
							keybind = keybind
						end

						uis.inputbegan:connect(function(a, b)
							if checks.binding then
								spawn(function()
									wait()
									checks.binding = false
								end)
								return
							end
							if a.keycode == keybind and not b then
								pcall(callback, keybind)
							end
						end)

						keybind_data:setkeybind(keybind_options.standard)

						input.mousebutton1click:connect(function()
							if checks.binding then return end
							input.text = "..."
							checks.binding = true
							local a, b = uis.inputbegan:wait()
							keybind_data:setkeybind(a.keycode)
						end)

						return keybind_data, keybind
					end

					function tab_data:adddropdown(dropdown_name, callback)
						local dropdown_data = {}
						dropdown_name = tostring(dropdown_name or "new dropdown")
						callback = typeof(callback) == "function" and callback or function()end

						local dropdown = prefabs:findfirstchild("dropdown"):clone()
						local box = dropdown:findfirstchild("box")
						local objects = box:findfirstchild("objects")
						local indicator = dropdown:findfirstchild("indicator")
						dropdown.zindex = dropdown.zindex + (windows * 10)
						box.zindex = box.zindex + (windows * 10)
						objects.zindex = objects.zindex + (windows * 10)
						indicator.zindex = indicator.zindex + (windows * 10)
						dropdown:getchildren()[3].zindex = dropdown:getchildren()[3].zindex + (windows * 10)

						dropdown.parent = new_tab
						dropdown.text = "      " .. dropdown_name
						box.size = udim2.new(1, 0, 0, 0)

						local open = false
						dropdown.mousebutton1click:connect(function()
							open = not open

							local len = (#objects:getchildren() - 1) * 20
							if #objects:getchildren() - 1 >= 10 then
								len = 10 * 20
								objects.canvassize = udim2.new(0, 0, (#objects:getchildren() - 1) * 0.1, 0)
							end

							if open then -- open
								if dropdown_open then return end
								dropdown_open = true
								resize(box, {size = udim2.new(1, 0, 0, len)}, options.tween_time)
								resize(indicator, {rotation = 90}, options.tween_time)
							else -- close
								dropdown_open = false
								resize(box, {size = udim2.new(1, 0, 0, 0)}, options.tween_time)
								resize(indicator, {rotation = -90}, options.tween_time)
							end

						end)

						function dropdown_data:add(n)
							local object_data = {}
							n = tostring(n or "new object")

							local object = prefabs:findfirstchild("dropdownbutton"):clone()

							object.parent = objects
							object.text = n
							object.zindex = object.zindex + (windows * 10)

							object.mouseenter:connect(function()
								object.backgroundcolor3 = options.main_color
							end)
							object.mouseleave:connect(function()
								object.backgroundcolor3 = color3.fromrgb(33, 34, 36)
							end)

							if open then
								local len = (#objects:getchildren() - 1) * 20
								if #objects:getchildren() - 1 >= 10 then
									len = 10 * 20
									objects.canvassize = udim2.new(0, 0, (#objects:getchildren() - 1) * 0.1, 0)
								end
								resize(box, {size = udim2.new(1, 0, 0, len)}, options.tween_time)
							end

							object.mousebutton1click:connect(function()
								if dropdown_open then
									dropdown.text = "      [ " .. n .. " ]"
									dropdown_open = false
									open = false
									resize(box, {size = udim2.new(1, 0, 0, 0)}, options.tween_time)
									resize(indicator, {rotation = -90}, options.tween_time)
									pcall(callback, n)
								end
							end)

							function object_data:remove()
								object:destroy()
							end

							return object, object_data
						end

						return dropdown_data, dropdown
					end

					function tab_data:addcolorpicker(callback)
						local color_picker_data = {}
						callback = typeof(callback) == "function" and callback or function()end

						local color_picker = prefabs:findfirstchild("colorpicker"):clone()

						color_picker.parent = new_tab
						color_picker.zindex = color_picker.zindex + (windows * 10)

						local palette = color_picker:findfirstchild("palette")
						local sample = color_picker:findfirstchild("sample")
						local saturation = color_picker:findfirstchild("saturation")
						palette.zindex = palette.zindex + (windows * 10)
						sample.zindex = sample.zindex + (windows * 10)
						saturation.zindex = saturation.zindex + (windows * 10)

						do -- color picker math
							local h = 0
							local s = 1
							local v = 1

							local function update()
								local color = color3.fromhsv(h, s, v)
								sample.imagecolor3 = color
								saturation.imagecolor3 = color3.fromhsv(h, 1, 1)
								pcall(callback, color)
							end

							do
								local color = color3.fromhsv(h, s, v)
								sample.imagecolor3 = color
								saturation.imagecolor3 = color3.fromhsv(h, 1, 1)
							end

							local entered1, entered2 = false, false
							palette.mouseenter:connect(function()
								window.draggable = false
								entered1 = true
							end)
							palette.mouseleave:connect(function()
								window.draggable = true
								entered1 = false
							end)
							saturation.mouseenter:connect(function()
								window.draggable = false
								entered2 = true
							end)
							saturation.mouseleave:connect(function()
								window.draggable = true
								entered2 = false
							end)

							local palette_indicator = palette:findfirstchild("indicator")
							local saturation_indicator = saturation:findfirstchild("indicator")
							palette_indicator.zindex = palette_indicator.zindex + (windows * 10)
							saturation_indicator.zindex = saturation_indicator.zindex + (windows * 10)

							local held = false
							uis.inputbegan:connect(function(inputobject)
								if inputobject.userinputtype == enum.userinputtype.mousebutton1 then
									held = true

									spawn(function() -- loop check
										while held and entered1 and (not dropdown_open) do -- palette
											local mouse_location = gmouse()

											local x = ((palette.absolutesize.x - (mouse_location.x - palette.absoluteposition.x)) + 1)
											local y = ((palette.absolutesize.y - (mouse_location.y - palette.absoluteposition.y)) + 1.5)

											local color = color3.fromhsv(x / 100, y / 100, 0)
											h = x / 100
											s = y / 100

											resize(palette_indicator, {position = udim2.new(0, math.abs(x - 100) - (palette_indicator.absolutesize.x / 2), 0, math.abs(y - 100) - (palette_indicator.absolutesize.y / 2))}, options.tween_time)

											update()
											rs.heartbeat:wait()
										end

										while held and entered2 and (not dropdown_open) do -- saturation
											local mouse_location = gmouse()
											local y = ((palette.absolutesize.y - (mouse_location.y - palette.absoluteposition.y)) + 1.5)
											v = y / 100

											resize(saturation_indicator, {position = udim2.new(0, 0, 0, math.abs(y - 100))}, options.tween_time)

											update()
											rs.heartbeat:wait()
										end
									end)
								end
							end)
							uis.inputended:connect(function(inputobject)
								if inputobject.userinputtype == enum.userinputtype.mousebutton1 then
									held = false
								end
							end)

							function color_picker_data:set(color)
								color = typeof(color) == "color3" and color or color3.new(1, 1, 1)
								local h2, s2, v2 = rgbtohsv(color.r * 255, color.g * 255, color.b * 255)
								sample.imagecolor3 = color
								saturation.imagecolor3 = color3.fromhsv(h2, 1, 1)
								pcall(callback, color)
							end
						end

						return color_picker_data, color_picker
					end

					function tab_data:addconsole(console_options)
						local console_data = {}

						console_options = typeof(console_options) == "table" and console_options or {["readonly"] = true,["full"] = false,}
						console_options = {
							["y"] = tonumber(console_options.y) or 200,
							["source"] = console_options.source or "logs",
							["readonly"] = ((console_options.readonly) == true),
							["full"] = ((console_options.full) == true),
						}

						local console = prefabs:findfirstchild("console"):clone()

						console.parent = new_tab
						console.zindex = console.zindex + (windows * 10)
						console.size = udim2.new(1, 0, console_options.full and 1 or 0, console_options.y)

						local sf = console:getchildren()[1]
						local source = sf:findfirstchild("source")
						local lines = sf:findfirstchild("lines")
						source.zindex = source.zindex + (windows * 10)
						lines.zindex = lines.zindex + (windows * 10)

						source.texteditable = not console_options.readonly

						do -- syntax zindex
							for i,v in next, source:getchildren() do
								v.zindex = v.zindex + (windows * 10) + 1
							end
						end
						source.comments.zindex = source.comments.zindex + 1

						do -- highlighting (thanks to whoever made this)
							local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
							local global_env = {"getrawmetatable", "newcclosure", "islclosure", "setclipboard", "game", "workspace", "script", "math", "string", "table", "print", "wait", "brickcolor", "color3", "next", "pairs", "ipairs", "select", "unpack", "instance", "vector2", "vector3", "cframe", "ray", "udim2", "enum", "assert", "error", "warn", "tick", "loadstring", "_g", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_version", "coroutine", "delay", "require", "spawn", "loadlibrary", "settings", "stats", "time", "usersettings", "version", "axes", "colorsequence", "faces", "colorsequencekeypoint", "numberrange", "numbersequence", "numbersequencekeypoint", "gcinfo", "elapsedtime", "collectgarbage", "physicalproperties", "rect", "region3", "region3int16", "udim", "vector2int16", "vector3int16", "load", "fire", "fire"}

							local highlight = function(string, keywords)
							    local k = {}
							    local s = string
							    local token =
							    {
							        ["="] = true,
							        ["."] = true,
							        [","] = true,
							        ["("] = true,
							        [")"] = true,
							        ["["] = true,
							        ["]"] = true,
							        ["{"] = true,
							        ["}"] = true,
							        [":"] = true,
							        ["*"] = true,
							        ["/"] = true,
							        ["+"] = true,
							        ["-"] = true,
							        ["%"] = true,
									[";"] = true,
									["~"] = true
							    }
							    for i, v in pairs(keywords) do
							        k[v] = true
							    end
							    s = s:gsub(".", function(c)
							        if token[c] ~= nil then
							            return "\32"
							        else
							            return c
							        end
							    end)
							    s = s:gsub("%s+", function(c)
							        if k[c] ~= nil then
							            return c
							        else
							            return (" "):rep(#c)
							        end
							    end)

							    return s
							end

							local htokens = function(string)
							    local token =
							    {
							        ["="] = true,
							        ["."] = true,
							        [","] = true,
							        ["("] = true,
							        [")"] = true,
							        ["["] = true,
							        ["]"] = true,
							        ["{"] = true,
							        ["}"] = true,
							        [":"] = true,
							        ["*"] = true,
							        ["/"] = true,
							        ["+"] = true,
							        ["-"] = true,
							        ["%"] = true,
									[";"] = true,
									["~"] = true
							    }
							    local a = ""
							    string:gsub(".", function(c)
							        if token[c] ~= nil then
							            a = a .. c
							        elseif c == "\n" then
							            a = a .. "\n"
									elseif c == "\t" then
										a = a .. "\t"
							        else
							            a = a .. "\32"
							        end
							    end)

							    return a
							end

							local strings = function(string)
							    local highlight = ""
							    local quote = false
							    string:gsub(".", function(c)
							        if quote == false and c == "\34" then
							            quote = true
							        elseif quote == true and c == "\34" then
							            quote = false
							        end
							        if quote == false and c == "\34" then
							            highlight = highlight .. "\34"
							        elseif c == "\n" then
							            highlight = highlight .. "\n"
									elseif c == "\t" then
									    highlight = highlight .. "\t"
							        elseif quote == true then
							            highlight = highlight .. c
							        elseif quote == false then
							            highlight = highlight .. "\32"
							        end
							    end)

							    return highlight
							end

							local info = function(string)
							    local highlight = ""
							    local quote = false
							    string:gsub(".", function(c)
							        if quote == false and c == "[" then
							            quote = true
							        elseif quote == true and c == "]" then
							            quote = false
							        end
							        if quote == false and c == "\]" then
							            highlight = highlight .. "\]"
							        elseif c == "\n" then
							            highlight = highlight .. "\n"
									elseif c == "\t" then
									    highlight = highlight .. "\t"
							        elseif quote == true then
							            highlight = highlight .. c
							        elseif quote == false then
							            highlight = highlight .. "\32"
							        end
							    end)

							    return highlight
							end

							local comments = function(string)
							    local ret = ""
							    string:gsub("[^\r\n]+", function(c)
							        local comm = false
							        local i = 0
							        c:gsub(".", function(n)
							            i = i + 1
							            if c:sub(i, i + 1) == "--" then
							                comm = true
							            end
							            if comm == true then
							                ret = ret .. n
							            else
							                ret = ret .. "\32"
							            end
							        end)
							        ret = ret
							    end)

							    return ret
							end

							local numbers = function(string)
							    local a = ""
							    string:gsub(".", function(c)
							        if tonumber(c) ~= nil then
							            a = a .. c
							        elseif c == "\n" then
							            a = a .. "\n"
									elseif c == "\t" then
										a = a .. "\t"
							        else
							            a = a .. "\32"
							        end
							    end)

							    return a
							end

							local highlight_lua = function(type)
								if type == "text" then
									source.text = source.text:gsub("\13", "")
									source.text = source.text:gsub("\t", "      ")
									local s = source.text

									source.keywords.text = highlight(s, lua_keywords)
									source.globals.text = highlight(s, global_env)
									source.remotehighlight.text = highlight(s, {"fireserver", "fireserver", "invokeserver", "invokeserver"})
									source.tokens.text = htokens(s)
									source.numbers.text = numbers(s)
									source.strings.text = strings(s)
									source.comments.text = comments(s)

									local lin = 1
									s:gsub("\n", function()
										lin = lin + 1
									end)

									lines.text = ""
									for i = 1, lin do
										lines.text = lines.text .. i .. "\n"
									end

									sf.canvassize = udim2.new(0, 0, lin * 0.153846154, 0)
								end

							local highlight_logs = function(type)
							end
								if type == "text" then
									source.text = source.text:gsub("\13", "")
									source.text = source.text:gsub("\t", "      ")
									local s = source.text

									source.info.text = info(s)

									local lin = 1
									s:gsub("\n", function()
										lin = lin + 1
									end)

									sf.canvassize = udim2.new(0, 0, lin * 0.153846154, 0)
								end
							end

							if console_options.source == "lua" then
								highlight_lua("text")
								source.changed:connect(highlight_lua)
							elseif console_options.source == "logs" then
								lines.visible = false

								highlight_logs("text")
								source.changed:connect(highlight_logs)
							end

							function console_data:set(code)
								source.text = tostring(code)
							end

							function console_data:get()
								return source.text
							end

							function console_data:log(msg)
								source.text = source.text .. "[*] " .. tostring(msg) .. "\n"
							end

						end

						return console_data, console
					end

					function tab_data:addhorizontalalignment()
						local ha_data = {}

						local ha = prefabs:findfirstchild("horizontalalignment"):clone()
						ha.parent = new_tab

						function ha_data:addbutton(...)
							local data, object
							local ret = {tab_data:addbutton(...)}
							if typeof(ret[1]) == "table" then
								data = ret[1]
								object = ret[2]
								object.parent = ha
								return data, object
							else
								object = ret[1]
								object.parent = ha
								return object
							end
						end

						return ha_data, ha
					end

					function tab_data:addfolder(folder_name) -- [folder]
						local folder_data = {}

						folder_name = tostring(folder_name or "new folder")

						local folder = prefabs:findfirstchild("folder"):clone()
						local button = folder:findfirstchild("button")
						local objects = folder:findfirstchild("objects")
						local toggle = button:findfirstchild("toggle")
						folder.zindex = folder.zindex + (windows * 10)
						button.zindex = button.zindex + (windows * 10)
						objects.zindex = objects.zindex + (windows * 10)
						toggle.zindex = toggle.zindex + (windows * 10)
						button:getchildren()[1].zindex = button:getchildren()[1].zindex + (windows * 10)

						folder.parent = new_tab
						button.text = "      " .. folder_name

						spawn(function()
							while true do
								if button and button:getchildren()[1] then
									button:getchildren()[1].imagecolor3 = options.main_color
								end
								rs.heartbeat:wait()
							end
						end)

						local function gfolderlen()
							local n = 25
							for i,v in next, objects:getchildren() do
								if not (v:isa("uilistlayout")) then
									n = n + v.absolutesize.y + 5
								end
							end
							return n
						end

						local open = false
						button.mousebutton1click:connect(function()
							if open then -- close
								resize(toggle, {rotation = 0}, options.tween_time)
								objects.visible = false
							else -- open
								resize(toggle, {rotation = 90}, options.tween_time)
								objects.visible = true
							end

							open = not open
						end)

						spawn(function()
							while true do
								resize(folder, {size = udim2.new(1, 0, 0, (open and gfolderlen() or 20))}, options.tween_time)
								wait()
							end
						end)

						for i,v in next, tab_data do
							folder_data[i] = function(...)
								local data, object
								local ret = {v(...)}
								if typeof(ret[1]) == "table" then
									data = ret[1]
									object = ret[2]
									object.parent = objects
									return data, object
								else
									object = ret[1]
									object.parent = objects
									return object
								end
							end
						end

						return folder_data, folder
					end

				end

				return tab_data, new_tab
			end
		end
	end

	do
		for i, v in next, window:getdescendants() do
			if hasprop(v, "zindex") then
				v.zindex = v.zindex + (windows * 10)
			end
		end
	end

	return window_data, window
end

do -- example ui
	local window = library:addwindow("блокс фруит", {
		main_color = color3.fromrgb(41, 74, 122),
		min_size = vector2.new(500, 190),
		toggle_key = enum.keycode.rightcontrol,
		can_resize = false,
	})
	local tab = window:addtab("enemie stuff")
	
	

	do -- elements
        local slider = tab:addslider("дистанция быстрой атаки", function(x)
			_g.dis = x
		end, { -- (options are optional)
			["min"] = 20, -- default: 0
			["max"] = 50, -- default: 100
			["readonly"] = false, -- default: false
		})
		
		local switch = tab:addswitch("стан собов бри атаке", function(bool)
		    _g.bring = x
		end)
		
		getgenv().killaura = false
		local switch = tab:addswitch("быстрая атака", function(bool)
		(getgenv()).config = {
        ["fastattack"] = true,
        ["clickattack"] = false
        }
        
        for i,v in pairs(game:getservice("workspace").enemies:getdescendants()) do
            if v.name == "humanoidrootpart" then
                while true do
                    wait(.2)
                    local thing1 = game.players.localplayer.character.humanoidrootpart
                    local thing2 = v
                    local distance = (thing2.position - thing1.position).magnitude 
                    if distance <= _g.dis then --dont change maybe change to 15 ifyw but its good dont go over 16
                       if _g.bring == true then
                            v.cframe=thing1.cframe
                       end
                                                coroutine.wrap(function()
local stopcamera = require(game.replicatedstorage.util.camerashaker)stopcamera:stop()
    for v,v in pairs(getreg()) do
        if typeof(v) == "function" and getfenv(v).script == game:getservice("players").localplayer.playerscripts.combatframework then
             for v,v in pairs(debug.getupvalues(v)) do
                if typeof(v) == "table" then
                    spawn(function()
                        game:getservice("runservice").renderstepped:connect(function()
                            if getgenv().config['fastattack'] then
                                 pcall(function()
                                     v.activecontroller.timetonextattack = -(math.huge^math.huge^math.huge)
                                     v.activecontroller.attacking = false
                                     v.activecontroller.increment = 4
                                     v.activecontroller.blocking = false   
                                     v.activecontroller.hitboxmagnitude = 150
    		                         v.activecontroller.humanoid.autorotate = true
    	                      	     v.activecontroller.focusstart = 0
    	                      	     v.activecontroller.currentattacktrack = 0
                                     sethiddenproperty(game:getservice("players").localplayer, "simulationraxnerous", math.huge)
                                 end)
                             end
                         end)
                    end)
                end
            end
        end
    end
end)();
spawn(function()
    game:getservice("runservice").renderstepped:connect(function()
        if getgenv().config['clickattack'] then
             pcall(function()
                game:getservice'virtualuser':capturecontroller()
			    game:getservice'virtualuser':button1down(vector2.new(0,1,0,1))
            end)
        end
    end)
end)
                    end
                end  
            end
        end
            
        

		end)
		
		local slider = tab:addslider("размер хитбокса", function(x)
			_g.soice = x
		end, { -- (options are optional)
			["min"] = 1, -- default: 0
			["max"] = 100, -- default: 100
			["readonly"] = false, -- default: false
		})
		slider:set(10)
		
		getgenv().hitbox = false
		local switch = tab:addswitch("хитбокс", function(bool)
			getgenv().hitbox = bool
			spawn(function()
			    while hitbox == true do
			       wait()
                    for i,v in pairs(game:getservice("workspace").enemies:getdescendants()) do
                        if v.name == "humanoidrootpart" then
                            v.transparency = 0.5
                            v.size = vector3.new(_g.soice,_g.soice,_g.soice)
                        end
                    end
                    if hitbox == false then
                        v.transparency = 1
                        v.size = vector3.new(2, 2, 1)
                    end
                    wait(0.2)
			    end
			end)
		end)
		
	end

	tab:show()
	library:formatwindows()
end 