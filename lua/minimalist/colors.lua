local minimalist = {
  bg = "#282C35",
  slightly_lighter_bg = "#2E323B",  -- Status bar, etc
  slightly_darker_bg = "#22262F",   -- Git contextual highlight, etc
  fg = "#f8f8f2",

  dark_bg_1 = "#435554",  -- Border, line number, etc. col_5_2
  dark_bg_2 = "#434c5d",  -- (variant)

  bg_1 = "#6E858D",  -- Bracket, operator dollar sign, etc. col_6
  bg_2 = "#8b9fa3",  -- Comment, etc. col_5
  bg_3 = "#82a2ad",  -- Status bar fg

  bright_bg_1 = "#BECBCD",  -- TODO
  bright_bg_1_2 = "#BECECA"        ,

  dark_standout_less = "#B3CACE",  -- xxx, etc. TODO Previously #b3c5d3 okay for VSCode
  dark_standout_less_2 = "#CCD9DD",  -- `str`, etc
  standout_less = "#DCE8E9",  -- Func, etc
  bright_standout_less = "#ECEFF4",

  standout      = "#dac8c8",  -- Keyword, etc
  standout_more = "#E6DB74",  -- String, number, boolean, etc

  standout_special_1 = "#C7C7BE",   -- Markdown title, section title, etc
  standout_special_1_2 = "#dadad4",   -- Markdown title, section title, etc
  standout_special_2 = "#1f454f",   -- Find match bg, etc
  standout_special_2_2 = "#2e6676", -- Find match IncSearch, etc
  standout_special_3 = "#C7C7BF",   -- Keyword, etc

  fold_bg = '#31343C',
  error_bg = '#6b5a6d',

  folder_icon = '#8AA398',
  indent_marker = '#6E9082',

  lightspeed_label = '#f02077',
  lightspeed_label_overlapped = '#e01067',
  lightspeed_shortcut = '#99ddff',
  lightspeed_masked_char = '#b38080',
  lightspeed_label_distance = '#E6DB74',
  lightspeed_label_distance_overlapped = '#afa86a',
  SpectreReplace_bg = '#02387e',

  param = "#6E858D",
  diff_mode_added_line = "#ff0000",  -- TODO

  cursor_fg = "#b3c5d3",
  cursor_bg = "#282C35",

  -- Git
  git_add           = "#2C3843",
  git_delete        = "#342B35",
  git_change        = "#394855",
  git_gutter_change = '#383c47',
  git_gutter_add    = '#383c47',
  git_gutter_delete = '#1d222a',

  none = 'NONE',

  DevIconR         = '#82a2ad',
  DevIconRmd       = '#8b8b79',
  DevIconMarkdown  = '#1C7FB6',
  DevIconJulia     = '#9558b2',  -- TODO Not working
  DevIconVim       = '#34A0A8',
  DevIconGitIgnore = '#E4CAAF',
  DevIconOthers    = '#6E858D',

  red = '#ff0000',
  blue = '#0000ff',
  yellow = '#ffff00',
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.minimalist_contrast == true then
  minimalist.sidebar = minimalist.dark_bg_2
  minimalist.float = minimalist.dark_bg_2
else
  minimalist.sidebar = minimalist.bg
  minimalist.float = minimalist.bg
end

if vim.g.minimalist_cursorline_transparent == true then
  minimalist.cursorlinefg = minimalist.bg
else
  minimalist.cursorlinefg = minimalist.dark_bg_2
end

return minimalist
