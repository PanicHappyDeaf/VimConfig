set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"git interface
"Plugin 'tpope/vim-fugitive'
""filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' 
"Plugin 'ervandew/supertab'

"html
"  isnowfy only compatible with python not python3
Plugin 'isnowfy/python-vim-instant-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'
"python sytax checker
"Plugin 'nvie/vim-flake8'
"Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
""auto-completion stuff
"Plugin 'klen/python-mode'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'klen/rope-vim'
""Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
""code folding
Plugin 'tmhedberg/SimpylFold'
Plugin 'flazz/vim-colorschemes'

"Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
"
call vundle#end()
"
filetype plugin indent on    " enables filetype detection
let g:SimpylFold_docstring_preview = 1
"
"autocomplete
"let g:ycm_autoclose_preview_window_after_completion=1

"custom keys
let mapleader=" "
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
call togglebg#map("<F5>")
colorscheme molokai 
set guifont=Monaco:h13

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"I don't like swap files
set noswapfile
"
""turn on numbering
set nu

"python with virtualenv support
"py << EOF
"import os.path
"import sys
"import vim
"if 'VIRTUA_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"    sys.path.insert(0, project_base_dir)
"      activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
"        execfile(activate_this, dict(__file__=activate_this))
"        EOF
"
"        "it would be nice to set tag files by the active virtualenv here
"        ":set tags=~/mytags "tags for ctags and taglist
"        "omnicomplete
        autocmd FileType python set omnifunc=pythoncomplete#Complete

"        "------------Start Python PEP 8 stuff----------------
"        " Number of spaces that a pre-existing tab is equal to.
        au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
"
"        "spaces for indents
        au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
        au BufRead,BufNewFile *.py,*.pyw set expandtab
        au BufRead,BufNewFile *.py set softtabstop=4
"
"        " Use the below highlight group when displaying bad whitespace is
"        desired.
        highlight BadWhitespace ctermbg=red guibg=red
"
"        " Display tabs at the beginning of a line in Python mode as bad.
        au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
"        " Make trailing whitespace be flagged as bad.
        au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"
"        " Wrap text after a certain number of characters
        au BufRead,BufNewFile *.py,*.pyw, set textwidth=100
"
"        " Use UNIX (\n) line endings.
        au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
"
"        " Set the default file encoding to UTF-8:
        set encoding=utf-8
"
"        " For full syntax highlighting:
        let python_highlight_all=1
        syntax on
"
"        " Keep indentation level from previous line:
        autocmd FileType python set autoindent
"
"        " make backspaces more powerfull
        set backspace=indent,eol,start
"
"
"        "Folding based on indentation:
        autocmd FileType python set foldmethod=indent
"        "use space to open folds
        nnoremap <space> za 
"        "----------Stop python PEP 8 stuff--------------
"
"        "js stuff"
        autocmd FileType javascript setlocal shiftwidth=2 tabstop=2nocompatible              " required

set splitbelow
set splitright

"spliDTree config
 map <F2> :NERDTreeToggle<CR>
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

"let python_highlight_all = 1  
"syntax on

"filetype plugin on
"let g:pydiction_location = '/home/tony/.vim/bundle/Pydiction/complete-dict'
"let g:pydiction_menu_height = 20

filetype plugin on
let g:SuperTabDefaultCompletionType = "context" 

"let g: jedi#popup_on_dot = 0
