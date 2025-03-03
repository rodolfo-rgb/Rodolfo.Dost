return {
  {
    -- Plugin for the Catppuccin color scheme
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Load this plugin immediately
    opts = {
      transparent_background = true, -- Enable transparent background
      flavour = "mocha", -- Set the flavor of the color scheme
    },
    integrations = {
      cmp = true, -- Enable integration with nvim-cmp
      gitsigns = true, -- Enable integration with gitsigns
      nvimtree = true, -- Enable integration with nvim-tree
      treesitter = true, -- Enable integration with treesitter
      notify = false, -- Disable integration with nvim-notify
      mini = {
        enabled = true, -- Enable mini plugin integration
        indentscope_color = "", -- Set indentscope color (empty means default)
      },
      -- Additional plugin integrations can be found in the documentation
    },
  },
  {
    -- Plugin for the Modus Themes
    "miikanissi/modus-themes.nvim",
    name = "modus",
    priority = 1000, -- High priority to ensure it loads early
  },
  {
    -- Plugin for the Kanagawa color scheme
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000, -- High priority to ensure it loads early
    opts = {
      transparent = true, -- Enable transparent background
      theme = "dragon", -- Set the theme variant to 'dragon'
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" }, -- Transparent background for floating windows
          FloatBorder = { bg = "none" }, -- Transparent background for floating window borders
          FloatTitle = { bg = "none" }, -- Transparent background for floating window titles

          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 }, -- Custom colors for dark mode

          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Lazy plugin
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Mason plugin

          FzfLuaNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 }, -- Custom colors for FzfLua normal
          FzfLuaBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 }, -- Custom colors for FzfLua border
          FzfLuaTitle = { fg = theme.ui.special, bold = true }, -- Custom colors for FzfLua title

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Custom colors for popup menu
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Custom colors for selected item in popup menu
          PmenuSbar = { bg = theme.ui.bg_m1 }, -- Custom colors for popup menu scrollbar
          PmenuThumb = { bg = theme.ui.bg_p2 }, -- Custom colors for popup menu thumb
        }
      end,
    },
  },
  { -- Plugin for the Oldworld color scheme
    "dgox16/oldworld.nvim",
    lazy = false, -- Load this plugin immediately
    priority = 1000, -- High priority to ensure it loads early
  },
  {
    "xiyaowong/transparent.nvim",
  },
  {
    -- LazyVim configuration
    "LazyVim/LazyVim",
    opts = {
      -- Set the default color scheme
      colorscheme = "kanagawa-dragon",
    },
  },
}
