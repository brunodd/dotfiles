" vim:fdm=marker
" 1. Plugins {{{
"Vundle {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
" indentLine settings {{{
" Vim
let g:indentLine_color_term = 239
"GVim
let g:indentLine_color_gui = '#A4E57E'
" set list lcs=tab:\|\ 
set list lcs=tab:¦\ 
" }}}
Plugin 'msanders/snipmate.vim'
Plugin 'kana/vim-fakeclip'
Plugin 'scrooloose/nerdtree'
" NERDTree settings {{{
nmap <C-b> :NERDTreeToggle<Cr>
" }}}
Plugin 'gerw/vim-latex-suite'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" vim-markdown settings {{{
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math=1
" }}}
Plugin 'kien/ctrlp.vim'
" CtrlP settings {{{
let g:ctrlp_show_hidden = 1
map <D-p> :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>

" }}}
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-run-interactive'
Plugin 'vim-airline'
Plugin 'tComment'
Plugin 'EasyMotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'a.vim'
Plugin 'php.vim'
Plugin 'smarty.vim'
Plugin 'spf13/PIV'
Plugin 'vim-scripts/click.vim'
" Plugin 'skammer/vim-css-color'
Plugin 'xsbeats/vim-blade'
Plugin 'jrozner/vim-antlr'
" Vim 2 Gist
Plugin 'vim-scripts/matchit.zip'
" Matchit settings {{{
runtime macros/matchit.vim
" }}}
Plugin 'rking/ag.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"}}}
"}}}
" Global settings {{{
" Environment settings {{{
syntax on
hi Search guibg=darkgrey ctermbg=darkgrey
set visualbell
set noerrorbells
set mouse=a     " c == no mouse options, a == enable mouse options.
set clipboard=unnamed
set hidden
set nocompatible
set autoindent
set copyindent
set showmatch
set guifont=Lucida_Console:h14
set guioptions-=T " Remove top toolbar
set guioptions-=r " Remove right hand scroll bar
set go-=L " Remove left hand scrollbar
set linespace=12
set smarttab
set relativenumber
set number
set sw=4
set sts=4
set tabstop=4
set expandtab
set laststatus=4
set foldmethod=syntax
set wildignore+=*.pdf,*.jpg,*.psd,*.gif,tmp/**,vendor/**,*.png,Export/**
set wildignore+=*.so,*.sw,*.zip
set wildignore+=tags,Assets/images/**,Assets/sounds/**
set hlsearch
set ttyfast
set ttyscroll=3
set lazyredraw
set wrap " wrap long lines
" set linebreak
set textwidth=80
set cc=+1 " highlight one column after 'textwidth'

" set nobackup    " Don't store backup files
set backupdir=~/.vim/.backup//
set noswapfile
set history=1000 " number of commands and search patterns to save
set shiftround " round alignment to nearest indent when shifting with < and >
set t_Co=256 " Set full color range
set backspace=indent,eol,start " allow bs over EOL, indent, and start of insert
set nostartofline " if possible, keep cursor in same column for many commands
set incsearch " incremental search
set hlsearch " highlight the current search pattern
" Press enter to clear the current search highlight.
nnoremap <silent><CR> :nohlsearch<CR><CR>
set ignorecase " ignore case when searching (see smartcase)
set smartcase " do not ignore case if pattern has mixed case (see ignorecase)
set nojoinspaces " use only one space when using join
set showmatch " show matching brackets by flickering cursor
set matchtime=1 " show matching brackets quicker than default
set modeline " docs say this is default, but not on any Vim I tried!
set autoread " automatically read file changed outside of Vim
set autowrite " automatically save before commands like :next and :make
set splitbelow " open new split windows below the current one
set showcmd " show partial command in status line
set tags=~/tags,./tags;,tags; " semicolon searchs up, see :h file-searching
set suffixes+=.class,.pyc,.o,.so " skip bytecode files for filename completion
set suffixes-=.h " do not skip C header files for filename completion
" set directory=~/.vim/.tmp//     " swap file locations 
set virtualedit=block " allow selection anywhere when in Visual block mode
set laststatus=2 " always show statusline
set statusline=%n\ %1*%h%f%*\ %=%<[%3lL,%2cC]\ %2p%%\ 0x%02B%r%m
set ruler " show ruler, but only shown if laststatus is off
set rulerformat=%h%r%m%=%f " sane value in case laststatus is off
set formatoptions+=l

set wildmenu " show a menu of matches when doing completion
set wildmode=longest:full " make completion work like Bash.
set title " shows the current filename and path in the term title.
set showfulltag " show search pattern when completion matches in a tag file.

" Define new leader
" let mapleader = ","
" let g:mapleader = ","
" our <leader> will be the space key
let mapleader=" "
" Move to next line (when lines are wrapped)
nnoremap j gj
nnoremap k gk
" }}}
" Splits {{{
" key bindings for quickly moving between windows
" h left, l right, k up, j down
noremap <leader>h <c-w>h
noremap <leader>l <c-w>l
noremap <leader>k <c-w>k
noremap <leader>j <c-w>j

nmap vs :vsplit<cr>
nmap sp :split<cr>
" }}}
" Color settings {{{
" Colorscheme {{{
syntax enable
set background=dark
let g:solarized_termcolors=256 " Fix weird colors in non-gui vim
" colorscheme adam
" colorscheme greenvision
colorscheme solarized
" colorscheme solarized_brunodd
" }}}
" }}}
" Handy little things {{{
" jump to the last known position in a file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
" If there is a local vimrc, use it.
if filereadable ("~/.vimrc_local")
    source ~/.vimrc_local
endif

" }}}
" }}}
" Filetype specifics {{{
" C-family {{{
autocmd FileType c   set shiftround expandtab tabstop=2 shiftwidth=2 " c
autocmd FileType h   set shiftround expandtab tabstop=2 shiftwidth=2 " h
autocmd FileType cpp   set shiftround expandtab tabstop=2 shiftwidth=2 " cpp
autocmd FileType hpp   set shiftround expandtab tabstop=2 shiftwidth=2 " hpp
" }}}
" Java {{{
autocmd FileType java set shiftround noexpandtab tabstop=2 shiftwidth=2 " java
call tcomment#DefineType('java', '// %s')
" }}}
" PHP {{{
autocmd BufNewFile,BufRead *.php set filetype=php
autocmd FileType php set shiftround expandtab tabstop=4 shiftwidth=4 " php
" Laravel specifics
" {{{
" Abbreviations
abbrev mc !php artisan make:controller
abbrev mm !php artisan make:model

" Navigation
nmap <leader>lr :e app/routes.php<cr>
nmap <leader>lca :e app/config/app.php<cr>81Gf(%0
nmap <leader>lcd :e app/config/database.php<cr>
nmap <leader>lc :e composer.json<cr>

" Blade specifics
autocmd BufNewFile,BufRead *.blade.php set filetype=blade
call tcomment#DefineType('blade', '{{-- %s --}}')

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set wildignore+=*/skulpt/*
" }}}
" }}}
" Antlr {{{
au BufRead,BufNewFile *.g4 set syntax=antlr4
" }}}
" Python {{{
autocmd FileType python   set shiftround expandtab tabstop=4 shiftwidth=4 " Python
" }}}
" Makefile {{{
autocmd FileType make     set shiftround noexpandtab tabstop=8 shiftwidth=8 " Makefile
" }}}
" Bash/Shell {{{
autocmd FileType sh       set shiftround noexpandtab tabstop=8 shiftwidth=8 " shell scripts
" }}}
" Dotfiles {{{
autocmd FileType dot set shiftround expandtab tabstop=4 shiftwidth=4 " dot
" }}}
" Prolog {{{
autocmd BufNewFile,BufRead *.pl set filetype=prolog
autocmd FileType prolog set shiftround expandtab tabstop=4 shiftwidth=4 " prolog
" }}}
" Click {{{
autocmd BufNewFile,BufRead *.click set filetype=click
" }}}
" Latex {{{
autocmd BufNewFile,BufRead *.tex set filetype=tex
" }}}
" }}}
" Advanced scripts {{{
" Improve viminfo {{{
if version >= 630
    set viminfo=!,%,'20,/100,:100,s100,n~/.viminfo " options for .viminfo
else
    set viminfo=!,%,'20,/100,:100,n~/.viminfo " options for .viminfo
endif
" }}}
" Minor tweak for newer Vim {{{
if version >= 700
    " Highlight the line and column of the cursor.
    set cursorline cursorcolumn
    set numberwidth=4 " width of line numbers
    set nofsync " improves performance -- let OS decide when to flush disk
endif
if version >= 730
    set undofile
    set undodir=~/.vim/.undo//
endif
" }}}
" Searching {{{
" These mappings extend the spirit of * and # for visual searching.
" Use visual select to select an area, then search for matches by
" typing * or #. This is very useful for searching for other instances of
" long, complex strings that may contain regex methacharacters and multiple
" lines. You don't have to worry about quoting.
vmap <silent> * y:let @/=substitute(escape(@",'.$*[^\/~'),'\n','\\n','g')<CR>n
vmap <silent> # y:let @/=substitute(escape(@",'.$*[^\/~'),'\n','\\n','g')<CR>N
vnoremap <silent> * :<C-U>
              \let old_reg=getreg('"')<bar>
              \let old_regmode=getregtype('"')<cr>
              \gvy/<C-R><C-R>=substitute(substitute(
              \escape(@", '\\/.*$^~[]' ), "\n$", "", ""),
              \"\n", '\\_[[:return:]]', "g")<cr><cr>
              \:call setreg('"', old_reg, old_regmode)<cr>
vnoremap <silent> # :<C-U>
              \let old_reg=getreg('"')<bar>
              \let old_regmode=getregtype('"')<cr>
              \gvy?<C-R><C-R>=substitute(substitute(
              \escape(@", '\\/.*$^~[]' ), "\n$", "", ""),
              \"\n", '\\_[[:return:]]', "g")<cr><cr>
              \:call setreg('"', old_reg, old_regmode)<cr>
" }}}
" Spell checker {{{
" <F2> or \s
if version >= 700
    nnoremap <silent><F2> <ESC>:set spell!<CR>
    nnoremap <silent><leader>s <ESC>:set spell!<CR>
    "setlocal spell spelllang=en_us
else " older versions use external aspell
    nnoremap <silent><F2> <ESC>:!aspell -c "%"<CR>:edit! "%"<CR>
    nnoremap <silent><leader>s <ESC>:!aspell -c "%"<CR>:edit! "%"<CR>
endif
" }}}
" }}}
" General Remaps {{{
" Enable easy Redo
nmap r :redo<cr>
" Typos {{{
nmap :Q<CR> :q<CR>
" map Q as @q (replay the recording named q).
nnoremap Q @q
" get rid of most annoying typo: typing q: when I meant :q.
map q: :q
" }}}
" Make logical meaning {{{
" This allows easy indentation in visual mode.
vmap > >gv
vmap < <gv
" }}}
" Yank all {{{
nnoremap <silent><leader>a gg"+yG
" }}}
" }}}
" Fix mapping overlaps {{{
nnoremap <SID>I_won’t_ever_type_this <Plug>IMAP_JumpForward
nnoremap <SID>I_won't_ever_type_this_either <C-W>\=
" }}}

" To be determined {{{
" refresh - redraw window
" <F5>
nnoremap <silent><F5> :redraw!<CR>
" }}}
