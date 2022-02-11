
inoremap jk <Esc>
inoremap kj <Esc>

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" ripgrep
nnoremap <C-\> :Rg<CR>
"nnoremap <C-T> :Files<cr>
nnoremap <leader>f :Files<CR>
nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>s :Blines<cr>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" ALE
noremap <leader>f :ALEFix

" CTRL-S in *all* modes to save
noremap <silent><c-s> :update<cr>
vnoremap <silent><c-s> <Esc>:update<cr>
inoremap <silent><c-s> <Esc>:update<cr>

" CoC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
