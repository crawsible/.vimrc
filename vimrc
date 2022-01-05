if has('nvim')
  call plug#begin('~/.config/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'AndrewRadev/tagalong.vim'
Plug 'docunext/closetag.vim'
Plug 'fatih/molokai'
Plug 'fatih/vim-go'
Plug 'hynek/vim-python-pep8-indent'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'

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
set backspace=indent,eol,start


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

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l


"" LanguageClient-vim
let g:LanguageClient_serverCommands = {
  \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio']
  \ }
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)


"" vim-go
au FileType go nmap <leader>rn <Plug>(go-rename)
au FileType go nmap <leader>t <Plug>(go-alternate-edit)
au FileType go nmap <leader>ts <Plug>(go-alternate-split)
au FileType go nmap <leader>tv <Plug>(go-alternate-vertical)


"" Emmet
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,javascript,javascriptreact EmmetInstall


"" Tagalong
let g:tagalong_verbose = 1


"" vim-surround
let g:surround_indent = 1


"" FZF
nnoremap <silent> <leader>f :FZF<CR>
" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


"" NERDTree
map \           :NERDTreeToggle<CR>
map \|          :NERDTreeFind<CR>


" TEXT FORMATTING
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

autocmd BufWritePre * :%s/\s\+$//e

"" go

autocmd FileType html setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
