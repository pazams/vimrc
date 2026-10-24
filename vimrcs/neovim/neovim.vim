tnoremap <Esc> <C-\><C-n>

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
if has('nvim')
     nmap <BS> <C-W>h
 endif
map <leader>tt :terminal<cr>

" nvim 0.11+ maps i_<S-Tab> to a Lua callback (vim.snippet jump),
" which old supertab can't wrap (E129 at startup). We use vsnip, so drop it.
if has('nvim')
  silent! iunmap <S-Tab>
endif
