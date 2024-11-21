" Copy search matches into register.
" Usage: CopyMatches x
" where x is the register
function! CopyMatches(reg)
  let hits = []
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/gne
  let reg = empty(a:reg) ? '+' : a:reg
  execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)

if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif

" LSP for HTML/CSS
if executable('html-languageserver')
    " npm install -g vscode-langservers-extracted
    au User lsp_setup call lsp#register_server({
        \ 'name': 'html-languageserver',
        \ 'cmd': {server_info->['html-languageserver', '--stdio']},
        \ 'allowlist': ['html', 'css'],
        \ })
endif

" LSP for JS
if executable('tsserver')
    " npm install -g typescript-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'tsserver',
        \ 'cmd': {server_info->['tsserver']},
        \ 'allowlist': ['javascript', 'typescript'],
        \ })
endif

" Install LSP for C#
if executable('omnisharp')
    " Install omnisharp-roslyn for C#
    " Download from https://github.com/OmniSharp/omnisharp-roslyn and ensure it's in your PATH
    au User lsp_setup call lsp#register_server({
        \ 'name': 'omnisharp',
        \ 'cmd': {server_info->['omnisharp', '--languageserver', '--hostPID', str2nr(getpid())]},
        \ 'allowlist': ['cs'],
        \ })
endif



function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    "autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END



function! ExecuteSelection() range
    " Save the current register contents
    let saved_reg = @"
    let saved_reg_type = getregtype('"')

    " Yank the selected text
    silent normal! gvy

    " Get the selected text
    let selected_text = @"

    " Restore the register
    call setreg('"', saved_reg, saved_reg_type)

    " Create a temporary file for the command
    let tmp_command = tempname()
    let tmp_output = tempname()

    " Write the selected text to the temporary file
    call writefile(split(selected_text, "\n"), tmp_command)

    " Make the command file executable
    call system('chmod +x ' . shellescape(tmp_command))

    " Execute the command and redirect output to temporary file
    let cmd = shellescape(tmp_command) . ' > ' . shellescape(tmp_output) . ' 2>&1'
    let result = system(cmd)

    " Read the output
    let output = readfile(tmp_output)

    " Delete temporary files
    call delete(tmp_command)
    call delete(tmp_output)

    " Move to the end of the last selected line
    execute max([line("'<"), line("'>")])

    " Insert the output below the selection
    if len(output) > 0
        call append('.', [''] + output)
    else
        echo "Command produced no output"
    endif
endfunction

