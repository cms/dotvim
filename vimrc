" vim: ts=4 sw=4 sts=0

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible
set nobackup nowritebackup
set hidden
set autowrite
set wildmenu wildmode=longest:full,full
set background=dark

let mapleader = ","
let g:mapleader = ","

if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
else
    set term=$TERM
endif

syntax on

set viewoptions=folds,options,cursor,unix,slash
set virtualedit=block
set history=1000
"set spell

" User Interface
set tabpagemax=15
set showmode
set ttyfast

if has('gui_running')
    set guifont=Monaco:h15
    set guioptions-=T
    set lines=40
endif

if has('cmdline_info')
    set ruler
    "set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    set showcmd
endif

if has('statusline')
    set laststatus=1
    "set statusline=%<%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P
endif

if has('mouse')
    set mouse=a
endif

colorscheme inkpot
set cursorline

set number
set backspace=indent,eol,start
set list
set listchars=tab:.>,trail:.,extends:#,nbsp:.

" Formatting
let g:SimpleJsIndenter_BriefMode = 1
set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

" Search and Replace
set ic
set smartcase
set gdefault

if has('extra_search')
    set hlsearch
    set incsearch
endif

" Filetype
if has('autocmd')
    filetype on
    filetype plugin indent on
    autocmd FileType c,cpp,java,perl,slang set noexpandtab shiftwidth=8 tabstop=8
    autocmd FileType javascript set shiftwidth=2 tabstop=2
    autocmd FileType html,xhtml set expandtab shiftwidth=4 tabstop=4
    autocmd FileType php set expandtab shiftwidth=4 tabstop=4

    autocmd FileType c      if has('eval') || has('insert_expand') | set omnifunc=ccomplete#Complete | endif
    autocmd FileType javascript if has('eval') || has('insert_expand') | set omnifunc=javascriptcomplete#CompleteJS | endif
    autocmd FileType php    if has('eval') || has('insert_expand') | set omnifunc=phpcomplete#CompletePHP | endif
    autocmd FileType python if has('eval') || has('insert_expand') | set omnifunc=pythoncomplete#Complete | endif
    autocmd FileType ruby   if has('eval') || has('insert_expand') | set omnifunc=rubycomplete#Complete | endif
    autocmd FileType sql    if has('eval') || has('insert_expand') | set omnifunc=sqlcomplete#Complete | endif
    autocmd FileType xml    if has('eval') || has('insert_expand') | set omnifunc=xmlcomplete#CompleteTags | endif
    autocmd Filetype css if has('smartindent') | set smartindent | endif
    autocmd FileType css if has('eval') || has('insert_expand') | set omnifunc=csscomplete#CompleteCSS | endif
    autocmd FileType html,xhtml if has('eval') || has('insert_expand') | set omnifunc=htmlcomplete#CompleteTags | endif
    autocmd FileType css,html,xhtml set noexpandtab shiftwidth=2 tabstop=2
endif


" Key mappings
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <Leader>t :TagbarToggle<CR>
map <Leader>f :NERDTreeToggle<CR>
map <Leader>n :nohl<CR>
