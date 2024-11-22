filetype indent plugin on
syntax enable

let g:auto_save = 1  " enable AutoSave on Vim startup

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"use 4 spaces for tabs
set tabstop=2 softtabstop=2 shiftwidth=2

"display indentation guides
set list listchars=tab:ˈ\ \,trail:·,extends:»,precedes:«,nbsp:×

" todo enable modifible buffers

"convert spaces to tabs when reading file
" autocmd! bufreadpost * set noexpandtab | retab! 4

"convert tabs to spaces before writing file
" autocmd! bufwritepre * set expandtab | retab! 4

"convert spaces to tabs after writing file (to show guides again)
" autocmd! bufwritepost * set noexpandtab | retab! 4

"enable fzf
set rtp+=/usr/local/opt/fzf


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
  \ '~/.vimrc',
  \ '~/.zshrc',
  \ ]

let s:bookmarks2 = [
  \ '/Users/majdy/Downloads/notes',
  \ '~/Documents/repos',
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



" use rigel with Airline
let g:rigel_lightline = 1
let g:lightline = { 'colorscheme': 'catppuccin-mocha' }

" change the cursor color
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

" Display tab number
let g:tablineclosebutton=1
hi TabLine    ctermfg=Black  ctermbg=Green   cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green   cterm=NONE
hi TabLineSel ctermfg=White  ctermbg=DarkBlue  cterm=NONE




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
set incsearch
set hlsearch
set backspace=indent,eol,start
"set noswapfile
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set number " # (optional - will help to visually verify that it's working)
" # set wrapping
set textwidth=0
set wrapmargin=0
set wrap
set linebreak " (optional - breaks by word rather than character)
set columns=100 " <<< THIS IS THE IMPORTANT PART
set encoding=UTF-8 " Enable icons 


"color scheme
" colorscheme rigel
colorscheme catppuccin-mocha


" ALE Settings - avoid clash with Coc LSP
" ALE
" -----------------------
" Read required prerequisites on linter project pages
" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 0

let g:ale_disable_lsp = 1
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_sign_column_always = 1
let g:ale_open_list = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_float_preview = 1
highlight ALEErrorSign guifg=red guibg=NONE
highlight ALEWarningSign guifg=yellow guibg=NONE
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" ---------------------------------------
nmap <silent> <C-)> <Plug>(ale_previous_wrap)
nmap <silent> <C-(> <Plug>(ale_next_wrap)
" ---------------------------------------
augroup FiletypeGroup
  autocmd!
  au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

" Disable virtual text from ALE
let g:ale_virtualtext_cursor = 0

" Open the location list automatically when there are errors
let g:ale_open_list = 1

" Keep the location list window size fixed
let g:ale_list_window_size = 5

" Disable inline virtual text from CoC
let g:coc_diagnostic_enable = 0


set modifiable

set updatetime=300

