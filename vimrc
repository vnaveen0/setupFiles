set ignorecase
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2
set nu
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
" use intelligent file completion like in the bash
set wildmode=longest:full
set wildmenu

" Next and previous buffer
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Indentation 
set autoindent
set smartindent
set cindent

" """""""""""""""""""""""""""""""""""""""""""""""
" "" Clang format for google style c++ code 

map <C-f> :py3f  /home/vnaveen0/wind_drive/alt_softwares/llvm/clang-format.py<CR>
imap <C-f> <ESC> :py3f /home/vnaveen0/wind_drive/alt_softwares/llvm/clang-format.py<CR>i
"""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""
" YCM SETTINGS 
"""""""""""""""""""""""""""""""""""""""""""""""

"" turn on completion in comments
let g:ycm_complete_in_comments=1
"" load ycm conf by default
let g:ycm_confirm_extra_conf=0
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" only show completion as a list instead of a sub-window
set completeopt-=preview
"" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
"""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_cache_omnifunc=0
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1











" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'

"Tagbar
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'rhysd/vim-clang-format'
"nnoremap <silent> <Leader>b :TagbarToggle<CR>
map <C-t> :TagbarToggle<CR>

Plugin 'commentary.vim'

""""""" SOLARIZED 
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" set background=light
" call togglebg#map("<F5>")

Plugin 'scrooloose/nerdtree'
map <C-r> :NERDTreeToggle<CR>
"map <C-t> :NERDTreeToggle<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

