set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/SearchComplete'
Bundle 'kien/ctrlp.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'garbas/vim-snipmate'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "mileszs/ack.vim"
Bundle "Lokaltog/vim-powerline"
Bundle "derekwyatt/vim-scala"
Bundle "gre/play2vim"
Bundle "Lokaltog/vim-easymotion"
Bundle 'editorconfig/editorconfig-vim'

let NERDTreeShowHidden=1
set timeout timeoutlen=1000 ttimeoutlen=100
syntax on                                  " Turn on syntax highlighting
filetype plugin indent on                  " Enable automatic filetype detection, filetype-specific plugins/indentation
set hidden                                 " Allow hiding buffers with unsaved changes
set listchars=trail:.,tab:▸\ ,eol:¬        " Change the invisible characters
set nolist                                 " Hide invisibles by default
set showcmd                                " Show incomplete cmds down the bottom
set showmode                               " Show current mode down the bottom
set history=1000													 " Remember more history for commands and search patterns
set ttyfast                                " More smooth screen redrawing
set incsearch                              " Find the next match as we type the search
set hlsearch                               " Highlight searches by default
set ruler                                  " Show ruler
set number                                 " Show line numbers
set mouse=a                                " Enable the mouse
set linespace=2                            " Spacing between lines
set noswapfile                             " Disable creation of *.swp files
set t_Co=256                               " Support for xterm with 256 colors (gets overriden in .gvimrc)
set title                                  " Show title in terminal vim
set modelines=1                            " Check the first line of files for a modeline (tab vs spaces, etc)
set autoread                               " Automatically reload externally modified files when clean
set autowriteall													 " Automatically write modified files
set spelllang=en_au                        " Set default spelling language to English (Australia)
set antialias
let mapleader = ","
set visualbell                             " Turns off beeping

" Indentation
set shiftwidth=2                           " Number of spaces to use in each autoindent step
set tabstop=2                              " Two tab spaces
set softtabstop=2                          " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab                              " Spaces instead of tabs for better cross-editor compatibility
" set autoindent                             " Keep the indent when creating a new line
set smarttab                               " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set cindent                                " Recommended seting for automatic C-style indentation
" set autoindent                             " Automatic indentation in non-C files
set foldmethod=indent                      " Fold based on source indentation
set foldlevelstart=99											 " Expand all folds by default
"nnoremap <esc> :noh<return><esc>
" Wrap
"set nowrap                                 " I don't always wrap lines...
set linebreak                              " ...but when I do, I wrap whole words.
set wildmenu                               " Make tab completion act more like bash
set wildmode=list:longest                  " Tab complete to longest common string, like bash

" Moving around / editing
"set nostartofline                          " Avoid moving cursor to BOL when jumping around
"set virtualedit=all                        " Let cursor move past the last char
set scrolloff=3                            " Keep 3 context lines above and below the cursor
set backspace=2                            " Allow backspacing over autoindent, EOL, and BOL
set showmatch                              " Briefly jump to a paren once it's balanced
set matchtime=2                            " (for only .2 seconds).

" Searching
set ignorecase                             " Ignore case by default when searching
set smartcase                              " Switch to case sensitive mode if needle contains uppercase characters
:nmap \q :nohlsearch<CR>

" Custom status line
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ \ \ \ \ \ [POS=%2l,%2v][%p%%]\ \ \ \ \ \ [LEN=%L]
set laststatus=2

set background=dark
colorscheme solarized


filetype plugin indent on     " required!

map <leader>t :NERDTreeToggle<cr>
nmap ,n :NERDTreeFind<CR>
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0
:let g:ctrlp_map = '<Leader>p'
:let g:ctrlp_show_hidden = 1
