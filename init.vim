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
Plug 'dart-lang/dart-vim-plugin'
Plug 'OmniSharp/omnisharp-vim'
Plug 'vitalk/vim-simple-todo'

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
map <leader>c "+y
map <leader>y "+y
map <leader>p "+gp
imap jj <Esc>
imap jk <Esc>:w <return>
map ,d :DartFmt <return>
vmap o <Esc>
set updatetime=100
set colorcolumn=120
highlight ColorColumn ctermbg=red guibg=red
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
source ~/.config/nvim/plugconf/gitgutter.vim
source ~/.config/nvim/plugconf/coc.vim
source ~/.config/nvim/plugconf/fzf.vim
