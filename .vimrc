filetype plugin indent on

set encoding=utf8
set nocompatible
set nowrap
set number

syntax enable

set cursorline

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/pluged')

Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'vim-airline/vim-airline'
Plug 'romainl/flattened'
Plug 'scrooloose/nerdtree'

call plug#end()

colorscheme sublimemonokai

"beautifull airline"
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols = 'unicode'
let g:airline#extensions#xkblayout#enabled = 0

autocmd VimEnter * NERDTree

map <C-n> :NERDTreeToggle<CR>
