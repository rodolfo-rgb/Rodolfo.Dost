# Rodolfo.Dost

Welcome to my personal Neovim configuration! This repository contains my custom setup an prefeerences for NeoVim, based on [LazyVim](https://github.com/LazyVim/LazyVim) and the references of Gentleman Programming.

## Repository Contents

- **nvim/**: Contains Neovim configuration files.
- **fish/**: Includes configurations for the [fish shell](https://fishshell.com/).
- **.wezterm.lua**: Configuration file for [WezTerm](https://wezfurlong.org/wezterm/), a GPU-accelerated terminal emulator.

## Prerequisites

before using this configuration, make sure you have the following installed:

- [Neovim](https://neovim.io/) (version 0.5 or later)
- [fish shell](https://fishshell.com/)
- [WezTerm](https://wezfurlong.org/wezterm/)
- [Git](https://git-scm.com/)

### ⚠️ Windows Users Recommendation

If you are using Windows, it is highly recommended to install **WSL (Windows Subsystem for Linux)** to get a better experience with Neovim, fish shell, and other UNIX tools.  
You can install WSL by running the following command in PowerShell as Administrator:

```powershell
wsl --install
```

## Installation

1. **Clone this repository into your configuration directory:**

```bash
   git clone https://github.com/rodolfo-rgb/Rodolfo.Dost.git ~/.config/nvim
 ```
2. **Install Neovim plugins:**
   Follow the official installation steps for LazyVim from their website:
    👉 [LazyVim Installation Guide](https://www.lazyvim.org/)
3. **Set up the fish shell:**
   Copy the contents of the fish folder to your fish configuration directory:
```bash
cp -r ~/.config/nvim/fish ~/.config/fish
```
4. **Configure WezTerm:**
```powershell
  Copy-Item -Path "$env:USERPROFILE\.config\nvim\.wezterm.lua" -Destination "$env:USERPROFILE\.wezterm.lua"
```
## Contributions
This is a personal repository, but feel free to explore, suggest improvements, or report issues by opening an issue. I also recommend visiting the [Gentleman repository](https://github.com/Gentleman-Programming/Gentleman.Dots), which I used as a guide for my personal setup and some plugins.   
  
