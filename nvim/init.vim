set nocompatible

set number
set numberwidth=4

set nobackup
set showcmd

set autoindent
set smartindent
set complete-=i
set showmatch
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
set ignorecase

" set cursorline

syntax on

let mapleader=","

" Set forward/backward search
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]

" Noh -> clear highlight
nnoremap <CR> :noh<CR><CR>

" Switch tabs in nvim
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" Create new tab
nnoremap <C-t>     :tabnew<CR>

" Init lua
lua require('init')

" Configuring vim-go
" let g:go_def_mode='gopls'
" let g:go_info_mode='gopls'

"" More config for Go
filetype plugin indent on

set autowrite

let g:go_disable_autoinstall = 0

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Dont highlight variable cursor is on curr
let g:go_auto_sameids = 0

" Status line types/signatures
let g:go_auto_type_info = 1

" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
