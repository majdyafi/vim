# vim


These are the three modules that I merely use to cutomise vim to write C# core (using LSP). I have tested this setup on a Mac but haven't had the chance to test it on Windows or Linux.

## Installation

if you want to use these settings, simply clone this repository to `~/.vim/modules` and add the following lines to `~/.vimrc`

```
filetype on
filetype plugin on

source  ~/.vim/modules/keymaps.vim
source  ~/.vim/modules/plugins.vim
source  ~/.vim/modules/settings.vim
```
then run `:PlugInstall` or use your favourite plugin installer.

## Plugins

- 'mhinz/vim-startify'
- 'prabirshrestha/vim-lsp'
- 'haya14busa/incsearch.vim'
- 'junegunn/vim-peekaboo'
- 'AnotherProksY/ez-window'
- 'airblade/vim-gitgutter'
- 'preservim/nerdcommenter'
- 'gko/vim-coloresque'
- 'mattn/emmet-vim'
- 'mileszs/ack.vim'
- 'jlcrochet/vim-razor'
- 'rmagatti/goto-preview'
- '907th/vim-auto-save'
- 'rhysd/clever-f.vim'
- 'itchyny/vim-cursorword'
- 'dense-analysis/ale'
- 'preservim/nerdtree'
- 'jlanzarotta/bufexplorer'
- 'puremourning/vimspector'
- 'maximbaz/lightline-ale'
- 'shinchu/lightlinegruvbox.vim'
- 'itchyny/lightline.vim'
- 'Rigellute/rigel'
- 'vim-airline/vim-airline'
- 'junegunn/fzf.vim'
- 'junegunn/fzf'
- 'dense-analysis/ale'
- 'nickspoons/vim-sharpenup'
- 'prabirshrestha/asyncomplete.vim'
- 'OmniSharp/omnisharp-vim'
- 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
- 'junegunn/fzf', { 'do': { -> fzf#install() } }


## Screenshots:

![vim1](https://github.com/majdyafi/vim/blob/main/Screenshot%202022-04-18%20at%2000.00.15.png?raw=true)

![vim4](https://github.com/majdyafi/vim/blob/main/Screenshot%202022-04-18%20at%2000.07.36.png?raw=true)

![vim2](https://github.com/majdyafi/vim/blob/main/Screenshot%202022-04-18%20at%2000.01.02.png?raw=true)

![vim3](https://github.com/majdyafi/vim/blob/main/Screenshot%202022-04-18%20at%2000.01.13.png?raw=true)
