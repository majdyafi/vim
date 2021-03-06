filetype indent plugin on
syntax enable

set scrolloff=10
set nocompatible
set relativenumber
set number
set exrc
set secure
set guifont=Consolas:h10:cDEFAULT
set background=light
syntax enable
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set cursorline
filetype indent on
set smartindent
set autoindent
set wildmenu
set lazyredraw
set showmatch
set smartcase
set smartcase
set incsearch
set hlsearch
set backspace=indent,eol,start
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
let g:auto_save = 1  " enable AutoSave on Vim startup

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"use 4 spaces for tabs
set tabstop=2 softtabstop=2 shiftwidth=2

"display indentation guides
set list listchars=tab:ˈ\ \,trail:·,extends:»,precedes:«,nbsp:×

"convert spaces to tabs when reading file
autocmd! bufreadpost * set noexpandtab | retab! 4

"convert tabs to spaces before writing file
autocmd! bufwritepre * set expandtab | retab! 4

"convert spaces to tabs after writing file (to show guides again)
autocmd! bufwritepost * set noexpandtab | retab! 4


"change cursor style on insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
"augroup myCmds
"au!
"autocmd VimEnter * silent !echo -ne "\e[2 q"
"augroup END


"ALE support for OmniSharp
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

let g:OmniSharp_selector_ui = 'fzf'    " Use fzf
let g:OmniSharp_selector_findusages = 'fzf'
"let g:OmniSharp_popup_mappings.close = '<Esc>'
let g:ale_linters = { 'cs': ['OmniSharp'] }


let g:startify_lists = [
  \ { 'type': 'sessions',  'header': [' Sessions']     },
  \ {'header': [' Files'], 'type': {-> map(s:bookmarks1, '{"line": v:val, "path": v:val}')}},
  \ {'header': [' Folders'], 'type': {-> map(s:bookmarks2, '{"line": v:val, "path": v:val}')}},
  \ { 'type': 'dir',   'header': [' Current Directory '. getcwd()] },
  \ { 'type': 'files',   'header': [' Recent Files']  },
  \ ]

let s:bookmarks1 = [
  \ '~/documents/mynotes/planning.md',
  \ '~/documents/mynotes/scratch.md',
  \ ]

let s:bookmarks2 = [
  \ '~/documents/mynotes',
  \ '~/coding/parts',
  \ ]


let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

"autcompete 
let g:asyncomplete_auto_popup = 1

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 1

"set completeopt=menuone,noinsert,noselect,preview

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


if executable('pyls')
  " pip install python-language-server
  au User lsp_setup call lsp#register_server({
  \ 'name': 'pyls',
  \ 'cmd': {server_info->['pyls']},
  \ 'allowlist': ['python'],
  \ })
endif


"color scheme
colorscheme rigel

" use rigel with Airline
let g:rigel_lightline = 1
let g:lightline = { 'colorscheme': 'rigel' }


