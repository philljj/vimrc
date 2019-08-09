" search as characters are entered
set incsearch 

" Open new split panes to right and bottom, which feels more natural than Vim’s default.
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
set splitbelow
set splitright

" Smart way to move between panes
" http://stackoverflow.com/questions/6053301/easier-way-to-navigate-between-vim-split-panes
map <C-up> <C-w><up>
map <C-down> <C-w><down>
map <C-left> <C-w><left>
map <C-right> <C-w><right>

" flip through quickfix list with ctrl+j and ctrl+k
map <C-j> :cn<CR> 
map <C-k> :cp<CR>

" flip through tabs with shift+t
nnoremap T gt

" allow buffer in bakcground
set hidden 

" I like elflord :-)
colorscheme elflord

if $SSH_CONNECTION
" Change color scheme if using ssh.
  "colorscheme desert
endif

" Vim includes a man page viewer, :Man, in its runtime files.
runtime! ftplugin/man.vim

" Setting the visual bell turns off the audio bell and clearing the visual bell length deactivates flashing.
" https://stackoverflow.com/a/44124913
set visualbell
set t_vb=
