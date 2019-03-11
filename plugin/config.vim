"=============================================================
" User configuration
"=============================================================
" turn off nice effect on status bar title
let performance_mode=1

"=============================================================
" set terminal color to 256 get same colorscheme as gui
"=============================================================
set t_Co=256

"=============================================================
" => General
"=============================================================
"Set magic on
set magic

" Set shell to be bash
set shell=bash

"Turn on WiLd menu
set wildmenu

" Sets how many lines of history VIM har to remember
set history=5000

" Set to auto read when a file is changed from the outside
if exists("&autoread")
	set autoread
endif

" Have the mouse enabled all the time:
if exists("&mouse")
    set mouse=r
    set selection=exclusive
    set selectmode=mouse,key
endif

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

set number
set relativenumber

"=============================================================
"Highlight current
hi CursorLine cterm=none ctermbg=darkgrey
hi TabLine cterm=none ctermbg=darkgrey ctermfg=red
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
if exists("&cursorline")
    set cursorline cursorcolumn
    "autocmd WinEnter * setlocal cursorline
    "autocmd WinLeave * setlocal nocursorline
    "nnoremap <leader>c :set cursorline! cursorcolumn!<cr>
endif

"Highlight search thing
set hlsearch
set smartcase
set incsearch
"==============================================================

set hidden
set switchbuf=usetab
if exists("&showtabline")
	set showtabline=2
endif

"==============================================================
" Files and backup
"==============================================================
"Turn backup off
set nobackup
set nowb
set noswapfile
set autoread

"==============================================================
" Text option
"==============================================================
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set lbr
set smartindent
if has("cindent") " C-style indenting
	set cindent
endif
set wrap
set display+=lastline

if v:version > 703 || v:version == 703 && has("patch541")
	set formatoptions+=j " Delete comment character when joining commented lines
endif

set list
if &listchars ==# 'eol:$'
	set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

let g:SuperTabDefaultCompletionType = "<c-n>"
