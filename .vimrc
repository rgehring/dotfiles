set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()                  " Use Vundle to manage plugins

"call pathogen#infect()
"call pathogen#helptags()

" Configure Bundles (plugins)
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'cakebaker/scss-syntax.vim.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'tpope/vim-fugitive.git'

filetype plugin indent on         " load file type plugins + indentation
syntax enable
set encoding=utf-8
set showcmd                       " display incomplete commands

"" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2 shiftwidth=2        " a tab is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ...unless they contain at least on capital letter

"" Display
set number
set ruler
set cursorline
set list                          " reset list characters
set listchars=tab:\ \             " tab should display as  \ \
set listchars+=trail:.            " show trailing whitespace as dots
set listchars+=precedes:<
set listchars+=extends:>

"" Colors
set t_Co=256
colorscheme solarized
set background=dark


"" Text manipulation

"" NERDTree Bindings

"" Tab bindings
nnoremap <F6> :tabnew 
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>
inoremap <C-n> <Esc>

"" Custom
nnoremap e <Down>
nnoremap u <Right>
nnoremap o <Left>
nnoremap . <Up>
nnoremap <C-e> 20<Down>
nnoremap <C-o> ^
nnoremap <C-u> $
nnoremap <C-p> 20<UP>
nmap <silent> <C-k> :NERDTreeToggle<CR>



"" Custom Bindings


"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"" Added for Powerline
set laststatus=2                  " always show the statusline
