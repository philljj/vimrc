" A simple vimrc. No addons or plugins needed.
" I use this on all linux systems for work.

" elflord is nice :-)
colorscheme elflord

" Search as characters are entered.
set incsearch

" Open new split panes to right and bottom, which feels more natural
" than Vim’s default:
"   https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
set splitbelow
set splitright

" Fast and simple way to move between panes:
"   http://stackoverflow.com/questions/6053301/easier-way-to-navigate-between-vim-split-panes
map <C-up> <C-w><up>
map <C-down> <C-w><down>
map <C-left> <C-w><left>
map <C-right> <C-w><right>

" Flip through quickfix list with ctrl+j and ctrl+k. This way I can
" grep for a pattern from vim, then flip through results quickly.
map <C-j> :cn<CR>
map <C-k> :cp<CR>

" Flip through tabs with shift+t
nnoremap T gt

" Allow hidden buffer in background:
"   https://nvie.com/posts/how-i-boosted-my-vim/
set hidden

" Vim includes a man page viewer, :Man, in its runtime files.
runtime! ftplugin/man.vim

" Setting the visual bell turns off the audio bell, and clearing the
" visual bell length deactivates flashing:
"   https://stackoverflow.com/a/44124913
set visualbell
set t_vb=

" Change color scheme if using ssh.
" Sometimes colors get weird depending on where
" I'm ssh'ing in from. Usually not an issue though.
"if $SSH_CONNECTION
  "colorscheme desert
"endif
