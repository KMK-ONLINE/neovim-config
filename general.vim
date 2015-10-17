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

" enable line numbers, and don't make them any wider than necessary
set number numberwidth=2

" highlight cursor line
set cursorline

" searching is case insensitive when all lowercase
set ignorecase smartcase

" assume the /g flag on substitutions to replace all matches in a line
set gdefault

" set temporary directory (don't litter local dir with swp/tmp files)
set directory=/tmp/

" don't abandon buffers when unloading
set hidden

" perform autoindenting based on filetype plugin
filetype plugin indent on

" don't blink the cursor
set guicursor=a:blinkon0

" show current line info (current/total)
set ruler rulerformat=%=%l/%L

" augment status line
  function! ETry(function, ...)
    if exists('*'.a:function)
      return call(a:function, a:000)
    else
      return ''
    endif
  endfunction
  set statusline=[%n]\ %<%.99f\ %h%w%m%r%{ETry('CapsLockStatusline')}%y%{ETry('rails#statusline')}%{ETry('fugitive#statusline')}%#ErrorMsg#%*%=%-16(\ %l,%c-%v\ %)%P

" flip the default split directions to sane ones
set splitright
set splitbelow

" don't beep for errors
set visualbell

" highlight trailing whitespace
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" have the mouse enabled all the time
set mouse=a

" use tab-complete to see a list of possiblities when entering commands
set wildmode=list:longest,full

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

