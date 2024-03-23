# Scratch-Nvim

<!--toc:start-->

- [Overview](#overview)
- [Reason](#reason)
- [Installation](#installation)
- [Package Overview](#package-overview)
<!--toc:end-->

A barebones Neovim configuration made for working with Markdown only.

## Overview

This is meant to be a minimal Markdown editor running on a computer without access to a C compiler or ripgrep (necessarily). That means powerful plugins like [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) can't reasonably be run for things like syntax highlighting and the Marksman LSP. Simple plugins like the mini.nvim library, zen-mode, and vim-pencil are the main focus here.

## Reason

I work at a used book store selling mostly online, and the main thing I do is research and list custom books on Ebay (that being "we can't find it easily on Amazon to list or it's too niche / old / personalized"). I do all that work on a Windows machine, and I've been using Neovim on my Linux laptop for so long that I installled it on that work machine to take Markdown notes. It got a weird look from the owner but that's about it.

Unfortunately, Windows doesn't come with a C compiler installed. I've tried using MSVC and LLVM to compile Treesitter and it's refused to call it multiple times. I'm used to just having a C compiler around ([Linux Mint my beloved](https://linuxmint.org)) so this means a lot of the power of Treesitter is just gone. That being said, Neovim is powerful enough on its own that editing markdown is no struggle whatsoever. I just like it having some extra functionality.

## Installation

All you have to do is `git clone` this repo into your Neovim config directory.

On Windows that's `C:\Users\$YOU\AppData\Local\nvim`.

On Linux/macOS it's `~/.config/nvim`.

Be sure to backup your config if you have one before cloning this.

```sh
mv ~/.config/nvim{,.bak}
```

If you want to manage multiple configs, add the following to your shell's rc:

`alias $YOUR_ALIAS='NVIM_APPNAME="scratch-nvim" nvim'`

You will have to either move your config to `$CONFIG_PATH/scratch-nvim` or clone it there first.

## Package Overview

- [Catppuccin](https://github.com/catppuccin/nvim) using the macchiato palette
- Basic utilities and dependencies:
  - [vim-sleuth](https://github.com/tpope/vim-sleuth)
  - [plenary.nvim](https;//github.com/folke/plenary.nvim)
  - [nvim-web-devicons](https;//github.com/nvim-tree/nvim-web-devicons)
  - [which-key.nvim](https://github.com/folke/which-key.nvim)
- Markdown plugins
  - [vim-pencil](https://github.com/preservim/vim-pencil) (Word wrapping on demand)
  - [twilight.nvim](https://github.com/folke/twilight.nvim) (Focus your text)
  - [zen-mode.nvim](https://github.com/folke/zen-mode.nvim) (Remove editor distractions)
- Notification beautifying:
  - [nvim-notify](https://github.com/rcarriga/nvim-notify)
  - [nui.nvim](https:/github.com/MunifTanjim/nui.nvim)
  - [noice.nvim](https://github.com/folke/noice.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim), using the following:
  - mini.ai (better around/inside methods)
  - mini.bracketed
    - I have set some keymaps in `init.lua` that allow you to navigate and kill buffers, so there is a bit of overlap.
    - mini.bracketed uses `[b` and `]b` to navigate backwards and forwards; I have `SPC b [` and `SPC b ]` for the same
    - Use `SPC b k` to kill a buffer (something mini.bracketed doesn't have mapped)
  - mini.comment
  - mini.files
    - Use `SPC p f` to open the file browser
    - Default controls can be found [here](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md)
  - mini.hipatterns (highlighting)
  - mini.jump
  - mini.operator
  - mini.pairs
  - mini.starter (Adds a starting screen with recently visited files; by default it has Half-Life lambda ASCII art)
  - mini.statusline (you can replace this with [lualine](https://github.com/nvim-lualine/lualine.nvim))
  - mini.surround
  - mini.trailspace
