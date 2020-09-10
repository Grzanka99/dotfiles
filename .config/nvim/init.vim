source $HOME/.config/nvim/partials/plugins.vim
source $HOME/.config/nvim/partials/keybindings.vim
source $HOME/.config/nvim/partials/fzf.vim

syntax enable
set number relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent
set copyindent
set clipboard+=unnamedplus
set autoread
set nobackup
set nowritebackup
set cursorline
set splitbelow
set splitright
set mouse=a
set encoding=utf-8
set updatetime=300
set timeoutlen=100

" Pugin config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-clangd',
  \ 'coc-godot',
  \ 'coc-rls',
  \ 'coc-tabnine',
  \ 'coc-vetur',
  \ 'coc-css',
  \ 'coc-fish',
  \ 'coc-phpls',
  \ 'coc-explorer',
  \ ]

let g:lightline = {
  \ 'colorscheme': 'nord',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name'
  \ },
  \ }

let g:rustfmt_autosave = 1

let g:blamer_enabled = 1
let g:blamer_delay = 1000
let g:blamer_show_in_visual_modes = 0
let g:blamer_prefix = ' git: '

autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd FocusGained * silen! checktime

colorscheme nord
set termguicolors
