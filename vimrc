set encoding=utf-8
set rtp+=/usr/local/Cellar/fzf/0.21.1

call plug#begin('~/.vim/bundle')

Plug 'vimwiki/vimwiki'
Plug 'ap/vim-css-color'

Plug 'vim-scripts/L9'
Plug 'vim-scripts/netrw.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'easymotion/vim-easymotion'
Plug 'liuchengxu/eleline.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'renyard/vim-git-flow-format'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/taglist.vim'
"Plug 'valloric/youcompleteme'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-markdown'
Plug 'suan/vim-instant-markdown'

Plug 'https://tpope.io/vim/repeat.git'
Plug 'junegunn/vim-easy-align'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'tpope/vim-sensible'
Plug 'thaerkh/vim-workspace'
Plug 'roxma/vim-paste-easy'
Plug 'hashivim/vim-terraform'

""" Lint """
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'

""" Themes
Plug 'rakr/vim-one'
Plug 'flazz/vim-colorschemes'
Plug 'zefei/vim-colortuner'
Plug 'ryanoasis/vim-devicons'

Plug 'rstacruz/sparkup'
Plug 'shougo/vimproc.vim', { 'do': 'make' }
Plug 'shougo/vimshell.vim'
Plug 'ervandew/supertab'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/Ultisnips'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'wincent/command-t'
Plug 'wincent/terminus'

" code formatter
Plug 'Chiel92/vim-autoformat'
Plug 'maksimr/vim-jsbeautify'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'tobys/pdv'

" Programming
Plug 'sheerun/vim-polyglot'
Plug 'stanangeloff/php.vim'
Plug 'm2mdas/phpcomplete-extended'
Plug 'shawncplus/phpcomplete.vim'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/bundle/gocode/vim/symlink.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Blackrush/vim-gocode'
 
call plug#end()

" Set mapleader
let mapleader = ";"
let g:mapleader = ";"
