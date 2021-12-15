"Plugins
call plug#begin('~/.config/nvim/plugged')
"Looks
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
Plug 'ap/vim-css-color'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'

"Undo, File Explorer and auto-comments
Plug 'mbbill/undotree'
Plug 'preservim/nerdcommenter'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Git
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'sindrets/diffview.nvim'

"Plug 'ActivityWatch/aw-watcher-vim'
Plug 'mg979/vim-visual-multi'
Plug 'preservim/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'jez/vim-better-sml'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()

" ---------------------------SETTINGS---------------------------"

" Read JSX files like typescriptreact for nice highlighting
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox
set background=dark 

let g:rainbow_active = 1
let g:rainbow_conf = {'ctermfgs': ['white', 'cyan', 'magenta', 'darkblue', 'darkred', 'darkgreen', 'darkmagenta', 'darkcyan']}
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ],
			\ 						[ 'gitbranch'] ],
			\
			\ 	'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let g:NERDToggleCheckAllLines = 1
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

let g:sml_smlnj_executable = '/usr/bin/smlnj'
"Settings
"
syntax on
set ignorecase
set termguicolors
set wrap
let mapleader = " "

set smartcase
set incsearch
set cursorline
set spelllang=en,es,cjk
set spell
set encoding=utf-8
set fileencoding=utf-8
"set t_Co=256
"Snek case...
set iskeyword-=_
set updatetime=200
set timeoutlen=500
"Don't comment on CR
set formatoptions-=c
set formatoptions-=o
set formatoptions-=r
set splitright
"Lightline already shows mode
set noshowmode
set scrolloff=10
set noerrorbells
"Avoid splitting words when wrapping lines
set linebreak
"Tab completion in cmd mode
set wildmenu
"Set title to current file instead of terminal emulator name
set title
"set foldmethod=indent
set number relativenumber
set mouse=a
" History
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
"Tab be gud
set autoindent
filetype plugin indent on
set softtabstop=4
set expandtab
set shiftwidth=4

" Highlight colors
hi visual gui=bold cterm=bold
hi DiffAdd    ctermfg=142 ctermbg=black guifg=#b8bb26 gui=underline
hi DiffDelete ctermfg=167 ctermbg=black guifg=#fb4934
hi DiffChange ctermfg=109 ctermbg=black guifg=#458588 gui=underline
hi DiffText 	ctermfg=208 ctermbg=black guifg=#83a598 

"ejs files look like crap :D
set filetype=on
autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd FileType json syntax match Comment +\/\*.\+$+
au BufNewFile,BufRead *.ejs set filetype=html

" ------------------------------MAPPINGS------------------------------"

"SML REPL
nnoremap <leader>s :SMLReplStop<CR>:SMLReplStart<CR>:wincmd l<cr>


"Kinda scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

"Sensible copy-pasting to and from system clipboard
vnoremap <C-A-y> "+y \| :echom 'copied to system clipboard!'<CR>
nnoremap <C-A-y> "+yiw \| :echom 'copied to system clipboard!'<CR>
nnoremap <C-A-p> "+p
vnoremap <C-A-p> "+p
inoremap <C-A-p> <Esc>"+pA
nnoremap Y y$

"Paste over selected text without screwing the reg
vnoremap p "_dP

"Select all
nnoremap <C-a> ggVG

"Increment number
nnoremap <A-a> <C-a>

"Esc+Esc to turn off search highlighting
nnoremap <Esc> :noh<return><Esc>

"Center search selection
nnoremap n nzzzv
nnoremap N Nzzzv

"Search selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"Replace word in Normal mode and selection in Visual mode
nnoremap <silent> rn *``cgn
vnoremap <silent> rn y/\V<C-R>=escape(@",'/\')<CR><CR>Ncgn
"FUCKS UP REG

"Close tab
nnoremap <C-w> :q<CR>

"Indent
vnoremap <a-h> <gv
vnoremap <a-l> >gv
nnoremap <a-h> <<
nnoremap <a-l> >>

"Move current line and selected lines
nmap <a-j> :m .+1<cr>==
nmap <a-k> :m .-2<cr>==
vnoremap <a-j> :m '>+1<cr>gv=gv
vnoremap <a-k> :m '<-2<cr>gv=gv

"Save all 
nnoremap <C-s> :wa <CR>

"Resize splits
nnoremap + :vertical resize +2<CR>
nnoremap - :vertical resize -2<CR>

"Navigate splits
nnoremap <C-M-l> :wincmd l<cr>
nnoremap <C-M-h> :wincmd h<cr>
nnoremap <C-M-j> :wincmd j<cr>
nnoremap <C-M-k> :wincmd k<cr>

"Home made auto-pairs
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O<Tab>
inoremap [ []<Left>
inoremap < <><Left>
"inoremap ' ''<Left>
inoremap " ""<Left>

"Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ? ?<c-g>u

"Add number and half page jumps to jumplist
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
nnoremap <c-u> <c-u>m'
nnoremap <c-d> <c-d>m'

" ---------------------------Set up diff view between different files---------------------------"

let g:diffmode = 0
function! DiffMe()
    if g:diffmode == 0
	let g:current_split = win_getid()
	:wincmd h
	diffthis
	:wincmd l
	diffthis
	windo set cursorbind
	windo set scrollbind
	windo set wrap
        let g:diffmode = 1
	call win_gotoid(g:current_split)
    else
        set nocursorbind
        set noscrollbind
        diffoff
        let g:diffmode = 0
    endif
endfunction

nnoremap <leader>d :call DiffMe()<CR>

" ---------------------------Terminal---------------------------"

" Built-in Terminal
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" Toggle terminal on/off (neovim)
nnoremap <leader>t :call TermToggle(15)<CR>
tnoremap <leader>t <C-\><C-n>:call TermToggle(15)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>
tnoremap <C-z> <C-\><C-n>
tnoremap <C-w> <C-\><C-n>:q!<CR>

" ------------------------------MAPPINGS-Plugins------------------------------"

"UndoTree
nnoremap <leader>u :UndotreeToggle<CR>

"NvimTree
nnoremap <leader>e :NvimTreeToggle<CR>

"NerdCommenter
nnoremap <leader>/ :call nerdcommenter#Comment(0, "toggle")<CR>
vnoremap <leader>/ :call nerdcommenter#Comment(0, "toggle")<CR>gv

"Surround.vim
vmap ( S)
vmap [ S]
vmap { S}
vmap ' S'
vmap " S"
"vmap * S*
vmap ` S`

"Telescope
nnoremap <leader>f <cmd>Telescope git_files<cr>
nnoremap <leader>F <cmd>Telescope live_grep<cr>
nnoremap <leader>sf <cmd>Telescope find_files cwd=~<cr>

"Fugitive Split
nnoremap <leader>gs <cmd>Gvdiffsplit<bar>windo set wrap<CR>

"Emulate IntelliJ Ctrl-K with diffview.nvim
nnoremap <C-k> <cmd>DiffviewOpen<cr>

" ---------------------------nvim.tree---------------------------"

let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE' ] " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ }
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

lua <<EOF
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup {
    disable_netrw       = true,
    filters = {
        dotfiles = false,
        custom = { '.git', 'node_modules', '.cache' },
    },
    open_on_tab         = false,
    disable_netrw       = true,
    hijack_netrw        = true,
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
    view = {
        mappings = {
            list = {
                { key = "l",              cb = tree_cb("edit") },
                { key = "<C-h>", 	  cb = tree_cb("toggle_dotfiles") },
                { key = "R",              cb = tree_cb("refresh") },
                { key = "a",              cb = tree_cb("create") },
                { key = "d",              cb = tree_cb("remove") },
                { key = "y",              cb = tree_cb("copy") },
                { key = "h",              cb = tree_cb("close_node") },
            }
        },
    }
}
EOF

" ---------------------------signify-git---------------------------"

let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_change            = '~'

" numbers no good
let g:signify_sign_show_count = 0
"let g:signify_sign_show_text = 1

highlight SignifySignAdd    ctermfg=black ctermbg=142  guifg=#000000 guibg=#b8bb26
highlight SignifySignDelete ctermfg=black ctermbg=167  guifg=#000000 guibg=#fb4934
highlight SignifySignChange ctermfg=black ctermbg=109   guifg=#000000 guibg=#458588


" ---------------------------diffview.nvim---------------------------"

lua <<EOF
local cb = require'diffview.config'.diffview_callback

require'diffview'.setup {
    key_bindings = {
        disable_defaults = false,
        view = {
              ["gf"]    = cb("goto_file_tab"),
        }
    }
}
EOF

" ---------------------------Le COC---------------------------"

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
" set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  "set signcolumn=number
else
  "set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
nmap <M-CR>  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
"if has('nvim-0.4.0') || has('patch-8.2.0750')
  "nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  "nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  "inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  "inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  "vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  "vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
