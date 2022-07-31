-- Here we only want the pallette colours defined
-- in a lua table with names and hex codes.
local M = {}

local colors = {
  red            = "#ff0000",
  bright_red     = "#ffafa5",
  red2           = "#ff968c",
  yellow         = "#ffc591",
  bright_yellow2 = "#ffdbbd",
  blue           = "#0000ff",
  blue2          = "#5353a1",
  bright_blue    = "#a6cded",
  blue3          = "#8db4d4",
  cyan           = "#750054",
  magenta        = "#de9bc8",
  bright_magenta = "#f7b4e1",
  bright_yellow  = "#334e5b",
  green          = "#116432",
  green2         = "#61957f",
  bright_green   = "#7aae98",
  bright_cyan    = "#94c9b2",
  cyan2          = "#94d1b3",
  bg             = "#1a1a19",
  dark           = "#222222",
  dark2          = "#333333",
  gray09         = "#222221",
  gray07         = "#292929",
  gray10         = "#2a2a29",
  gray11         = "#323231",
  black          = "#333332",
  gray04         = "#3a3a39",
  gray           = "#666666",
  bright_black   = "#4c4c4b",
  gray05         = "#868685",
  gray06         = "#767675",
  gray12         = "#6a6a69",
  gray13         = "#b6b6b5",
  gray02         = "#b7b7b6",
  gray03         = "#ceceb5",
  gray01         = "#edede4",
  light          = "#fdfdfc",
  white          = "#d1d1d1",
  bright_white   = "#eaeaea",

  none = "NONE",
}

function M.setup(theme)
  local t = require("rasmus.themes")[theme](colors)
  return t
end

return M
