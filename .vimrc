"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                preamble                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" {{{
set nocompatible

" Needed for vundle, will be turned on after vundle inits
filetype off

" Setup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Vundle configuration                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" {{{
" These need to come before the configuration options for the plugins since
" vundle will add the plugin folders to the runtimepath only after it has seen
" the plugin's Plugin command.

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-endwise'
" Much potential: to be studied
Plugin 'anyakichi/vim-surround'
" Auto close parenthesis,brackers,...
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

" SNIPPETS {{{
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-n>"
let g:UltiSnipsJumpBackwardTrigger = "<C-p>"
" }}}

Plugin 'scrooloose/nerdtree'
" NERDTree settings {{{
  nmap <C-b> :NERDTreeToggle<Cr>
" }}}

Plugin 'gerw/vim-latex-suite'
" Much potential: to be studied
Plugin 'godlygeek/tabular'
" Tabular settings {{{
  " looks at the current line and the lines above and below it and aligns all the
  " equals signs; useful for when we have several lines of declarations
  nnoremap <Leader>a= :Tabularize /=<CR>
  vnoremap <Leader>a= :Tabularize /=<CR>
  nnoremap <Leader>a/ :Tabularize /\/\//l2c1l0<CR>
  vnoremap <Leader>a/ :Tabularize /\/\//l2c1l0<CR>
  nnoremap <Leader>a, :Tabularize /,/l0r1<CR>
  vnoremap <Leader>a, :Tabularize /,/l0r1<CR>
" }}}


Plugin 'plasticboy/vim-markdown'
" vim-markdown settings {{{
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math=1
" }}}
Plugin 'ctrlpvim/ctrlp.vim'
" CtrlP settings {{{
let g:ctrlp_show_hidden = 1
map <D-p> :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>
" }}}
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline'
" Airline settings {{{
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'tomorrow'
" }}}
Plugin 'tComment'
" Much potential: to be studied
Plugin 'EasyMotion'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'a.vim' " (handled by 'FSwitch')
Plugin 'FSwitch'
" FSwitch settings {{{
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
" }}}
Plugin 'php.vim'
Plugin 'Valloric/MatchTagAlways'
" MatchTagAlways settings {{{
  let g:mta_use_matchparen_group = 0
" }}}
Plugin 'Valloric/python-indent'
Plugin 'greyblake/vim-preview'
" vim-preview settings {{{
  " This forces vim-preview to use the default browser on linux; it already uses
  " 'open' on Mac.
  if has("unix")
    let g:PreviewBrowsers = "xdg-open"
  endif

  let g:PreviewMarkdownFences = 1

  " Use :Preview command to open in browser!
" }}}
Plugin 'helino/vim-json'
" much potential, to be studied
Plugin 'matchit.zip'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'othree/html5.vim'
" Caught by 'matchit' plugin?
" Plugin 'python_match.vim'
Plugin 'scrooloose/syntastic'
" syntastic settings {{{
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_warning_symbol = '⚠'
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_python_checkers = ['flake8']
  let g:syntastic_python_flake8_args = '--select=F,C9 --max-complexity=10'

  let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": [],
        \ "passive_filetypes": ["dart", "html"] }
" }}}

" much potential, to be studied
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
" vim-notes settings {{{
  let g:notes_directories = ['~/notes']
" }}}
Plugin 'rhysd/vim-clang-format'
Plugin 'Chiel92/vim-autoformat'
" }}}
call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           reset vimrc augroup                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" {{{

" We reset the vimrc augroup. Autocommands are added to this group throughout
" the file
augroup vimrc
  autocmd!
augroup END
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        turn on filetype plugins                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" {{{

" Enable detection, plugins and indenting in one step
" This needs to come AFTER the Plugin commands!
filetype plugin indent on
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            General settings                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" {{{
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

set tabstop=2           " number of spaces a tab counts for
set shiftwidth=2        " spaces for autoindents
set softtabstop=2
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
" }}}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            custom mappings                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" {{{
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
" }}}
