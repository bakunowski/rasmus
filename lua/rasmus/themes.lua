return {
  dark = function(colors)
    return {
      bg = colors.bg,
      bg2 = colors.gray10,
      bg3 = colors.gray06,
      bg4 = colors.gray09,
      bg5 = colors.gray11,

      fg0 = colors.k_l,
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
      c9 = colors.bright_yellow2, -- types
      c10 = colors.gray06, -- brackets

      error = colors.red2,
      warning = colors.yellow,
      hint = colors.cyan2,

      -- diff
      change = colors.bright_blue,
      add    = colors.bright_green,
      delete = colors.bright_red,

      mb = colors.light, -- matching bracket
      yellow = colors.magenta,
      kr = colors.white,

      none = "NONE",
    }
  end,
  light = function(colors)
    return {
      bg  = colors.k_fo,
      bg2 = colors.k_l2,
      bg3 = colors.gray06,
      bg4 = colors.k_b2,
      bg5 = colors.k_l2,

      -- fg = colors.k_b2,
      fg = colors.k_f,
      fg2 = colors.foreground2,
      fg3 = colors.k_l2,

      c1 = colors.k_1, -- booleans, numbers
      c2 = colors.k_b3, -- comments
      -- c3 = colors.color4, -- conditionals
      c3 = colors.alsdf, -- conditionals
      c4 = colors.foreground, -- constants, constructors
      c5 = colors.k_1, -- builtin, floats,
      c6 = colors.color3, --
      c7 = colors.k_0, -- strings
      c8 = colors.color1,
      c9 = colors.k_1, -- types
      c10 = colors.k_b3, -- brackets

      error = colors.color1,
      warning = colors.color3,
      hint = colors.foreground2,

      -- diff
      change = colors.color3,
      add    = colors.color10,
      delete = colors.color9,

      mb = colors.blue, -- matching bracket
      yellow = colors.color3,
      kr = colors.error,

      none = "NONE",
    }
  end
}
