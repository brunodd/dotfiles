" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Plugins {{{
" Plugins using Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Latex support
Plugin 'lervag/vimtex'

" Snippets
Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete'
Plugin 'davidhalter/jedi-vim'
Plugin 'SirVer/ultisnips'

" Filestructure tree
Plugin 'scrooloose/nerdtree'
" NERDTree settings
  nmap <C-b> :NERDTreeToggle<Cr>

" Easy comments
Plugin 'tComment'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" " Fix python folds
" Plugin 'tmhedberg/SimpylFold'
" Fix python autoindents
Plugin 'vim-scripts/indentpython.vim'
" Syntax checker
Plugin 'scrooloose/syntastic'
" Check PEP-8
Plugin 'nvie/vim-flake8'

" Ctrl-P plugin
Plugin 'kien/ctrlp.vim'

" Add useful statusbar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()

" }}}

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" " Pick a leader key
let mapleader = ","


" set foldmethod=marker
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set smarttab
set autoindent                              " indent when moving to the next line while writing code
set smartindent
set modelines=1

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Easily redo something.
nnoremap r :redo<CR>

" Clear search highlists by pressing ENTER
nnoremap <CR> :noh<CR>

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" This allows easy indentation in visual mode.
vmap > >gv
vmap < <gv

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme badwolf
set termguicolors
" colorscheme solarized

" Font
" Sets a font for the GUI
set guifont=Lucida_Console:h14
set linespace=12

" Filetype specifics
autocmd BufNewFile,BufRead *.php set ft=html | set ft=php | set tw=0
autocmd BufNewFile,BufRead *.tex set ft=latex

autocmd Filetype python
    \ set tabstop=8 |
    \ set softtabstop=8 |
    \ set shiftwidth=8 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Auto recognize *.tex files as latex
let g:tex_flavor = "latex"

" Collect swapfiles in single location
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Handy command completion
set wildmode=longest,list,full
set wildmenu





" Remappings {{{

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" }}}

" PluginSettings {{{

" JediVim {{{

autocmd FileType python setlocal completeopt-=preview
" }}}

" UltiSnips {{{

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
" }}}
" SuperTab {{{

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
" }}}
" NeoComplete {{{

" Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" }}}
" }}}
" Commented {{{
" " Make python code prettier
" let python_highlight_all=1
" }}}

" vim:foldmethod=marker:foldlevel=0
