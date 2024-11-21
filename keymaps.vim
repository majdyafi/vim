let mapleader = ","
inoremap jk <Esc>

nnoremap <leader>vc :source ~/.vimrc<CR>

"Navigation 
nnoremap <leader>ff :Files<CR>
" search all files with AG
nnoremap <leader>fs :Ag<CR>
"NerdTree
"nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"editing
nnoremap <leader>, :wa<CR>
nnoremap <leader><Space> :nohl<CR>


nnoremap <C-j> 3j
nnoremap <C-k> 3k
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
"close window
nnoremap <C-q> :q<CR>

"open a termial window
 nnoremap <leader>tt :vert term<CR>
"nnoremap <leader>tt :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>

"execute the line under curson in termial
nnoremap <leader>te :execute getline('.')<CR>
xnoremap <leader>te :w !bash<CR>

"asynccomplete
"using tab for autocomplete
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>  pumvisible() ? asyncomplete#close_popup() : "\<cr>"
"force referesh comletion 
imap <c-space> <Plug>(asyncomplete_force_refresh)

"ALE
nnoremap <Leader>aj :ALENext<CR>
nnoremap <Leader>ak :ALEPrevious<CR>

"tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt


"Omnisharp

autocmd FileType cs nnoremap <Leader>dr :call system('dotnet run')

augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving.
  " Note that the type is echoed to the Vim command line, and will overwrite
  " any other messages in this space including e.g. ALE linting messages.
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>pd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>pi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>t <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <Leader>d <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

  " Navigate up and down by method/property/field
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  autocmd FileType cs nmap <silent> <buffer> <Leader>gcc <Plug>(omnisharp_global_code_check)
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>ca <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
  autocmd FileType cs nmap <silent> <buffer> <Leader>. <Plug>(omnisharp_code_action_repeat)
  autocmd FileType cs xmap <silent> <buffer> <Leader>. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <Leader>= <Plug>(omnisharp_code_format)

  autocmd FileType cs nmap <silent> <buffer> <Leader>nm <Plug>(omnisharp_rename)

  autocmd FileType cs nmap  <buffer> <Leader>re <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap  <buffer> <Leader>st <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap  <buffer> <Leader>sp <Plug>(omnisharp_stop_server)

augroup END

  let g:OmniSharp_popup_mappings = {
\ 'sigNext': '<C-j>',
\ 'sigPrev': '<C-k>',
\}

" Use :CocDiagnostics to show diagnostics in location list
nmap <silent> <leader>d :CocDiagnostics<CR>
" Toggle location list
nmap <silent> <leader>l :lopen<CR>



" Map the function to a key combination (e.g., <Leader>e in visual mode)
vnoremap <Leader>r :call ExecuteSelection()<CR>
