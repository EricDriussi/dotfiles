"Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'

Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'

call plug#end()

"Theme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark 

"Settings
syntax on
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set cursorline
set list lcs=tab:\|\ 


"Old settings
set number relativenumber
set mouse=a
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set smartindent

"Sensible copy-pasting
vnoremap <C-c> "+y
map <C-p> "+P

"Esc key is far from home
map <C-z> <Esc>
imap <C-z> <Esc>
cnoremap <C-z> <C-c><Esc>

"Esc+Esc to turn off search highlighting
nnoremap <Esc> :noh<return><Esc>

"Exit Vim meme here
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q
"Keeps cursor line vertically centered
augroup KeepCentered
  autocmd!
  autocmd CursorMoved * normal! zz
augroup END
inoremap <up> <up><C-O>zz
inoremap <down> <down><C-O>zz
nnoremap o <C-E>o

"Using leader to nav between visible buffers
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 20<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

