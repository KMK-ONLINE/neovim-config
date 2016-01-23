" === KEY MAPPING ===

" easy wrap toggling
nmap <Leader>w :set wrap!<cr>
nmap <Leader>W :set nowrap<cr>

" close all other windows (in the current tab)
" nmap gW :only<cr>

" go to the alternate file (previous buffer) with g-enter
" nmap g

" shortcuts for frequenly used files
nmap gs :e db/schema.rb<cr>
nmap gr :e config/routes.rb<cr>
nmap gm :e Gemfile<cr>

" insert blank lines without going into insert mode
nmap go o<esc>
nmap gO O<esc>

" mapping the jumping between splits. Hold control while using vim nav.
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Alternative for terminal
nmap <A-j> <C-W>j
nmap <A-k> <C-W>k
nmap <A-h> <C-W>h
nmap <A-l> <C-W>l

" Terminal navigation remap
:tnoremap <Esc> <C-\><C-n>
:tnoremap <A-j> <C-W>j
:tnoremap <A-k> <C-W>k
:tnoremap <A-h> <C-W>h
:tnoremap <A-l> <C-W>l
:tnoremap <C-j> <C-W>j
:tnoremap <C-k> <C-W>k
:tnoremap <C-h> <C-W>h
:tnoremap <C-l> <C-W>l

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" select the lines which were just pasted
nnoremap vv `[V`]

" clean up trailing whitespace
map <Leader>c :StripTrailingWhitespaces<cr>

" compress excess whitespace on current line
map <Leader>e :s/\v(\S+)\s+/\1 /<cr>:nohl<cr>

" delete all buffers
map <Leader>d :bufdo bd<cr>

" map spacebar to clear search highlight
nnoremap <Leader><space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
nnoremap <S-Up> <c-w>+
nnoremap <S-Down> <c-w>-
nnoremap <S-Left> <c-w><<c-w><<c-w><
nnoremap <S-Right> <c-w>><c-w>><c-w>>

" reindent the entire file
map <Leader>I gg=G``<cr>
