set number
set mouse=a
set numberwidth=1
set clipboard= unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus
"set noshowmode

call plug#begin ('~/.vim/pugged')

"Temas
Plug 'ParamagicDev/vim_medic_chalk'

"IDE
Plug 'easymotion/vim_easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiplecursors'

call plug#end()

colorscheme medic_chalk

let  NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
