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
set shiftwidth=4
set expandtab

