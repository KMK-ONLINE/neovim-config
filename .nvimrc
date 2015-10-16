
" === GENERAL ==

" enable syntax highlighting
syntax on

" don't wrap long lines
set nowrap

" show commands as we type them
set showcmd

" highlight matching brackets
set showmatch

" scroll the window when we get near the edge
set scrolloff=4 sidescrolloff=10

" use 2 spaces for tabs
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set smarttab

" enable line numbers, and don't make them any wider than necessary
set number numberwidth=2

" show the first match as search strings are typed
set incsearch

" highlight the search matches
set hlsearch

" highlight cursor line
set cursorline

" searching is case insensitive when all lowercase
set ignorecase smartcase

" assume the /g flag on substitutions to replace all matches in a line
set gdefault

" set temporary directory (don't litter local dir with swp/tmp files)
set directory=/tmp/

" pick up external file modifications
set autoread

" don't abandon buffers when unloading
set hidden

" match indentation of previous line
set autoindent

" perform autoindenting based on filetype plugin
filetype plugin indent on

" don't blink the cursor
set guicursor=a:blinkon0

" show current line info (current/total)
set ruler rulerformat=%=%l/%L

" show status line
set laststatus=2

" augment status line
  function! ETry(function, ...)
    if exists('*'.a:function)
      return call(a:function, a:000)
    else
      return ''
    endif
  endfunction
  set statusline=[%n]\ %<%.99f\ %h%w%m%r%{ETry('CapsLockStatusline')}%y%{ETry('rails#statusline')}%{ETry('fugitive#statusline')}%#ErrorMsg#%*%=%-16(\ %l,%c-%v\ %)%P

" When lines are cropped at the screen bottom, show as much as possible
set display=lastline

" flip the default split directions to sane ones
set splitright
set splitbelow

" don't beep for errors
set visualbell

" make backspace work in insert mode
set backspace=indent,eol,start

" highlight trailing whitespace
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" have the mouse enabled all the time
set mouse=a

" use tab-complete to see a list of possiblities when entering commands
set wildmode=list:longest,full

" allow lots of tabs
set tabpagemax=20

" remember last position in file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Thorfile, Rakefile, Vagrantfile, and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" JSON is JS
au BufNewFile,BufRead *.json set ai filetype=javascript

" *.hh is hack file (php)
au BufRead,BufNewFile *.hh set filetype=php

" *.es6 is javascript file
au BufRead,BufNewFile *.es6 set filetype=javascript


" === PLUGINS ===

" required by vunddle
filetype off                  " required

set rtp+=~/.neovim/bundle/Vundle.vim/

" required by vunddle
call vundle#begin('~/.neovim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Provides easy to use, file-type sensible comments for Vim.
Plugin 'tomtom/tcomment_vim'

" Helps to end certain structures automatically
Plugin 'tpope/vim-endwise'

" Enable repeating supported plugin maps with '.'
Plugin 'tpope/vim-repeat'

" Extended % matching for HTML, LaTeX, and many other languages
Plugin 'vim-scripts/matchit.zip'

" Easily search for, substitute, and abbreviate multiple variants of a word
Plugin 'tpope/vim-abolish'

" Provides a much simpler way to use some motions in vim
Plugin 'Lokaltog/vim-easymotion'

" Allows you to use <Tab> for all your insert completion needs
Plugin 'ervandew/supertab'
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Dash Searching
Plugin 'rizzatti/funcoo.vim.git'
Plugin 'rizzatti/dash.vim.git'
nmap <Leader>qs <Plug>DashSearch
nmap <Leader>qa <Plug>DashGlobalSearch

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'
nnoremap <c-b> :<C-U>CtrlPBuffer<CR>

" AG aka The Silver Searcher
Plugin 'rking/ag.vim.git'
" nmap g/ :Ag!<space>
" nmap g* :Ag! -w <C-R><C-W><space>
" nmap ga :AgAdd!<space>
" nmap gn :cnext<CR>
" nmap gp :cprev<CR>
" nmap gq :ccl<CR>
" nmap gl :cwindow<CR>

" Tagbar for navigation by tags using CTags
Bundle 'majutsushi/tagbar.git'
let g:tagbar_autofocus = 1
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <Leader>. :TagbarToggle<CR>

" NERDTree for project drawer
Plugin 'scrooloose/nerdtree.git'
let NERDTreeHijackNetrw = 0
nmap <leader>g :NERDTreeToggle<CR>
nmap <leader>G :NERDTreeFind<CR>

" ZoomWin to fullscreen a particular buffer without losing others
Plugin 'vim-scripts/ZoomWin.git'
map <Leader>z :ZoomWin<CR>


" Unimpaired for keymaps for quicky manipulating lines and files
Plugin 'tpope/vim-unimpaired.git'
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv


" Syntastic for catching syntax errors on save
Plugin 'scrooloose/syntastic.git'
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warning'}
" syntastic is too slow for haml and sass
let g:syntastic_mode_map = { 'mode': 'active',
		       \ 'active_filetypes': [],
		       \ 'passive_filetypes': ['haml','scss','sass'] }


" gundo for awesome undo tree visualization
Plugin 'sjl/gundo.vim.git'
map <Leader>h :GundoToggle<CR>

" surround for adding surround 'physics'
Plugin 'tpope/vim-surround.git'
" # to surround with ruby string interpolation
let g:surround_35 = "#{\r}"
" - to surround with no-output erb tag
let g:surround_45 = "<% \r %>"
" = to surround with output erb tag
let g:surround_61 = "<%= \r %>"

" Multiple Cursor
Plugin 'terryma/vim-multiple-cursors.git'

" Blade syntax highlighting
Plugin 'xsbeats/vim-blade'

" facebook
Plugin 'mxw/vim-xhp'
Plugin 'hhvm/vim-hack'

" Git plugin
Plugin 'tpope/vim-fugitive'

" Javascript plugin
Plugin 'pangloss/vim-javascript'

" required by vunddle
call vundle#end()

" required by vunddle
filetype plugin indent on " required by vunddle


" === CUSTOM FUNCTION ===

" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()
autocmd BufWritePre <buffer> call <SID>StripTrailingWhitespaces()



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
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

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




