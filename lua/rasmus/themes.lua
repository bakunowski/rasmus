return {
  light = function(colors)
    return {
      bg = colors.light,
      fg = colors.dark,

      black   = colors.dark2,
      red     = colors.red,
      green   = colors.green2,
      yellow  = colors.gray,
      yellow2 = colors.blue,
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
      gray03 = colors.gray03,
      gray04 = colors.gray04,
      gray05 = colors.gray05,
      gray06 = colors.gray06,
      gray07 = colors.gray06,
      gray08 = colors.gray02,
      none   = "NONE",
    }
  end,
  dark = function(colors)
    return {
      bg = colors.bg,
      fg = colors.white,

      black   = colors.black,
      red     = colors.red2,
      green   = colors.green2,
      yellow  = colors.yellow,
      yellow2 = colors.blue,
      blue    = colors.blue3,
      blue2   = colors.blue3,
      magenta = colors.magenta,
      cyan    = colors.cyan2,
      cyan2   = colors.cyan2,
      white   = colors.white,

      bright_black   = colors.bright_black,
      bright_red     = colors.bright_red,
      bright_green   = colors.bright_green,
      bright_yellow  = colors.bright_yellow2,
      bright_blue    = colors.bright_blue,
      bright_magenta = colors.bright_magenta,
      bright_cyan    = colors.bright_cyan,
      bright_white   = colors.bright_white,

      gray01 = colors.gray09,
      gray02 = colors.gray10,
      gray03 = colors.gray11,
      gray04 = colors.gray04,
      gray05 = colors.gray12,
      gray06 = colors.gray06,
      gray07 = colors.gray13,
      gray08 = colors.gray12,

      none = "NONE",
    }
  end
}
