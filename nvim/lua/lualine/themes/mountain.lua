local colors = require('mountain.colors')

local mountain = {}

mountain.normal = {
	a = {fg = colors.bg, bg = colors.accent, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
	c = {fg = colors.fg, bg = colors.selection},
}

mountain.insert = {
	a = {fg = colors.bg, bg = colors.mountain14_gui, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

mountain.visual = {
	a = {fg = colors.bg, bg = colors.mountain9_gui, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

mountain.replace = {
	a = {fg = colors.bg, bg = colors.mountain11_gui, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

mountain.command = {
	a = {fg = colors.bg, bg = colors.mountain15_gui, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

mountain.inactive = {
  a = {fg = colors.disabled, bg = colors.bg, gui = 'bold'},
  b = {fg = colors.disabled, bg = colors.bg},
  c = {fg = colors.disabled, bg = colors.selection}
}

return mountain
