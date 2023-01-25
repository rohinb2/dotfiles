set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kien/ctrlp.vim'
" Plugin 'zxqfl/tabnine-vim'

" Color theme plugins 
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
" Plugin 'ayu-theme/ayu-vim'
" Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Don't try to be vi compatible
set nocompatible
set wrap

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" turn relative line numbers on
" :set relativenumber
" :set rnu

" For plugins to load correctly
filetype plugin indent on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Leader key for batch commenting on nerdcommenter. .cc will now comment
" a block. .c/ will toggle 
let mapleader = "."
" Security
set modelines=0

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
set tabstop=4
set shiftwidth=2
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Have jk map to escape for quick exiting 
inoremap jk <Esc>

" Move up/down editor lines

" Custom c++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

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
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <CR> G
" :map <S-F8> :noremap j j <CR>
" :map <S-F8> :noremap k k <CR>
set splitbelow
set splitright
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
" Remap help key.
" "inoremap <F1> <ESC>:set invfullscreen<CR>a
" "nnoremap <F1> :set invfullscreen<CR>
" "vnoremap <F1> :set invfullscreen<CR>

" Ctrl P stuff
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Textmate holdouts

" Formatting
map <leader>q gqip
if (has("termguicolors"))
 set termguicolors
endif

" Autocompleting for braces
:inoremap { {}<Esc>i
":inoremap [ []<Esc>i
":inoremap ( ()<Esc>i
":inoremap " ""<Esc>i

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL
syntax on
set t_Co=256
set cursorline

" colorscheme Civic
"colorscheme Tomorrow-Night-Eighties
colorscheme palenight
" colorscheme gruvbox
set bg=dark
" colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" colorscheme solarized
