call plug#begin()

" Install nerdtree icons
" also needs to install these fonts *Nerd Fonts*
" https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#font-installation
" for icons to work
Plug 'ryanoasis/vim-devicons'

" github copilot
Plug 'github/copilot.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" Install LSPs directly in Vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

"display tab number
Plug 'mkitt/tabline.vim'

"send text to another window " supports visual mode
"Plug 'karoliskoncevicius/vim-sendtowindow'

"smooth scroll
"Plug 'psliwka/vim-smoothie'

"Airline
Plug 'vim-airline/vim-airline'


"BufExplorer
Plug 'jlanzarotta/bufexplorer'
Plug 'preservim/nerdtree'

" ----------------ALE Syntax-------------------------
"vim lint (syntax highlights) for error
Plug 'dense-analysis/ale'


" Hilight the word under cursor.
Plug 'itchyny/vim-cursorword'


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
"Plug 'airblade/vim-gitgutter' replaced with below
Plug 'tpope/vim-fugitive'

"Plug 'AnotherProksY/ez-window'
"" Change default 'Window Resize' mode mapping:
"let g:resize_start_key = '<C-m>'  " or any key you want

" Change 'Open Terminal' mapping:
"

"view registers content on ctrl r in insert mode
Plug 'junegunn/vim-peekaboo'

Plug 'haya14busa/incsearch.vim'

" language server protocol - LSP replaced by CoC
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'



Plug 'mhinz/vim-startify'

" colour theme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()
