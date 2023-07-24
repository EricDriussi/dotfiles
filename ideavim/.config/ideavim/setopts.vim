"vim
set smartcase
set ignorecase
set incsearch
set scrolloff=8
set sidescrolloff=5
set iskeyword-=_
set iskeyword-=-
set number
set relativenumber
set hls
set visualbell

"ideavim
set ideajoin
"plugins
set quickscope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
set highlightedyank
let g:highlightedyank_highlight_duration = "60"
let g:highlightedyank_highlight_color = "rgba(187, 187, 187, 155)"

"Default handlers
sethandler a:vim
sethandler <C-v> a:ide
sethandler <C-c> a:ide
sethandler <C-a> a:ide
sethandler <C-z> a:ide
sethandler <C-S-z> a:ide
sethandler <C-n> a:ide
sethandler <C-S-n> a:ide
