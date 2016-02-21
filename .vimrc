set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'nsf/gocode'
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'epmatsw/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'


call vundle#end()
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
if has('nvim')
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_auto_select = 1
  let g:deoplete#enable_smart_case = 1
  let g:deoplete#sources#syntax#min_keyword_length = 3
  let g:deoplete#lock_buffer_name_pattern = '\*ku\*'
else
  " use neocomplete
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_auto_select = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
endif


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
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

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
