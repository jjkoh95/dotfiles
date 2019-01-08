set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8

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
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'Valloric/YouCompleteMe'	

" Golang Support?
" Plugin 'fatih/vim-go'
" Plugin 'mdempsky/gocode', {'rtp': 'vim/'}

" TypeScript Support?
Plugin 'leafgarland/typescript-vim'

" Vue support
Plugin 'posva/vim-vue'

" Asynchronous Lint Engine - Keep the standard - required by StandardJS
" Plugin 'w0rp/ale'

" Solarized
" Plugin 'altercation/vim-colors-solarized'

" gruvbox
Plugin 'morhetz/gruvbox'

" vim statusline
Plugin 'vim-airline/vim-airline'

" vim-javascript
Plugin 'pangloss/vim-javascript'


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
syntax on

set number
set cursorline
set ruler
set ignorecase
set smartcase
set tabstop=2
set shiftwidth=2 
set autoindent
set copyindent
set smarttab
set expandtab


" copy to clipboard
set clipboard=unnamed

" backup off
set nobackup
set nowb
set noswapfile

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


" let g:ale_linters = {
" \   'javascript': ['standard'],
" \}
" let g:ale_fixers = {'javascript': ['standard']}
" 
" let g:ale_lint_on_save = 1
" let g:ale_fix_on_save = 1


set splitbelow " i need this for :term

" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Vim slows down when using this plugin How can I fix that?
let g:vue_disable_pre_processors=1

" Highlight search results
set hlsearch

" No annoying sound on errors
set noerrorbells

" try
"     colorscheme desert
" catch
" endtry
"
" syntax enable
" set background=dark
" colorscheme solarized
set background=dark
colorscheme gruvbox

" airline extensions - top bar
let g:airline#extensions#tabline#enabled = 1

" vim highlighting
au BufRead,BufNewFile *.vue set ft=html

" highlight keywords
" syn match   myTodo   contained   "\<\(TODO\|FIXME\):"
" hi def link myTodo Todo

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

