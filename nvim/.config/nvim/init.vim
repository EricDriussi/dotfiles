"Plugins
call plug#begin('~/.config/nvim/plugged')

"Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
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

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

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
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

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
nnoremap <expr> <C-f> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

"nnoremap <C-f> :FZF<CR>

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

"Prettier Formatting
vnoremap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>F  :CocCommand prettier.formatFile<CR>

"Resize splits
nnoremap + :vertical resize +2<CR>
nnoremap - :vertical resize -2<CR>

"Nav
nnoremap <C-M-l> :wincmd l<cr>
nnoremap <C-M-h> :wincmd h<cr>
"<C-H> commented from ~/dotfiles/nvim/.config/nvim/plugged/auto-pairs/plugin/auto-pairs.vim line 549

" ---------------------------Terminal & CoC---------------------------"
source ~/.config/nvim/term-coc.vim
