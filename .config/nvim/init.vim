source $HOME/.config/nvim/vim-plug/plugins.vim

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set guicursor=

set relativenumber
set nu

set nohlsearch
set hidden
set noerrorbells

set nowrap

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set scrolloff=8

set colorcolumn=80
set signcolumn=yes

set cmdheight=2
set updatetime=50
set shortmess+=c

colorscheme nord

let mapleader = " "

" Grep with telescope
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

"
nnoremap <leader>pv :Sex!<CR>

" Start shell
nnoremap <leader>s :te<CR>

" Window swap
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
