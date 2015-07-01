set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" -------------------------------------------------------------------

" Configure all plugins here

" The solarized color scheme
Plugin 'altercation/vim-colors-solarized.git'

" The monokai color scheme
Plugin 'sickill/vim-monokai.git'

" The jellybeans color scheme
Plugin 'nanotech/jellybeans.vim'

" The Ctrl-P plugin
Plugin 'kien/ctrlp.vim'

" The NerdTree plugin
Plugin 'scrooloose/nerdtree'

" The Syntastic plugin
Plugin 'scrooloose/syntastic'

" The Rust language plugin
Plugin 'rust-lang/rust.vim'

" -------------------------------------------------------------------

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
" -------------------------------------------------------------------


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -------------------------------------------------------------------

" Enable syntax highlighting
syntax on 

" Configure solarized color scheme
set background=dark
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_termcolors=16
colorscheme solarized

" Default file encoding
set encoding=utf-8
set fileencoding=utf-8

" Show line numbers
set number

" Configure tabstop behaviour
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

" Configure Ctrl-P plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Configure NerdTree plugin
" Open NerdTree automatically when Vim starts and no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Map NerdTree open command
map <C-n> :NERDTreeToggle<CR>
" Be able to close Vim if the only open window is a NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Configure Syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

