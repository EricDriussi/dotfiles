"Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

"Theme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark 

"Settings

syntax on

set smartcase

set number relativenumber
set mouse=a
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set autoindent
set smartindent

vnoremap <C-c> "+y
map <C-p> "+P
