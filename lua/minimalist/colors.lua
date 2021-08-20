local minimalist = {
  nord0_gui = "#282C35"        ,
  nord1_gui = "#434c5d"        ,  -- TODO
  nord2_gui = "#435554"        ,
  nord3_gui = "#DFC8C8"        ,  -- TODO
  nord3_gui_bright = "#8b9fa3" ,
  nord4_gui = "#f8f8f2"        ,
  nord5_gui = "#BECBCD"        ,  -- TODO
  nord6_gui = "#6E858D"        ,
  nord7_gui = "#becbcd"        ,
  nord8_gui = "#F0DB7F"        ,
  nord9_gui = "#DFC8C8"        ,
  nord10_gui = "#f8f8f2"       ,  -- TODO
  nord11_gui = "#dce8e9"       ,  -- TODO
  nord12_gui = "#ff0000"       ,  -- TODO
  nord13_gui = "#0000ff"       ,  -- TODO
  nord14_gui = "#F0DB7F"       ,
  nord15_gui = "#F0DB7F"       ,
  none =          'NONE'
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.minimalist_contrast == true then
  minimalist.sidebar = minimalist.nord1_gui
  minimalist.float = minimalist.nord1_gui
else
  minimalist.sidebar = minimalist.nord0_gui
  minimalist.float = minimalist.nord0_gui
end

if vim.g.minimalist_cursorline_transparent == true then
  minimalist.cursorlinefg = minimalist.nord0_gui
else
  minimalist.cursorlinefg = minimalist.nord1_gui
end

return minimalist
