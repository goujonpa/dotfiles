" ========== PERSONAL .vimrc ==========
"
" A wise man once said:
" 'Never copy something you don't understand into your .vimrc'
"
" Well, he was right.
"
"
" ===== VUNDLE =====
" the vim bundle manager

" Be improved, required
" doc http://vimdoc.sourceforge.net/htmldoc/starting.html#compatible-default
set nocompatible

" required
" http://vimdoc.sourceforge.net/htmldoc/filetype.html
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins (Keep plugin command between vundle#begin/end)
" http://vimawesome.com/plugin/the-nerd-tree
Plugin 'scrooloose/nerdtree'
" http://vimawesome.com/plugin/ctrlp-vim-state-of-grace
Plugin 'kien/ctrlp.vim'
" http://vimawesome.com/plugin/vim-airline-sad-beautiful-tragic
Plugin 'bling/vim-airline'
" https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" https://github.com/ntpeters/vim-better-whitespace
Plugin 'ntpeters/vim-better-whitespace'


" plugins addition ending line
" required
call vundle#end()

" required
filetype plugin indent on

" brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ===== WHITESPACE STRIPPING ON SAVE =====
" Automatically strip whitespace on save (thanks to whitespace plugin)
autocmd BufWritePre * StripWhitespace

" ===== COLORS =====

" enable syntax highlighting
syntax enable

" the colorscheme is sourced from ~/.vim/syntax/<colorscheme>.vim by :so ~/.dotfiles/vim/colors/<colorscheme>.vim
colorscheme monokai

" enable italic
let g:monokai_italic = 1

" enable thick border
" let g:monokai_thick_border = 1


" ===== TABS RULES =====

" number of visual space for a tab (visual means visual ie when displaying)
set tabstop=4

" number of space for a tab when editing
set softtabstop=4

" when pushing tab, actually inserts 4 spaces
set expandtab

" number of spaces used for autoindent
set shiftwidth=4
set autoindent

" break lines when line length increases
set textwidth=80

" ===== BACKSPACE RULES =====
" Otherwise doesn't work properly
set backspace=2


" ===== LEADER =====
" remapped the leader because can't bear \ on an azerty mac keyboard.
nnoremap <SPACE> <Nop>
let mapleader = " "

" ===== BUFFERS =====
"
" hidden buffer if modified
set hidden

" leader + bq = buffer quit, = closes the current buffer and goes to the next
" one
nmap <leader>bq :bp <BAR> bd #<CR>


" ===== UI =====

" set background color
" set background=dark


" shows the ruler
set number

" shows commands in bottom bar
set showcmd

" highlight current line
set cursorline

" loads a filetype-specific indent file
" located at ~/.vim/indent/<language>.vim
filetype indent on

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to
set lazyredraw

" highlights matching ({[]})
set showmatch


" ===== SEARCHING =====

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" possibility to map a "stop highlight please" key
" nnoremap <leader><space> :nohlsearch<CR>


" ===== FOLDING =====

" folding enables to hide nested pieces of codes

" enable folding
set foldenable

" level of folding when opening a buffer
" value between 0 and 99, 10 just folds really nested pieces
set foldlevelstart=10

" folds can be nested, setting a max level of folding
" avoids too many folding
set foldnestmax=10

" open/close folds key
" nnoremap <space> za

" method on which is based the folding
" indent is really appropriate for python
" others methods are available thanks to the command
" :help foldmethod
set foldmethod=indent

" ===== Vim-airline config =====

" Shows the status bar all the time
set laststatus=2

" powerline-fonts ?
" https://github.com/bling/vim-airline
" let g:airline_powerline_fonts = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" ===== MOVEMENT =====

" move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" move to beginning/end of line
" nnoremap B ^
" nnoremap E $

" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>

" highlight last inserted text
" nnoremap gV `[v`]

" ===== ctrlP =====
" set the base working directory to current directory
let g:ctrlp_working_path_mode = 'c'


