set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/seoul256.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

Plugin 'airblade/vim-rooter'

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

" airline configuration
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " enable buffer line
let g:airline#extensions#whitespace#enabled = 0 " disable whitespace checks
let g:airline_theme = 'murmur'

" rooter configuration
let g:rooter_patterns = ['makefile', '.gitignore', '.git', '.git/']

" list binary files with low priority
set suffixes+=.pdf,.aux

" misc settings
set wrap
set linebreak
set nolist  " list disables linebreak
set autoindent
set ignorecase
set smartcase
set hlsearch
set incsearch
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set mouse=
set listchars=tab:▸\ ,eol:¬
set list
set tabstop=4 expandtab smarttab
set shiftwidth=4
set hidden " enable buffer switching without saving
set display+=lastline " always show beginning of last line
syntax enable
let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }
let g:spacevim_lint_on_save = 0 " disable syntax check on save

" solor scheme options
let g:seoul256_background = 236
colo seoul256
set background=dark

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" line numbers
" set relativenumber
set number
set numberwidth=4

" set cursorline

imap jj <Esc>

map <F12> :w<CR>:!make<CR>
map <F11> :!make run<CR>
map <F10> :!cd ~/Uni/SACABench/sacabench/build; cmake ..; make check<CR>

nnoremap <S-Tab> :bprev<CR>
nnoremap <Tab> :bnext<CR>

" restore cursor position on buffer change
au BufLeave * let b:winview = winsaveview()
au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif

" highlight overlength (more than 80) characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" use system clipboard
set clipboard=unnamedplus

" use html settings for php files
au BufReadPost *.php set filetype=html
