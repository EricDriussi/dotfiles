"Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'

Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'luochen1990/rainbow'
Plug 'sheerun/vim-polyglot'

call plug#end()

" ---------------------------SETTINGS---------------------------"

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark 

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'rounded' } }
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

let g:rainbow_active = 1
let g:rainbow_conf = {'ctermfgs': ['white', 'cyan', 'magenta', 'darkblue', 'darkred', 'darkgreen', 'darkmagenta', 'darkcyan']}


"Settings
syntax on
set ignorecase
set smartcase
set incsearch
set cursorline
set spelllang=en,es,cjk
set spell
set encoding=utf-8
set fileencoding=utf-8
set t_Co=256
set autoindent
set updatetime=300
set timeoutlen=500
set formatoptions-=cro
set splitright
set noshowmode
set scrolloff=10
set noerrorbells

" Highlight colors
hi Visual cterm=bold 
hi DiffAdd guifg=142 ctermfg=142
hi DiffChange guifg=66 ctermfg=66
hi DiffDelete guifg=167 ctermfg=167
hi DiffText guifg=172 ctermfg=172

" History
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

"Tab be gud
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"Old settings
set number relativenumber
set mouse=a
set smartindent

"ejs files look like ass :D
au BufNewFile,BufRead *.ejs set filetype=html

" ---------------------------MAPPINGS---------------------------"

"Kinda scrolling
"nnoremap <C-d> <C-d>zz
"nnoremap <C-u> <C-u>zz

"Sensible copy-pasting
vnoremap <C-c> "+y
map <C-p> "+P

"Select all
nnoremap <C-a> ggVG

"Esc key is far from home
map <C-z> <Esc>
imap <C-z> <Esc>
cnoremap <C-z> <C-c><Esc>

"Esc+Esc to turn off search highlighting
nnoremap <Esc> :noh<return><Esc>

"Close tab
nnoremap <C-w> :q<CR>

"FZF ignore .gitignore
"nnoremap <expr> <C-f> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"


nmap <C-f> <plug>(fzf-maps-n)
nnoremap <C-f> :FZF<CR>

"FZF+RipGrep
nnoremap <M-f> :Rg<CR>

"Better tabbing
vnoremap < <gv
vnoremap > >gv

"Exit Vim meme here
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q

"Save all 
nnoremap <C-s> :wa <CR>

"Coc-explorer
nnoremap <M-e> :CocCommand explorer<CR>

"UndoTree
nnoremap <M-u> :UndotreeToggle<CR>

"NerdCommenter
nnoremap <M-c> :call NERDComment(0, "toggle")<CR>
vnoremap <M-c> :call NERDComment(0, "toggle")<CR>gv

"Surround.vim
vmap ( S)
vmap [ S]
vmap { S}
vmap ' S'
vmap " S"
vmap * S*
vmap ` S`

"Home made auto-pairs
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Left>
inoremap < <><Left>
"inoremap ' ''<Left>
inoremap " ""<Left>


"Resize splits
nnoremap + :vertical resize +2<CR>
nnoremap - :vertical resize -2<CR>

"Nav
nnoremap <C-M-l> :wincmd l<cr>
nnoremap <C-M-h> :wincmd h<cr>

"Set up usable diff view
command! Diffme call DiffMeBby()
function! DiffMeBby()
	let g:current_split = win_getid()
	:wincmd h
	set cursorbind
	set scrollbind
	diffthis
	:wincmd l
	set cursorbind
	set scrollbind
	diffthis
	call win_gotoid(g:current_split)
endfunction

command! Undiffme call UnDiffMeBby()
function! UnDiffMeBby()
	set nocursorbind
	set noscrollbind
	diffoff
endfunction

" ---------------------------Terminal & CoC---------------------------"
source ~/.config/nvim/term-coc.vim
