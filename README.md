# nvim-config

My ever-evolving config for [neovim](https://neovim.io/)

> [!NOTE]
> I am a beginner to Vim & Neovim. Still learning how to configure Neovim via Lua, I do not know VimScript

The Platforms I work on daily:
- Windows
- Windows Subsystem for Linux (Ubuntu)
- Fedora (Linux)


## Getting Started

There are some packages that require some items to be installed first. First we install these things, then get the nvim config

1. Install Neovim 0.9.0 or higher
2. Install `Roboto Mono` font from [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
3. Install a C compiler 
    - Windows: [Visual Studio with C++ workloads](https://visualstudio.microsoft.com/vs/features/cplusplus/)
    - Linux: [clang](https://packages.fedoraproject.org/pkgs/llvm/clang/)
4. Install [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
5. Delete (or rename) any existing `nvim` directory in your config path
    - Windows: `%USERPROFILE%\AppData\Local`
    - Linux: `~/.config`
6. Clone this repo and create a new `nvim` in the config path
    ```shell
    git clone git@github.com:tingspace/nvim-config.git nvim
    ```
7. `cd` into the new `nvim` directory
8. Open `nvim` in this directory (Run: `nvim .`)
9. Ensure [lazy.nvim](https://github.com/folke/lazy.nvim) installs itself and required plugins


## Packages

Current Package manager: [lazy.nvim](https://github.com/folke/lazy.nvim)

Packages:
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [catppuccin/nvim Theme](https://github.com/catppuccin/nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)
- [undotree](https://github.com/mbbill/undotree)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [autoclose](https://github.com/m4xshen/autoclose.nvim)
- [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim)
    - [Mason](https://github.com/williamboman/mason.nvim)
    - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    - [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
