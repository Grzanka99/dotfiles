call plug#begin('~/.config/nvim/plugins')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'rust-lang/rust.vim'

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

call plug#end()
