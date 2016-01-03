" >>>>> Sourced by :so ~/.dotfiles/vim/vimrc.vim in ~/.vimrc


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


