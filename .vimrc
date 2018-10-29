set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'udalov/kotlin-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" solarized
syntax enable
set background=dark
colorscheme solarized

autocmd vimenter * NERDTree " How can I open a NERDTree automatically when vim starts up?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " How can I close vim if the only window left open is a NERDTree?

" basic displays
set number                  " show line numbers
set ruler

" input settings
set bs=indent,eol,start     " allow backspaces over everything
set autoindent
set smartindent
set pastetoggle=<F8>

set nowrap
set textwidth=0             " disable automatic line breaking
set cursorline

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4

" tab navigation
set showtabline=2           " always show tab pannel

set scrolloff=3

" search
set ignorecase              " case-insensitive by default
set smartcase               " case-sensitive if keyword contains both uppercase and lowercase
set incsearch
set hlsearch

set inccommand=split

" use spaces for tabbing, by default
set expandtab

" listchars for whitespaces
set list
set listchars=tab:»\ ,trail:·,extends:>,precedes:<

" wildmenu settings
set wildmenu
set wildmode=list:longest,full
set wildignore=*.swp,*.swo,*.class

" status line
set laststatus=2            " show anytime
set noshowmode              " don't display mode, e.g. '-- INSERT --'
set showcmd

" no fucking swap and backup files
set noswapfile
set nobackup

" miscellanious
set visualbell
set history=1000
set undolevels=1000
set lazyredraw              " no redrawing during macro execution

" diff: ignore whitespaces
set diffopt+=iwhite
