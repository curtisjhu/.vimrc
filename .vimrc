" GENERATED TANIUS TECHNOLOGY VIMRC
set nocompatible        " beImproved, required
filetype off            " required

" Vundle - set runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
" Plugin - Git
Plugin 'tpope/vim-fugitive'
" Plugin - File Tree Explorer
Plugin 'preservim/nerdtree'
" Plugin - Code Completer Engine
Plugin 'ycm-core/YouCompleteMe', { 'pinned': 1 }
" Plugin - Status Line
Plugin 'vim-airline/vim-airline'
" Plugin - CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()           " End  of plugins list
filetype plugin indent on   " Re-enable filetype detection

" General Vim Settings
set hidden
set ignorecase
set smartcase
set hlsearch
set foldmethod=marker
set nowrap
set textwidth=120
set clipboard=unnamed
set autoindent
set expandtab
set smarttab
set tabstop=4 shiftwidth=4 softtabstop=4
set autoread
set confirm
set bg=dark
set backspace=indent,eol,start
set cursorline
set laststatus=2
set number
set ruler

" Remember cursor position
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("\"") <= line("$") | execute "normal! g`\"" | endif
endif

" YCM Config
let g:ycm_confirm_extra_conf = 0
let g:ycm_extra_conf_globlist = ['~/mimid.production/Tanius.Mimid/*']
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
nnoremap <F12> :YcmCompleter GoToDeclaration<CR>
nnoremap <C-F12> :YcmCompleter GotToDefinition<CR>

" NERDTree Config
nnoremap <leader>n :NERDTreeToggle<CR>

" Airline/StatusLine Config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1

" CtrlP Setup
nnoremap <leader>p :CtrlPBuffer<cr>
