local bg             = '#bdbdc1'
local bg2            = '#dddde1'
local bg3            = '#e9e8e9'
local fg             = '#000000'
local fg2            = '#8d8d90'
local cursor_line    = '#c7c7cc'

-- Normal colors
local black          = '#000000'
local red            = '#ab1239'
local green          = '#3f602b'
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
local bright_cyan    = '#2f9392'
local bright_white   = '#ffffff'

local function hi(group, fg, bg, ft)
	vim.cmd(string.format('hi %s guifg=%s guibg=%s gui=%s',
		group,
		fg or 'NONE',
		bg or 'NONE',
		ft or 'NONE'
	))
end

local function blend(c1, c2, ratio)
	-- TODO
	return c1
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
		blend = blend,
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

