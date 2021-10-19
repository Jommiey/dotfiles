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

	" Commentary
	Plug 'tpope/vim-commentary'

	" Undotree
	Plug 'mbbill/undotree'

	" LSP
	Plug 'neovim/nvim-lspconfig'
	Plug 'tjdevries/nlua.nvim'
	Plug 'tjdevries/lsp_extensions.nvim'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'

	" Auto completion
	Plug 'nvim-lua/completion-nvim'

	" Treesitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/playground'

	" Telescope and dependencies
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	" Cheat Sheet
	Plug 'dbeniamine/cheat.sh-vim'

    " Tokyo Night theme
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

    " Vim colors xcode theme
    Plug 'arzg/vim-colors-xcode'

    " Vim nord theme
    Plug 'arcticicestudio/nord-vim'

    " Airline
    Plug 'vim-airline/vim-airline'

call plug#end()

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
"lua require'lspconfig'.pyright.setup{}
