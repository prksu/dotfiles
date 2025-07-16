" vim: set foldmethod=marker foldlevel=0 nomodeline:
" ============================================================================
" .vimrc Ahmad Nurus S.
" ============================================================================

" Vim 8 defaults
unlet! skip_defaults_vim
silent! source $VIMRUNTIME/defaults.vim

" ============================================================================
" PACKAGES
" ============================================================================
packadd! onedark.vim            " 'joshdick/onedark.vim'

" ============================================================================
" BASIC CONFIGURATIONS
" ============================================================================
filetype off                    " Reset filetype detection first ...
filetype plugin indent on       " ... and enable filetype detection
syntax on
colorscheme onedark
set background=dark             " Set background dark
set encoding=utf-8              " Set default encoding to UTF-8
set ttyfast                     " Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             " Indicate terminal type for mouse codes
set ttyscroll=3                 " Speedup scrolling
set autoread                    " Automatically read changed files
set autoindent                  " Enabile Autoindent
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case
set completeopt=longest,menuone
set pumheight=10                " Completion window max size
set lazyredraw                  " Wait to redraw
set tabstop=2                   " Set default tab 2
set shiftwidth=2                " ...
set expandtab smarttab
if (has("termguicolors"))
  set termguicolors
endif
if has("clipboard")
  set clipboard=unnamed         " copy to the system clipboard
  if has("unnamedplus")         " X11 support
    set clipboard+=unnamedplus
  endif
endif
if has('persistent_undo')
  set undofile
  set undodir=~/.cache/vim/undo//
endif
