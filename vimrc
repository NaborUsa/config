syntax on
set tabstop=4
filetype on
set nu
set ruler
set mouse=a
set list

syntax enable
filetype plugin on 
syntax on 
set ruler
set laststatus=2

set number
set relativenumber
echo "hello Vim"
echo "_/\_"

let g:pymode_python = 'python3'

let mapleader = ","
let maplocalleader = "//"


nnoremap <leader>ee :vsplit $MYVIMRC<cr>
nnoremap <leader>vv :vsplit $HOME/cheetCheet/notes_txt/vim_notes.txt<cr>
nnoremap <leader>cc :vsplit $HOME/cheetCheet/cheetCheet.txt<cr>
nnoremap <leader>scpp :vsplit $HOME/cheetCheet/skeletons/c_plus_plus.cpp 
nnoremap <leader>pp :vsplit $HOME/cs/python/python_notes/python_notes.py


inoremap kj <esc>
inoremap <caps> <esc>A

"*****************************"
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
"***************************************
"***************************************"

"Change the word to mayusculas
inoremap <c-u> <esc>bvwUA
" Put comillas to that word
" nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

inoremap jj <esc>A

" With showmatch, when your cursor moves over a parenthesis-like
" character, the matching one will be highlighted as well
set showmatch    " Highlight matching [{()}]

"*****************************************************
" --search--

" What if you only a part of the phrase of don't know
" the exact spelling? Wouldn't it be helpfull if Vim
" could start searching as and when you type the search
" phrase? You can enable this by running:

set incsearch  " search as characters are entered

" You can also tell Vim to ignore the case (whether lower
" or upper case) of the text that you are searching for:


set ignorecase

" Or you can use
set smartcase

set hlsearch   " highlight maches

" Turm off highlight
nnoremap <leader><space> :nohlsearch<CR>


set splitbelow
set splitright

"splip navigation

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" C
nnoremap <F8> :w <CR> :!clear;gcc % -o %< && ./%< <CR>
nnoremap <leader>cc :-1read $HOME/cheetCheet/skeletons/c.c<CR>4jO<tab>
"************************************************************

" C++

set autowrite
nnoremap <C-c> :!g++ -std=c++11 % -Wall -g -o %.out && ./%.out<CR>

" autocmd BufNewFile *.cpp r ~/home/nabor/cheetCheet/skeletons/c_plus_plus.cpp
" autocmd BufNewFile *.cpp 0r ~/home/cheetCheet/skeletons/c-c_plus_plus.cpp
nnoremap <leader>cpp :-1read $HOME/cheetCheet/skeletons/c_plus_plus.cpp<CR>4jO
"**********************************************************

" Python

autocmd FileType python nnoremap <buffer> <F5> :exec'!clear; python'shellescape(@%, 1)<cr>
:iabbrev main # Call the main Function<return>if __name__ == "__main__":<return>main()
inoremap <localleader>i int(input(''))<esc>hhha
inoremap <localleader>f float(input(''))<esc>hhha
inoremap <localleader>; print('')<esc>hha

" Bash
:iabbrev #! #!/bin/bash<return><return>

" " Show whitespace
" " MUST be inserted BEFORE the colorscheme command
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/
"***********************************************************
" Plug In***************************************************
"***********************************************************

call plug#begin()

" Colors
Plug 'sjl/badwolf'
Plug 'paulgeringer/vim-tomorrow-night-theme'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'kiddos/malokai.vim'
Plug 'erichdongubler/vim-sublime-monokai'
Plug 'haishanh/night-owl.vim'


" Plug 'klen/python-mode'
" Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'ervandew/supertab'
"Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'nathanaelkane/vim-indent-guides'   
Plug 'tmhedberg/simpylfold'




"Plug 'itchyny/calendar.vim'
"Plug 'cyrus-and/gdb-dashboard'
" Plug 'vim-scripts/Conque-GDB'
Plug 'francoiscabrol/ranger.vim'

Plug 'mbbill/undotree'
" Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'

""Plug 'valloric/youcompleteme'
"Plug 'vim-scripts/pythoncomplete'

"Plug 'mattn/emmet-vim'


" Future plug ins ?????
"Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'davidhalter/jedi-vim'

"Plug 'terryma/vim-multiple-cursors'
"Plug 'valloric/vim-indent-guides'
"Plug 'tomtom/tcomment_vim
"Plug 'vim-scripts/pythoncomplete'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
"Plug 'fs111/pydoc.vim'
"Plug 'reedes/vim-pencil'
"Plug 'ron89/thesaurus_query.vim'
"Plug 'kien/ctrlp.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'majutsushi/tagbar'
"Plug 'vim-scripts/Conque-GDB'
""Plug 'joonty/vdebug'
"Plug 'dbeniamine/cheat.sh-vim'
call plug#end()


" colorscheme tomorrow-night
colorscheme badwolf


"syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
colorscheme tomorrow-night

nnoremap <F4> :UndotreeToggle<CR>

"*****************************************************************
"*****************************************************************
"*****************************************************************

" Showing line numbers and length
"" set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" " map sort function to a key
" vnoremap <Leader>s :sort<CR>


" " easier moving of code blocks
" " Try to go into visual mode (v), thenselect several lines of code here and
" " then press ``>`` several times.
" vnoremap < <gv  " better indentation
" vnoremap > >gv  " better indentation



" " Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
"*****************************************************************
"*****************************************************************
"*****************************************************************
" Notas:
" To disable Syntastic for the current session, use
" :SyntasticToggleMode.
"
" To able back use
" :SyntasticCheck
"
" To didable Syntastic for a specific language,
" use an empty checker list in your .vimrc.
" For example, to disable HTML checking, use this line:
" let g:syntastic_html_checkers = []
"
" ***************************************************************
" " Better copy & paste
" " When you want to paste large blocks of code into vim, press F2 before you
" " paste. At the bottom you should see ``-- INSERT (paste) --``.

" set pastetoggle=<F2>
" set clipboard=unnamed


" " Mouse and backspace
" set mouse=a  " on OSX press ALT and click
" set bs=2     " make backspace behave like normal again



