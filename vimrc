if has('nvim')
  call plug#begin('~/.config/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

Plug 'AndrewRadev/tagalong.vim'
Plug 'fatih/molokai'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'

call plug#end()

filetype plugin indent on

" COLORS AND SYNTAX
colorscheme molokai

set number
set cursorline
set hlsearch
highlight cursorline cterm=none
highlight cursorlinenr cterm=standout
highlight Visual ctermbg=lightblue ctermfg=black
set backspace=indent,eol,nostop


" CHECKHEALTH
let g:loaded_perl_provider = 0


" COMMAND REBINDINGS
let mapleader = ","

nnoremap ; :
vnoremap ; :

nnoremap <C-H> <C-W>h
vnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
vnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
vnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
vnoremap <C-L> <C-W>l

command SV source $MYVIMRC


"" FZF
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader>a :Ag<CR>


"" NERDTree
map \ :NERDTreeToggle<CR>


" TEXT FORMATTING
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

autocmd BufWritePre * :%s/\s\+$//e

autocmd FileType html setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
