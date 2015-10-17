" === GUI ===

" Use gui tabs
set guioptions+=e

" kill the menubar
set guioptions-=T
set guioptions-=m

" kill scrollbars
set guioptions-=r
set guioptions-=L

" color scheme
colorscheme desert

source general.vim
source plugins.vim
source functions.vim
source key_mappings.vim

