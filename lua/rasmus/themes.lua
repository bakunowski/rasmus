return {
  light = function(colors)
    return {
      bg = colors.light,
      fg = colors.dark,

      black   = colors.dark2,
      red     = colors.red,
      green   = colors.green2,
      yellow  = colors.gray,
      blue    = colors.blue2,
      blue2   = colors.gray,
      magenta = colors.magenta,
      cyan    = colors.green,
      cyan2   = colors.cyan,
      white   = colors.white,

      bright_black   = colors.bright_black,
      bright_red     = colors.bright_red,
      bright_green   = colors.bright_green,
      bright_yellow  = colors.bright_yellow,
      bright_blue    = colors.bright_blue,
      bright_magenta = colors.bright_magenta,
      bright_cyan    = colors.bright_cyan,
      bright_white   = colors.bright_white,

      gray01 = colors.gray01,
      gray02 = colors.gray01,
      gray03 = colors.gray02,
      gray04 = colors.gray04,
      gray05 = colors.gray05,
      gray06 = colors.gray06,
      gray07 = colors.gray07,
      fg2    = colors.gray07,
      gray08 = colors.gray02,
      none   = "NONE",

      mb = colors.blue, -- matching bracket
      cc = colors.gray01,
    }
  end,
  dark = function(colors)
    return {
      bg = colors.bg,
      bg2 = colors.gray10,
      bg3 = colors.gray06,
      bg4 = colors.gray09,
      bg5 = colors.gray11,

      fg  = colors.white,
      fg2 = colors.gray12,
      fg3 = colors.gray13,

      c1 = colors.cyan2, -- booleans, numbers
      c2 = colors.gray12, -- comments
      c3 = colors.blue3, -- conditionals
      c4 = colors.white, -- constants, constructors
      c5 = colors.cyan2, -- builtin, floats,
      c6 = colors.yellow, --
      c7 = colors.cyan2, -- strings
      c8 = colors.color1,

      error = colors.red2,
      warning = colors.yellow,
      hint = colors.cyan2,

      -- diff
      change = colors.bright_blue,
      add    = colors.bright_green,
      delete = colors.bright_red,

      mb = colors.light, -- matching bracket
      yellow = colors.foreground,

      none = "NONE",
    }
  end,
  light2 = function(colors)
    return {
      bg  = colors.background,
      bg2 = colors.cc,
      bg3 = colors.gray06,
      bg4 = colors.color8,
      bg5 = colors.gray13,

      fg  = colors.foreground,
      fg2 = colors.foreground2,
      fg3 = colors.color0,

      c1 = colors.color5, -- booleans, numbers
      c2 = colors.foreground2, -- comments
      c3 = colors.color4, -- conditionals
      c4 = colors.foreground, -- constants, constructors
      c5 = colors.color5, -- builtin, floats,
      c6 = colors.color3, --
      c7 = colors.color6, -- strings
      c8 = colors.color1,

      error = colors.color1,
      warning = colors.color3,
      hint = colors.foreground2,

      -- diff
      change = colors.color3,
      add    = colors.color10,
      delete = colors.color9,

      mb = colors.blue, -- matching bracket
      yellow = colors.color3,

      none = "NONE",
    }
  end
}
