local bit = require 'bit'
local tohex, bor, band, lshift, rshift, floor = bit.tohex, bit.bor, bit.band, bit.lshift, bit.rshift, math.floor

local none           = 'NONE'
local bg             = '#bfbfc3'
local bg2            = '#dddde1'
local bg3            = '#e9e8e9'
local fg             = '#000000'
local fg2            = '#8d8d90'
local cursor_line    = '#c7c7cc'

-- Normal colors
local black          = '#000000'
local red            = '#8a0f2e'
local green          = '#3a5828'
local yellow         = '#8e4000'
local blue           = '#000ead'
local magenta        = '#5600d6'
local cyan           = '#006c7f'
local white          = '#fff2eb'

-- Bright colors
local bright_black   = '#454554'
local bright_red     = '#d30f45'
local bright_green   = '#35840b'
local bright_yellow  = '#f4ff37'
local bright_blue    = '#2e46ff'
local bright_magenta = '#8800a3'
local bright_cyan    = '#b4dcdf'
local bright_white   = '#ffffff'

-- Terminal colors
vim.g.terminal_color_0  = black
vim.g.terminal_color_1  = red
vim.g.terminal_color_2  = green
vim.g.terminal_color_3  = yellow
vim.g.terminal_color_4  = blue
vim.g.terminal_color_5  = magenta
vim.g.terminal_color_6  = cyan
vim.g.terminal_color_7  = white
vim.g.terminal_color_8  = bright_black
vim.g.terminal_color_9  = bright_red
vim.g.terminal_color_10 = bright_green
vim.g.terminal_color_11 = bright_yellow
vim.g.terminal_color_12 = bright_blue
vim.g.terminal_color_13 = bright_magenta
vim.g.terminal_color_14 = bright_cyan
vim.g.terminal_color_15 = bright_white

local function hi(group, fg, bg, ft, sp)
	vim.cmd(string.format('hi %s guifg=%s guibg=%s gui=%s guisp=%s',
		group,
		fg or none,
		bg or none,
		ft or none,
		sp or none
	))
	if vim.g.pura_color_test then
		vim.cmd(string.format('syn match %s "\'%s\'"', group, group))
	end
end

local function li(from, to)
	vim.cmd(string.format('hi! link %s %s', from, to))
	if vim.g.pura_color_test then
		vim.cmd(string.format('syn match %s "\'%s\'"', from, from))
	end
end

local function hex2rgb(hex)
	local num = tonumber(hex:sub(2), 16)
	local r, g, b = rshift(num, 16), band(rshift(num, 8), 0x00ff), band(num, 0x0000ff)
	return { r, g, b }
end

local function rgb2hex(r, g, b)
	return '#'..tohex(bor(lshift(floor(r), 16), lshift(floor(g), 8), floor(b)), 6)
end

local function blend_channel(color1, color2, weight)
	return color2 + (color1 - color2) * (weight / 100)
end

local function blend(color, weight, base)
	local base_rgb = hex2rgb(base or bg)
	local color_rgb = hex2rgb(color)
	return rgb2hex(
		blend_channel(base_rgb[1], color_rgb[1], weight),
		blend_channel(base_rgb[2], color_rgb[2], weight),
		blend_channel(base_rgb[3], color_rgb[3], weight)
	)
end

local function lighten(color, weight)
	return blend(color, weight, '#ffffff')
end

local function darken(color, weight)
	return blend(color, weight, '#000000')
end

local function load(file)
	local env = {
		bg = bg,
		bg2 = bg2,
		bg3 = bg3,
		fg = fg,
		fg2 = fg2,
		cursor_line = cursor_line,
		black = black,
		red = red,
		green = green,
		yellow = yellow,
		blue = blue,
		magenta = magenta,
		cyan = cyan,
		white = white,
		bright_black = bright_black,
		bright_red = bright_red,
		bright_green = bright_green,
		bright_yellow = bright_yellow,
		bright_blue = bright_blue,
		bright_magenta = bright_magenta,
		bright_cyan = bright_cyan,
		bright_white = bright_white,
		hi = hi,
		li = li,
		blend = blend,
		lighten = lighten,
		darken = darken,
		none = none,
		print = print,
	}

	local chunk = assert(loadfile(file))
	setfenv(chunk, env)
	return chunk()
end

local schemes = vim.fn.glob(vim.fn.expand('<sfile>:p:h') .. '/schemes/*.lua', 0, 1)

for _, scheme in ipairs(schemes) do
	load(scheme)
end

