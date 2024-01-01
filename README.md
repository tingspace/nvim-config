# nvim-config

My ever-evolving config for NeoVim

The Platforms I work on daily:
- Windows
- Windows Subsystem for Linux (Ubuntu)
- Fedora (Linux)

## PRE-REQUISITES
- [lualine](#lualine)
- [treesitter](#treesitter)
- [telescope](#telescope)

### lualine

This requires an extended font collection to be installed and used in the Terminal. I chose the `Roboto Mono` font from [Nerd Fonts](https://www.nerdfonts.com/font-downloads).

If you don't install the font and set it in your Terminal, you'll get some wonky artifacts when it doesn't recognise the characters.

### treesitter

This config uses treesitter requiring a C compiler to be installed.

**For Windows;**

Depending on my mood, I use either:
- [MSVC (Visual Studio with C++ workloads)](https://visualstudio.microsoft.com/vs/features/cplusplus/)
- [zig](https://ziglang.org/)

**For Fedora & Ubuntu;**

Just use [clang](https://packages.fedoraproject.org/pkgs/llvm/clang/)

Fedora:
```sh
sudo dnf install clang
```

Ubuntu:
```sh
sudo apt install clang
```

### telescope

I use some grep features requiring the use of [ripgrep](https://github.com/BurntSushi/ripgrep#installation).

## Packages

Package manager: [lazy.nvim](https://github.com/folke/lazy.nvim)

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

