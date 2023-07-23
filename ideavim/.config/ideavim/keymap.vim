"Center half-page jumps and add them to jumplist
nnoremap <C-d> <C-d>zzm'
nnoremap <C-u> <C-u>zzm'

"Sensible copy-pasting to and from system clipboard
vnoremap <C-y> "+y <bar> :echom 'Copied to system clipboard!'<CR>
nnoremap <C-y> "+yiw <bar> :echom 'Copied to system clipboard!'<CR>
nnoremap <C-p> "+p <bar> :echom 'Pasted from system clipboard!'<CR>
vnoremap <C-p> "+p <bar> :echom 'Pasted from system clipboard!'<CR>
inoremap <C-p> <Esc>"+p <bar> :echom 'Pasted from system clipboard!'<CR>A

"Better yank
nnoremap Y y$
vnoremap y ygv<ESC>

"Paste over selected text without screwing the reg
vnoremap p "_dP
vnoremap P "_dP

"Esc+Esc to turn off search highlighting
nnoremap <Esc> :noh<return><Esc>

"Close tab
nnoremap <C-w> :q<CR>
inoremap <C-w> <Esc>:q<CR>

"Move lines
"Left & Right
nnoremap <Tab> >>
nnoremap <S-Tab> <<
nnoremap <A-h> <<
nnoremap <A-l> >>
vnoremap <A-h> <gv
vnoremap <A-l> >gv
vnoremap < <gv
vnoremap > >gv
"Up & Down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Save all
nnoremap <C-s> :wa<CR>

"Home made Surround.vim
vmap ( xi()<Esc>P
vmap [ xi[]<Esc>P
vmap { xi{}<Esc>P
vmap ' xi''<Esc>P
vmap ` xi``<Esc>P

"Center search selection
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap L $
nnoremap H ^
vnoremap L $
vnoremap H ^
