call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'psliwka/vim-smoothie'
Plug 'https://github.com/posva/vim-vue'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme gruvbox
set noswapfile
set number
set relativenumber
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
map <C-p> :GFiles <return>
map <leader><C-P> :Files <return>
map ,<space> :CocCommand eslint.executeAutofix <return>
map ,d "md
map <leader>c "+y
map <leader>y "+y
map <leader>p "+gp
set updatetime=100
source ~/.config/nvim/plugconf/gitgutter.vim
source ~/.config/nvim/plugconf/coc.vim

    
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }
    
