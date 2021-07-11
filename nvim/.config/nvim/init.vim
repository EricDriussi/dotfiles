"Plugins
call plug#begin('~/.config/nvim/plugged')
"Looks
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'folke/lsp-colors.nvim'
Plug 'hrsh7th/nvim-compe'

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

Plug 'ActivityWatch/aw-watcher-vim'

"Git

call plug#end()

" ---------------------------SETTINGS---------------------------"

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark 

let g:rainbow_active = 1
let g:rainbow_conf = {'ctermfgs': ['white', 'cyan', 'magenta', 'darkblue', 'darkred', 'darkgreen', 'darkmagenta', 'darkcyan']}
"Settings
"
syntax on
set ignorecase
set termguicolors
set wrap

set smartcase
set incsearch
set cursorline
set spelllang=en,es,cjk
set spell
set encoding=utf-8
set fileencoding=utf-8
"set t_Co=256
set updatetime=200
set timeoutlen=500
"Don't comment on CR
set formatoptions-=cro
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
set smartindent
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

" Highlight colors
hi visual gui=bold cterm=bold
hi DiffAdd    ctermfg=142 ctermbg=black guifg=#282828 guibg=#b8bb26
hi DiffDelete ctermfg=167 ctermbg=black guifg=#282828 guibg=#fb4934
hi DiffChange ctermfg=109 ctermbg=black guifg=#282828 guibg=#83a598 
hi DiffText 	ctermfg=208 ctermbg=black guifg=#282828 guibg=#fe8019

"ejs files look like crap :D
au BufNewFile,BufRead *.ejs set filetype=html

"Set up diff view
command! Diffme call DiffMeBby()
function! DiffMeBby()
	let g:current_split = win_getid()
	:wincmd h
	diffthis
	:wincmd l
	diffthis
	windo set cursorbind
	windo set scrollbind
	windo set wrap
	call win_gotoid(g:current_split)
endfunction

command! Undiffme call UnDiffMeBby()
function! UnDiffMeBby()
	set nocursorbind
	set noscrollbind
	diffoff
endfunction

" ------------------------------MAPPINGS------------------------------"

"Kinda scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

"Sensible copy-pasting to and from system clipboard
vnoremap <C-A-y> "+y \| :echom 'copied to system clipboard!'<CR>
nnoremap <C-A-y> "+yiw \| :echom 'copied to system clipboard!'<CR>
nnoremap <C-A-p> "+p
vnoremap <C-A-p> "+p
inoremap <C-A-p> <Esc>"+pA

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

"Resize splits
nnoremap + :vertical resize +2<CR>
nnoremap - :vertical resize -2<CR>

"Nav
nnoremap <C-M-l> :wincmd l<cr>
nnoremap <C-M-h> :wincmd h<cr>
nnoremap <C-M-j> :wincmd j<cr>
nnoremap <C-M-k> :wincmd k<cr>

"Home made auto-pairs
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Left>
inoremap < <><Left>
inoremap ' ''<Left>
inoremap " ""<Left>

" ------------------------------MAPPINGS-Plugins------------------------------"

"UndoTree
nnoremap <M-u> :UndotreeToggle<CR>

"NvimTree
nnoremap <M-e> :NvimTreeToggle<CR>

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

"Telescope
nnoremap <C-f> <cmd>Telescope git_files<cr>
nnoremap <M-f> <cmd>Telescope live_grep<cr>
nnoremap <silent> tf <cmd>Telescope find_files cwd=~<cr>

"Nvim.Cope
inoremap <silent><expr> <C-Space> compe#complete()

"LSP
"autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <C-M-r> <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <M-CR> <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <C-M-f> <cmd>lua vim.lsp.buf.formatting()<CR>

"Fugitive Split
nnoremap <silent> gs <cmd>Gvdiffsplit<bar>windo set wrap<CR>

" ---------------------------Terminal---------------------------"

" God bless reddit
" Terminal Function
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
nnoremap <a-t> :call TermToggle(10)<CR>
tnoremap <a-t> <C-\><C-n>:call TermToggle(10)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>
tnoremap <C-z> <C-\><C-n>
tnoremap <C-w> <C-\><C-n>:q!<CR>

" ---------------------------nvim.tree---------------------------"

let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
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
    vim.g.nvim_tree_bindings = {
      ["l"]          		 = tree_cb("edit"),
      ["<C-h>"] 				 = tree_cb("toggle_dotfiles"),
      ["R"]              = tree_cb("refresh"),
      ["a"]              = tree_cb("create"),
      ["d"]              = tree_cb("remove"),
      ["y"]              = tree_cb("copy"),
      ["h"]              = tree_cb("dir_up"),
    }
EOF

" ---------------------------signify-git---------------------------"

let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_change            = '~'

" numbers no good
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

highlight SignifySignAdd    ctermfg=black ctermbg=142  guifg=#000000 guibg=#b8bb26
highlight SignifySignDelete ctermfg=black ctermbg=167  guifg=#000000 guibg=#fb4934
highlight SignifySignChange ctermfg=black ctermbg=109   guifg=#000000 guibg=#458588

"autocmd BufEnter * <cmd>SignifyToggle<CR>

" ---------------------------nvim.lsp servers---------------------------"

lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.zeta_note.setup{
  cmd = {'path/to/zeta-note'}
}
EOF

" ---------------------------compe.nvim completion---------------------------"

"remove 'Pattern not found'
set shortmess+=c


lua << EOF
-- Compe setup
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    nvim_lsp = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
EOF
