map       <A-space>       :CocCommand explorer<CR>
inoremap  <silent><expr>  <c-space> coc#refresh()

" FZF
map       <M-f> :Files<CR>
map       <M-b> :Buffers<CR>
nnoremap  <M-g> :Rg<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Move with tab between buffers
nnoremap <TAB>    :bnext<CR>
nnoremap <S-TAB>  :bprevious<CR>

" Use alt + shift + hjkl to resize window
nnoremap <M-S-j> :resize -2<CR>
nnoremap <M-S-k> :resize +2<CR>
nnoremap <M-S-h> :vertical resize -2<CR>
nnoremap <M-S-l> :vertical resize +2<CR>

"Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-left> <C-w>h
nnoremap <C-down> <C-w>j
nnoremap <C-up> <C-w>k
nnoremap <C-right> <C-w>l

" Move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==
inoremap <A-down> <Esc>:m .+1<CR>==gi
inoremap <A-up> <Esc>:m .-2<CR>==gi
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" NERD Commenter
nnoremap <A-c> :call NERDComment(0,"toggle")<CR>
vnoremap <A-c> :call NERDComment(0,"toggle")<CR>
