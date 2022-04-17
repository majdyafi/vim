
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

Plug 'OmniSharp/omnisharp-vim'

"auto complete works with omnisharp
Plug 'prabirshrestha/asyncomplete.vim'


" Mappings, code-actions available flag and statusline integration
Plug 'nickspoons/vim-sharpenup'

" Linting/error highlighting
Plug 'dense-analysis/ale'

" Vim FZF integration, used as OmniSharp selector
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"Airline
Plug 'vim-airline/vim-airline'

" Colorscheme
Plug 'Rigellute/rigel'


" Statusline
"Plug 'itchyny/lightline.vim'
"Plug 'shinchu/lightlinegruvbox.vim'
"Plug 'maximbaz/lightline-ale'
"Plug 'puremourning/vimspector'

"BufExplorer
Plug 'jlanzarotta/bufexplorer'
Plug 'preservim/nerdtree'

" ----------------ALE Syntax-------------------------
"vim lint (syntax highlights) for error
Plug 'dense-analysis/ale'


" Hilight the word under cursor.
Plug 'itchyny/vim-cursorword'

"replace built-in f to find the next occurance of a character.
"Plug 'rhysd/clever-f.vim'

"auto save as I type
Plug '907th/vim-auto-save'


"let g:deoplete#enable_at_startup = 1




"preview definition and implementation in a popup window.
"Plug 'rmagatti/goto-preview'
"
"nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>
"nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
"nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
"" Only set if you have telescope installed
"nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>

"Razor suppport
Plug 'jlcrochet/vim-razor'

"replace grep with ack
Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
"find the word under cursor with AG
noremap <leader>fw :Ag <C-R><C-W><CR>

"HTML emmet to complete html tags
Plug 'mattn/emmet-vim'

" display hex color 
Plug 'gko/vim-coloresque'


"comments
Plug 'preservim/nerdcommenter'

"show git signs in the editor 
Plug 'airblade/vim-gitgutter'

"Plug 'AnotherProksY/ez-window'
"" Change default 'Window Resize' mode mapping:
"let g:resize_start_key = '<C-m>'  " or any key you want

" Change 'Open Terminal' mapping:
"

"view registers content on ctrl r in insert mode
Plug 'junegunn/vim-peekaboo'

Plug 'haya14busa/incsearch.vim'

" language server protocol LSP
Plug 'prabirshrestha/vim-lsp'



Plug 'mhinz/vim-startify'
call plug#end()
