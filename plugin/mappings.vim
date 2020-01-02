" Yank to the end of the line (consistent with C and D)
nnoremap Y y$
" Clear highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>
" Adjust viewports to the same size
map <Leader>= <C-w>=
" Really, really, write the file (did you forget to sudo?)
cmap w!! w !sudo tee % >/dev/null

map <Leader>b :BuffergatorToggle<CR>
map <Leader>f :Ack<space>
map <Leader>g :Flogsplit<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>t :TagbarToggle<CR>
map <Leader>u :GundoToggle<CR>
map <Leader><Leader> :ZoomWin<CR>
