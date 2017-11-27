if has('nvim')
  call plug#begin('~/.config/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

Plug 'fatih/molokai'
Plug 'fatih/vim-go'
Plug 'hynek/vim-python-pep8-indent'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'docunext/closetag.vim'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'epmatsw/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'

call plug#end()

filetype plugin indent on

" COLORS AND SYNTAX
syntax enable
colorscheme molokai

set number
set cursorline
set hlsearch
hi cursorline cterm=none
hi cursorlinenr ctermfg=darkred
hi Visual ctermbg=lightblue ctermfg=black


" PLUGIN SETTINGS
"" vim go
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1


" KEY BINDINGS
let mapleader = ","

"" neocomplete/deoplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><Space> pumvisible() ? "\<C-y>\<Space>" : "\<Space>"

"" vim-go
au FileType go nmap <leader>rn <Plug>(go-rename)
au FileType go nmap <leader>t <Plug>(go-alternate-edit)
au FileType go nmap <leader>ts <Plug>(go-alternate-split)
au FileType go nmap <leader>tv <Plug>(go-alternate-vertical)

"" CtrlP
let g:ctrlp_map = '<leader>f'

"" NERDTree
map \           :NERDTreeToggle<CR>
map \|          :NERDTreeFind<CR>


" TEXT FORMATTING
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

autocmd BufWritePre * :%s/\s\+$//e

"" go
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
