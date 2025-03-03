-- Import the wezterm API
local wezterm = require("wezterm")

-- Initialize an empty configuration table
local config = {
    force_reverse_video_cursor = true,
    colors = {
        foreground = "#dcd7ba", -- na: texto
        background = "#181616", -- bl: fondo
        cursor_bg = "#c8c093", -- ca: púrpura
        cursor_fg = "#c8c093", -- na: texto
        cursor_border = "#c8c093", -- ca: púrpura
        selection_fg = "#c8c093", -- na: texto
        selection_bg = "#2d4f67", -- gr: gris
        scrollbar_thumb = "#16161d", -- gl: gris claro
        split = "#16161d", -- gl: gris claro
        ansi = {"#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fd8", "#6a9589", "#c8c093"},
        brights = {"#727169", "#e82424","#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba"},
        indexed = {[16] = "#ffa066", [17] = "#ff5d62"},
    },
}


-- This is where you actually apply your config choices

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.window_padding = {
	top = 0,
	right = 0,
	left = 0,
}
config.force_reverse_video_cursor = true
config.colors = {}
config.colors.foreground = "#dcd7ba"
config.colors.background = "#181616"
config.colors.cursor_bg = "#c8c093"
config.colors.cursor_fg = "#c8c093"
config.colors.cursor_border = "#c8c093"
config.colors.selection_fg = "#c8c093"
config.colors.selection_bg = "#2d4f67"
config.colors.scrollbar_thumb = "#16161d"
config.colors.split = "#16161d"
config.colors.ansi = {"#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8","#957fd8", "#6a9589", "#c8c093", }
config.colors.brights = {"#727169","#e82424",  "#98bb6c",  "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba"}
config.window_background_opacity = 0.95
config.font = wezterm.font("IosevkaTerm NF")
config.hide_tab_bar_if_only_one_tab = true
-- Set the terminal font


-- Hide the tab bar if only one tab is open

-- Background with Transparency
  -- Adjust this value as needed

 

-- Font Size
config.font_size = 12.0

-- Smooth hack
config.max_fps = 240

-- Disable Scroll Bar
config.enable_scroll_bar = false

config.default_prog = { "/home/linuxbrew/.linuxbrew/bin/fish" }

-- activate ONLY if windows --

 config.default_domain = 'WSL:Ubuntu'
 config.front_end = "OpenGL"
 local gpus = wezterm.gui.enumerate_gpus()
 if #gpus > 0 then
  config.webgpu_preferred_adapter = gpus[1] -- only set if there's at least one GPU
 else
   -- fallback to default behavior or log a message
   wezterm.log_info("No GPUs found, using default settings")
 end

-- and finally, return the configuration to wezterm

return config