" === PLUGINS ===

" required by vunddle
filetype off                  " required

set rtp+=~/.nvim/bundle/Vundle.vim/


" required by vunddle
call vundle#begin('~/.nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Toggle the cursorshape in the terminal
Plugin 'jszakmeister/vim-togglecursor'

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

" Lean & Mean status/tabline
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

" Git plugin
Plugin 'tpope/vim-fugitive'

" Blade syntax highlighting
Plugin 'xsbeats/vim-blade'

" facebook
Plugin 'mxw/vim-xhp'
Plugin 'hhvm/vim-hack'
autocmd FileType php set tabstop=4|set softtabstop=4|set shiftwidth=4
autocmd FileType hack set tabstop=4|set softtabstop=4|set shiftwidth=4
au BufEnter *.php set ai sw=4 ts=4 sta et fo=croql
au BufEnter *.hh set ai sw=4 ts=4 sta et fo=croql

" Javascript plugin
Plugin 'pangloss/vim-javascript'

" required by vunddle
call vundle#end()

" required by vunddle
filetype plugin indent on " required by vunddle

