local minimalist = {
  bg = "#282C35",
  slightly_lighter_bg = "#2E323B",  -- Status bar, etc
  slightly_darker_bg = "#22262F",   -- Git contextual highlight, etc
  fg = "#f8f8f2",

  cursorline_bg = '#373C48',

  dark_bg_1 = "#435554",  -- Border, line number, etc. col_5_2
  dark_bg_2 = "#434c5d",  -- (variant)

  bg_1 = "#6E858D",  -- Bracket, operator dollar sign, etc. col_6
  bg_2 = "#8b9fa3",  -- Comment, etc. col_5
  bg_3 = "#82a2ad",  -- Status bar fg

  bright_bg_1 = "#BECBCD",  -- TODO
  bright_bg_1_2 = "#BECECA",

  dark_standout_less = "#B3CACE",  -- lazygit commit messge/active border, etc. TODO Previously #b3c5d3 okay for VSCode
  dark_standout_less_2 = "#CCD9DD",  -- `str`, lazygit commit hash, etc
  standout_less = "#DCE8E9",  -- Func, etc
  bright_standout_less = "#ECEFF4",

  standout      = "#E6B6B6",  -- Keyword, etc
  standout_more = "#E6DB74",  -- String, number, boolean, etc

  standout_special_0 = "#dad49c",   -- Markdown title, section title, etc
  standout_special_1 = "#C7C7BE",   -- juliaKeyword, etc
  standout_special_1_2 = "#dadad4",   -- juliaMacro
  standout_special_2 = "#2e6676",   -- Find match bg, etc (prev color #1f454f)
  standout_special_2_2 = "#A56969", -- Find match IncSearch, etc (prev color #2e6676)
  standout_special_2_3 = "#1f454f", -- vim.highlight
  standout_special_3 = "#C7C7BF",   -- Keyword, etc

  fold_bg = '#31343C',
  error_bg = '#6b5a6d',

  folder_icon = '#8AA398',
  indent_marker = '#384640',  -- folder_icon L - 35

  lsp_diag_error    = '#ff6464',
  lsp_diag_warn     = '#fa973a',
  lsp_diag_info     = '#00b7e4',
  lsp_diag_hint     = '#2faf64',
  lsp_diag_error_bg = '#342B35',
  lsp_diag_warn_bg  = '#322D29',
  lsp_diag_info_bg  = '#293032',
  lsp_diag_hint_bg  = '#29322C',

  lightspeed_label = '#f02077',
  lightspeed_label_overlapped = '#e01067',
  lightspeed_shortcut = '#99ddff',
  lightspeed_masked_char = '#b38080',
  lightspeed_label_distance = '#E6DB74',
  lightspeed_label_distance_overlapped = '#afa86a',
  SpectreReplace_bg = '#02387e',

  param = "#6E858D",
  diff_mode_added_line = "#342B35",  -- TODO

  cursor_fg = "#b3c5d3",
  cursor_bg = "#282C35",

  -- Git
  git_add           = "#2C3843",
  git_add_emph      = "#425E75",
  git_delete        = "#342B35",
  git_delete_emph   = "#5A4B5C",
  git_change        = "#403C2A",
  git_change_emph   = "#6B6447",
  git_gutter_add    = '#51677A',
  git_gutter_delete = '#524454',
  git_gutter_change = '#5B563D',

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
