" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Auto Pairs
	Plug 'jiangmiao/auto-pairs'

    " Nord theme
    Plug 'arcticicestudio/nord-vim'

    " Tokyo Night theme
    Plug 'folke/tokyonight.nvim', {'branch': 'main'}

    " Tokyo Dark theme
    Plug 'tiagovla/tokyodark.nvim'

    " Lualine
    Plug 'nvim-lualine/lualine.nvim'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " LSP Config
    Plug 'neovim/nvim-lspconfig'

    " Telescope
    Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

call plug#end()
