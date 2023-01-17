local mountain = {
--16 colors
  mountain0_gui = "#0f0f0f" ,
  mountain1_gui = "#191919" ,
  mountain2_gui = "#262626" ,
  mountain3_gui = "#4c4c4c" ,
  mountain4_gui = "#ac8a8c" ,
  mountain5_gui = "#f0f0f0" ,
  mountain6_gui = "#e7e7e7" ,
  mountain7_gui = "#f0f0f0" ,
  mountain8_gui = "#ac8a8c" ,
  mountain9_gui = "#c6a679" ,
  mountain10_gui = "#aca98a",
  mountain11_gui = "#8aac8b",
  mountain12_gui = "#8aabac",
  mountain13_gui = "#8f8aac",
  mountain14_gui = "#ac8aac",
  mountain15_gui = "#ac8a8c",

  bg =            '#0f0f0f',
  bg_alt =        '#191919',
  fg =            '#f0f0f0',
  text =          '#ac8a8c',
  comments =      '#4c4c4c',
  selection =     '#191919',
  contrast =      '#262626',
  active =        '#aca98a',
  border =        '#262626',
  line_numbers =  '#4c4c4c',
  highlight =     '#262626',
  disabled =      '#191919',
  cursor =        '#f0f0f0',
  accent =        '#ac8a8c',

  error =         '#ac8a8c',
  link =          '#8aabac',

  none =          'NONE'
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.mountain_contrast == true then
  mountain.sidebar = mountain.bg_alt
  mountain.float = mountain.bg_alt
else
  mountain.sidebar = mountain.bg
  mountain.float = mountain.bg
end

if vim.g.mountain_cursorline_transparent == true then
  mountain.cursorlinefg = mountain.bg
else
  mountain.cursorlinefg = mountain.mountain1_gui
end

return mountain
