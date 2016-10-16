"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                preamble                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

" Needed for vundle, will be turned on after vundle inits
filetype off

" Setup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Vundle configuration                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" These need to come before the configuration options for the plugins since
" vundle will add the plugin folders to the runtimepath only after it has seen
" the plugin's Plugin command.


Plugin 'FSwitch'
" Plugin 'FuzzyFinder'
Plugin 'JesseKPhillips/d.vim'
Plugin 'L9'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'Rename'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugin 'Valloric/ListToggle'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/Vim-Jinja2-Syntax'
Plugin 'Valloric/python-indent'
Plugin 'Valloric/vim-operator-highlight'
Plugin 'Valloric/vim-valloric-colorscheme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/xmledit'
" Plugin 'YankRing.vim'
" Seems more active than tpope/vim-surround
Plugin 'anyakichi/vim-surround'
Plugin 'bufkill.vim'
Plugin 'cespare/vim-toml'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'gmarik/vundle'
Plugin 'Vundle.vim'
Plugin 'godlygeek/tabular'
" For markdown preview; call :Preview to open rendered in browser
Plugin 'greyblake/vim-preview'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'helino/vim-json'
" Plugin 'majutsushi/tagbar'
Plugin 'matchit.zip'
Plugin 'mattn/emmet-vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'mileszs/ack.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'othree/eregex.vim'
Plugin 'othree/html5.vim'
Plugin 'python.vim'
Plugin 'python_match.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'
" Plugin 'sjl/gundo.vim'
" Problems with fugitive, re-evalute when upstream fixes the issue
" Plugin 'sjl/splice.vim'
Plugin 'skammer/vim-css-color'
" Requires extra binaries; see docs
Plugin 'suan/vim-instant-markdown'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat' "allow plugins to utilize . command
Plugin 'tpope/vim-rails'
" requires compilation
" Plugin 'wincent/Command-T'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-pyref'
Plugin 'xolox/vim-session'
Plugin 'vim-latex/vim-latex'


Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <silent> <C-b> :NERDTreeToggle<cr>
Plugin 'mtahmed/click.vim' "Highlighting for click
Plugin 'jiangmiao/auto-pairs' "MANY features, but mostly closes ([{' etc
Plugin 'vim-scripts/HTML-AutoCloseTag' "close tags after >
Plugin 'vim-scripts/tComment' "Comment easily with gcc
Plugin 'ervandew/supertab'  "supertab makes YCM compatible with ultisnips
" Plugin 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
"
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" let g:ycm_confirm_extra_conf = 0
"
" " make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-n>"
let g:UltiSnipsJumpBackwardTrigger = "<C-p>"

Plugin 'ggreer/the_silver_searcher'
Plugin 'rhysd/vim-clang-format'
Plugin 'Chiel92/vim-autoformat'
" let g:formatdef_brunodd_cpp_format = '"clang-formatter --style=google"'
" let g:formatters_cpp = ['brunodd_cpp_format']
" let verbose=1

" map <C-I> :pyf /usr/local/Cellar/clang-format/2016-01-05/share/clang/clang-format.py<CR>


call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           reset vimrc augroup                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" We reset the vimrc augroup. Autocommands are added to this group throughout
" the file
augroup vimrc
  autocmd!
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        turn on filetype plugins                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable detection, plugins and indenting in one step
" This needs to come AFTER the Plugin commands!
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            General settings                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISPLAY SETTINGS
" colorscheme valloric    " sets the colorscheme
colorscheme solarized   " sets the colorscheme
set t_Co=256
let g:solarized_termcolors=256
set background=dark     " enable for dark terminals
set scrolloff=2         " 2 lines above/below cursor when scrolling
set showmatch           " show matching bracket (briefly jump)
set matchtime=2         " reduces matching paren blink time from the 5[00]ms def
set showmode            " show mode in status bar (insert/replace/...)
set showcmd             " show typed command in status bar
set ruler               " show cursor position in status bar
set number
set relativenumber
set title               " show file in titlebar
set undofile            " stores undo state even when files are closed (in undodir)
set undodir=~/tmp,/var/tmp,/tmp,$TEMP
set cursorline          " highlights the current line
" When you type the first tab, it will complete as much as possible, the second
" tab hit will provide a list, the third and subsequent tabs will cycle through
" completion options so you can complete the file without further keys
set wildmode=longest,list,full
set wildmenu            " completion with menu
" This changes the default display of tab and CR chars in list mode
set listchars=tab:▸\ ,eol:¬

" The "longest" option makes completion insert the longest prefix of all
" the possible matches; see :h completeopt
set completeopt=menu,menuone,longest
set switchbuf=useopen,usetab

" EDITOR SETTINGS
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
" this can cause problems with other filetypes
" see comment on this SO question http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim/234578#234578
"set smartindent         " smart auto indenting
set autoindent          " on new lines, match indent of previous line
set copyindent          " copy the previous indentation on autoindenting
set cindent             " smart indenting for c-like code
set cino=b1,g0,N-s,t0,(0,W4  " see :h cinoptions-values
set smarttab            " smart tab handling for indenting
set magic               " change the way backslashes are used in search patterns
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set nobackup            " no backup~ files.
 set noswapfile         " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

set tabstop=4           " number of spaces a tab counts for
set shiftwidth=4        " spaces for autoindents
set softtabstop=4
set shiftround          " makes indenting a multiple of shiftwidth
set expandtab           " turn a tab into spaces
set laststatus=2        " the statusline is now always shown
set noshowmode          " don't show the mode ("-- INSERT --") at the bottom

set hidden              " allows making buffers hidden even with unsaved changes
set history=1000        " remember more commands and search history
set undolevels=1000     " use many levels of undo
set autoread            " auto read when a file is changed from the outside
set mouse=a             " enables the mouse in all modes
set foldlevelstart=99   " all folds open by default

" toggles vim's paste mode; when we want to paste something into vim from a
" different application, turning on paste mode prevents the insertion of extra
" whitespace
set pastetoggle=<F7>

" Right-click on selection should bring up a menu
set mousemodel=popup_setpos

" With this, the gui (gvim and macvim) now doesn't have the toolbar, the left
" and right scrollbars and the menu.
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=M

" this makes sure that shell scripts are highlighted
" as bash scripts and not sh scripts
let g:is_posix = 1

" tries to avoid those annoying "hit enter to continue" messages
" if it still doesn't help with certain commands, add a second <cr>
" at the end of the map command
set shortmess=a

" turns off all error bells, visual or otherwise
set noerrorbells visualbell t_vb=
autocmd vimrc GUIEnter * set visualbell t_vb=

" Switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || has("gui_running")
  syntax on
endif

" none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#

" Number of screen lines to use for the command-line
set cmdheight=2

" allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,h,l
set hlsearch          " do not highlight searched-for phrases
set incsearch           " ...but do highlight-as-I-type the search string
set gdefault            " this makes search/replace global by default

" enforces a specified line-length and auto inserts hard line breaks when we
" reach the limit; in Normal mode, you can reformat the current paragraph with
" gqap.
set textwidth=80

" this makes the color after the textwidth column highlighted
set colorcolumn=+1

if v:version >= 704
  " The new Vim regex engine is currently slooooow as hell which makes syntax
  " highlighting slow, which introduces typing latency.
  " Consider removing this in the future when the new regex engine becomes
  " faster.
  set regexpengine=1
endif

" In UltiSnips snippet files, we want actual tabs instead of spaces for indents.
" US will use those tabs and convert them to spaces if expandtab is set when the
" user wants to insert the snippet.
autocmd vimrc FileType snippets set noexpandtab
autocmd BufRead,BufNewFile *.cpp set filetype=cpp
autocmd BufRead,BufNewFile *.h set filetype=cpp

" The stupid python filetype plugin overrides our settings!
autocmd vimrc FileType python
      \ set tabstop=2 |
      \ set shiftwidth=2 |
      \ set softtabstop=2

" The stupid rust filetype plugin overrides our settings!
autocmd vimrc FileType rust
      \ set tabstop=2 |
      \ set shiftwidth=2 |
      \ set softtabstop=2 |
      \ set textwidth=80

" Sets a font for the GUI
if has("gui_gtk2")
  set guifont=Consolas\ For\ Powerline\ 11
elseif has("gui_macvim")
  " My Mac has a fairly high DPI so the font needs to be bigger
  set guifont=Source\ Code\ Pro:h13
elseif has("gui_win32")
  set guifont=Consolas\ For\ Powerline:h11
end

" Highlight Class and Function names
function! s:HighlightFunctionsAndClasses()
  syn match cCustomFunc      "\w\+\s*\((\)\@="
  syn match cCustomClass     "\w\+\s*\(::\)\@="

  hi def link cCustomFunc      Function
  hi def link cCustomClass     Function
endfunction

" Highlight Class and Function names, D specific
function! s:HighlightDFunctionsAndClasses()
  syn match cCustomDFunc     "\w\+\s*\(!.\{-}(\)\@="
  syn match cCustomDFuncUFCS ".\w\+\s*\(!.\{-}\)\@="

  hi def link cCustomDFunc     Function
  hi def link cCustomDFuncUFCS Function
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            custom mappings                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" our <leader> will be the space key
let mapleader=" "

  " this makes vim's regex engine "not stupid"
  " see :h magic
  nnoremap / /\v
  vnoremap / /\v

" This makes j and k work on "screen lines" instead of on "file lines"; now, when
" we have a long line that wraps to multiple screen lines, j and k behave as we
" expect them to.
nnoremap j gj
nnoremap k gk

" key bindings for quickly moving between windows
" h left, l right, k up, j down
noremap <leader>h <c-w>h
noremap <leader>l <c-w>l
noremap <leader>k <c-w>k
noremap <leader>j <c-w>j

" Using '<' and '>' in visual mode to shift code by a tab-width left/right by
" default exits visual mode. With this mapping we remain in visual mode after
" such an operation.
vnoremap < <gv
vnoremap > >gv

" Easily redo something.
nnoremap r :redo<CR>

" Clear search highlists by pressing ENTER
nnoremap <CR> :noh<CR>

" Remove whitespace on this line.
nnoremap :cw<CR> :s/  //<CR>

" Define latex file as tex-type
au BufRead,BufNewFile *.tex set filetype=tex
autocmd FileType tex let b:did_indent = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       ***  HERE BE PLUGINS  ***                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 ctrlp                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Use Vim's cwd
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30'

" " Faster indexing of files; requires having ag (AKA the_silver_searcher)
" " installed.
" let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
"       \ --ignore .git
"       \ --ignore .svn
"       \ --ignore .hg
"       \ --ignore .DS_Store
"       \ --ignore "**/*.pyc"
"       \ -g ""'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                session                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" you also need to run :SaveSession once to create the default.vim session that
" will then be autoloaded/saved from then on

let g:session_autoload        = 'no'
let g:session_autosave        = 'yes'
let g:session_default_to_last = 'yes'
let g:session_directory       = '~/tmp/vim/sessions'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                tabular                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" looks at the current line and the lines above and below it and aligns all the
" equals signs; useful for when we have several lines of declarations
nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>a/ :Tabularize /\/\//l2c1l0<CR>
vnoremap <Leader>a/ :Tabularize /\/\//l2c1l0<CR>
nnoremap <Leader>a, :Tabularize /,/l0r1<CR>
vnoremap <Leader>a, :Tabularize /,/l0r1<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              vim-preview                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" This forces vim-preview to use the default browser on linux; it already uses
" 'open' on Mac.
if has("unix")
  let g:PreviewBrowsers = "xdg-open"
endif

let g:PreviewMarkdownFences = 1

" Use :Preview command to open in browser!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                ack.vim                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if executable('ag')
  let g:ackprg = "ag --nocolor --nogroup --column"
elseif executable('ack-grep')
  let g:ackprg = "ack-grep --nocolor --nogroup --column"
elseif executable('ack')
  let g:ackprg = "ack --nocolor --nogroup --column"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                fswitch                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" A "companion" file is a .cpp file to an .h file and vice versa

" Opens the companion file in the current window
nnoremap <Leader>sh :FSHere<cr>

" Opens the companion file in the window to the left (window needs to exist)
" This is actually a duplicate of the :FSLeft command which for some reason
" doesn't work.
nnoremap <Leader>sl :call FSwitch('%', 'wincmd l')<cr>

" Same as above, only opens it in window to the right
nnoremap <Leader>sr :call FSwitch('%', 'wincmd r')<cr>

" Creates a new window on the left and opens the companion file in it
nnoremap <Leader>sv :FSSplitLeft<cr>

" " This handles c++ files with the ".cc" extension.
" augroup googleccfiles
"   au!
"   au BufEnter *.cc let b:fswitchdst  = 'h,hxx'
"   au BufEnter *.cc let b:fswitchlocs = './,reg:/src/include/,reg:|src|include/**|,../include'
"
"   if !at_google
"     au BufEnter *.h  let b:fswitchdst  = 'cpp,cc,c'
"   else
"     au BufEnter *.h  let b:fswitchdst  = 'cc,cpp,c'
"   endif
"   au BufEnter *.h  let b:fswitchlocs = './,reg:/include/src/,reg:/include.*/src/,../src'
" augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                vim-git                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on spell checking by default for git commit messages
au vimrc FileType gitcommit setlocal spell! spelllang=en_us

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               delimitMate                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au vimrc FileType html,xhtml,markdown let b:delimitMate_matchpairs = "(:),[:],{:}"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              vim-css-color                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:cssColorVimDoNotMessMyUpdatetime = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                vim-notes                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:notes_directories = ['~/notes']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                syntastic                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--select=F,C9 --max-complexity=10'

let g:syntastic_mode_map = {
       \ "mode": "active",
       \ "active_filetypes": [],
       \ "passive_filetypes": ["dart", "html"] }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              YouCompleteMe                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ycm_autoclose_preview_window_after_completion = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Airline                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            vim-indent-guides                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 7

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             MatchTagAlways                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:mta_use_matchparen_group = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 eregex                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:eregex_default_enable = 0

" Toggles '/' to mean eregex search or normal Vim search
nnoremap <leader>/ :call eregex#toggle()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          vim-instant-markdown                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:instant_markdown_autostart = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         vim-operator-highlight                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ophigh_filetypes_to_ignore = { "spansdl": 1 }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
