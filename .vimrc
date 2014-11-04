set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
" Plugin 'KurtPreston/vim-autoformat-rails'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'msanders/snipmate.vim'
Plugin 'kana/vim-fakeclip'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ngmy/vim-rubocop'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'sophacles/vim-processing'
Plugin 'kien/ctrlp.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'rking/ag.vim'
Plugin 'christoomey/vim-run-interactive'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'vim-airline'
Plugin 'tComment'
Plugin 'EasyMotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'a.vim'
Plugin 'Valloric/YouCompleteMe'

" Ask if configuration file for YouCompleteMe project should be loaded: 1 = on 0 = of (default = 1)
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Vim 2 Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" Rubyblock depends on: [matchit, textobj-user]
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'
Plugin 'vim-scripts/matchit.zip'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

runtime macros/matchit.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC SETS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin indent on
hi Search guibg=darkgrey ctermbg=darkgrey
set cursorline
set visualbell
set noerrorbells
set smartcase
set ignorecase
set mouse=a
set clipboard=unnamed
set hidden
set nocompatible
set history=50
set ruler
set showcmd
set autoindent
set showmatch
set nowrap
set autoread
" set guifont=Monaco:h12
set smarttab
set relativenumber
set number
set sw=2
set sts=2
set tabstop=2
set expandtab
set laststatus=2
set nofoldenable " No code folding :-)
set tags=./tags;
set wildignore+=*.jpg,*.psd,*.gif,tmp/**,vendor/**,*.png,Export/**
set wildignore+=tags,Assets/images/**,Assets/sounds/**
set hlsearch
set autowrite
set ttyfast
set synmaxcol=128
set ttyscroll=3
set lazyredraw
set wrap
set textwidth=80
set colorcolumn=+1
set noswapfile

" Set colorscheme
syntax enable
set background=dark
" colorscheme molokai
" colorscheme calmar256-dark
" colorscheme greenvision
" colorscheme 256-grayvim
let g:solarized_termcolors=256
colorscheme solarized

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
set wrap " wrap long lines
set sidescroll=1 " smooth scroll if set nowrap. for slow terminals set to 0.
set dir=~/tmp,.,/tmp,/var/tmp " swap file locations
set virtualedit=block " allow selection anywhere when in Visual block mode
set laststatus=2 " always show statusline
set statusline=%n\ %1*%h%f%*\ %=%<[%3lL,%2cC]\ %2p%%\ 0x%02B%r%m
set ruler " show ruler, but only shown if laststatus is off
set rulerformat=%h%r%m%=%f " sane value in case laststatus is off
set rnu

set wildmenu " show a menu of matches when doing completion
set wildmode=longest:full " make completion work like Bash.
set title " shows the current filename and path in the term title.
set showfulltag " show search pattern when completion matches in a tag file.
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:< " :h 'list
if version >= 630
    set viminfo=!,%,'20,/100,:100,s100,n~/.viminfo " options for .viminfo
else
    set viminfo=!,%,'20,/100,:100,n~/.viminfo " options for .viminfo
endif
if version >= 700
    """ " Highlight the line and column of the cursor.
    set cursorline cursorcolumn
    """ au WinLeave * set nocursorline nocursorcolumn
    " au WinEnter * set cursorline cursorcolumn
    set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:% " :h 'list
    set numberwidth=4 " width of line numbers
    set nofsync " improves performance -- let OS decide when to flush disk
endif
if version >= 730
    set undofile
endif

" Tab settings for filetypes that should be set even if ftplugin is off.
set shiftround expandtab tabstop=4 shiftwidth=4 " default
set tw=200
autocmd FileType c   set shiftround expandtab tabstop=2 shiftwidth=2 " c
autocmd FileType h   set shiftround expandtab tabstop=2 shiftwidth=2 " h
autocmd FileType cpp   set shiftround expandtab tabstop=2 shiftwidth=2 " cpp
autocmd FileType hpp   set shiftround expandtab tabstop=2 shiftwidth=2 " hpp
autocmd FileType python   set shiftround expandtab tabstop=4 shiftwidth=4 " Python
autocmd FileType make     set shiftround noexpandtab tabstop=8 shiftwidth=8 " Makefile
autocmd FileType sh       set shiftround noexpandtab tabstop=8 shiftwidth=8 " shell scripts
autocmd FileType man      set shiftround noexpandtab tabstop=8 shiftwidth=8 " Man page (also used by psql to edit or view)
autocmd FileType calendar set shiftround noexpandtab tabstop=8 shiftwidth=8 " calendar(1) reminder service
autocmd FileType dot set shiftround expandtab tabstop=4 shiftwidth=4 " dot

""""""""""
"" MAPS ""
""""""""""
" Open NERDTree
nmap NT :NERDTreeToggle<CR>
" Write and switch to *.h <-> *.cpp
nmap :wA<CR> :w<CR> :A<CR>
" Quit and switch to *.h <-> *.cpp
nmap :qA<CR> :w<CR> :A<CR>
" Fix typo
nmap :Q<CR> :q<CR>
" \cwd changes current working directory
map <leader>cwd :cd %:p:h<CR>
" map Q as @q (replay the recording named q). I always use q as my throw-away
" recording name, so I start recording with "qq" then reply the recording with
" "Q". I never found a use for interactive ex-mode so I don't miss the
" original definition of Q.
nnoremap Q @q
" get rid of most annoying typo: typing q: when I meant :q.
" You can still get to cmdline-window easily by typing <Ctrl-F> in
" command mode, so loosing q: is no loss.
map q: :q
" Use display movement with arrow keys for extra precision. Arrow keys will
" move up and down the next line in the display even if the line is wrapped.
" This is useful for navigating very long lines that you often find with
" automatically generated text such as HTML.
" This is not useful if you turn off wrap.
imap <up> <C-O>gk
imap <down> <C-O>gj
nmap <up> gk
nmap <down> gj
vmap <up> gk
vmap <down> gj
" Split window selector and stacker.
" CTRL-J goes down one window and maximizes it; other windows are minimized.
" CTRL-K goes up one window and maximizes it; other windows are minimized.
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
" This allows easy indentation in visual mode.
" This keeps the visual selection active after indenting.
" Normally the visual selection is lost after you indent it.
vmap > >gv
vmap < <gv
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
" This maps \y so that it will yank the visual selection and quote the regex
" metacharacters. For example, use v to select some text; type \y; then type
" CTRL-R" to insert the yanked selection with metacharacters escaped.
vmap <silent> <leader>y y:let @"=substitute(escape(@",'.$*[^\/~'),'\n','\\n','g')<CR>
" spell check
" <F2> or \s
if version >= 700
    nnoremap <silent><F2> <ESC>:set spell!<CR>
    nnoremap <silent><leader>s <ESC>:set spell!<CR>
    "setlocal spell spelllang=en_us
else " older versions use external aspell
    nnoremap <silent><F2> <ESC>:!aspell -c "%"<CR>:edit! "%"<CR>
    nnoremap <silent><leader>s <ESC>:!aspell -c "%"<CR>:edit! "%"<CR>
endif
" refresh - redraw window
" <F5>
nnoremap <silent><F5> :redraw!<CR>

" This runs the current buffer in an X terminal that disappears after 5 minutes.
" This needs the env var $TERM set to xterm or some compatible X11 terminal.
" This does not save first!
" <F7> or \r
function RunBufferInTerm ()
    if &filetype == 'python'
        silent !$TERM -bg black -fg green -e bash -c "python %; sleep 300" &
    elseif &filetype == 'sh'
        silent !$TERM -bg black -fg green -e bash -c "./%; sleep 300" &
    elseif &filetype == 'php'
        silent !$TERM -bg black -fg green -e bash -c "php %; sleep 300" &
    elseif &filetype == 'perl'
        silent !$TERM -bg black -fg green -e bash -c "perl %; sleep 300" &
    endif
    sleep 1
    redraw!
endfunction
nnoremap <silent><F7> :call RunBufferInTerm()<CR>
nnoremap <silent><leader>r :call RunBufferInTerm()<CR>

" map : \a = yank all lines
nnoremap <silent><leader>a gg"+yG

" jump to the last known position in a file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

if filereadable ("~/.vimrc_local")
    source ~/.vimrc_local
endif

"Mapping for 'TagBar' plugin
nmap <F8> :TagbarToggle<CR>

" Automatically add macro-defines in headerfiles.
function! s:insert_gates()
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal! i#ifndef " . gatename
    execute "normal! o#define " . gatename . " "
    execute "normal! Go#endif /* " . gatename . " */"
    normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()

" Autocommands for inserting headers
"" .c files
autocmd bufnewfile *.c so ~/.c_header.txt
autocmd bufnewfile *.c exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.c exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd Bufwritepre,filewritepre *.c exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c execute "normal `a"
"
" .py files
autocmd bufnewfile *.py so ~/.py_header.txt
autocmd bufnewfile *.py exe "1," . 4 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.py exe "1," . 4 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.py execute "normal ma"
autocmd Bufwritepre,filewritepre *.py exe "1," . 7 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.py execute "normal `a"
"
"" .cpp files
autocmd bufnewfile *.cpp so ~/.cpp_header.txt
autocmd bufnewfile *.cpp exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.cpp exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.cpp execute "normal ma"
autocmd Bufwritepre,filewritepre *.cpp exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.cpp execute "normal `a"
"
"" .cc files
autocmd bufnewfile *.cc so ~/.cc_header.txt
autocmd bufnewfile *.cc exe "1," . 6 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.cc exe "1," . 6 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.cc execute "normal ma"
autocmd Bufwritepre,filewritepre *.cc exe "1," . 7 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.cc execute "normal `a"
"
"" .h files
autocmd bufnewfile *.h so ~/.h_header.txt
autocmd bufnewfile *.h exe "1," . 6 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.h exe "1," . 6 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.h execute "normal ma"
autocmd Bufwritepre,filewritepre *.h exe "1," . 7 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.h execute "normal `a"

" Read *.pl as prolog (default: filetype = perl) || Check type by typing: ":set filetype"
autocmd BufNewFile,BufRead ~/*.pl set filetype=prolog

