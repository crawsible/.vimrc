" SYNTAX & FOLDING
syntax on
filetype plugin indent on
set foldmethod=syntax
set foldlevel=99

" COLORS
if !has("nvim")
  colorscheme darkblue
endif

" LEADER REBINDING
let mapleader = " "

set number
set cursorline
set hlsearch
highlight cursorline cterm=none
highlight cursorlinenr cterm=standout
highlight Visual ctermbg=lightblue ctermfg=black


" BEHAVIOR
set backspace=indent,eol,nostop
set splitbelow
set splitright


" REBINDINGS

nnoremap <leader>c :let @+=expand('%:p')<CR>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
vnoremap <C-H> <C-W>h
vnoremap <C-J> <C-W>j
vnoremap <C-K> <C-W>k
vnoremap <C-L> <C-W>l


" TEXT FORMATTING

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

autocmd FileType html setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType zsh setlocal tabstop=4 shiftwidth=4 softtabstop=4

