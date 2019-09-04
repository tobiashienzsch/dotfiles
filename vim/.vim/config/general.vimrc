" Show whitespace
" MUST be inserted BEFORE the colorscheme command
au InsertLeave * match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" GENERAL
syntax enable                   " syntax highlighting
set autoread                    " reload file if changed outside of vim
set hlsearch                    " highlight search results
set number                      " set line number
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set ruler		                    " show the cursor position all the time
set cursorline
set showcmd		                  " display incomplete commands
set nrformats-=octal
set ttimeout
set ttimeoutlen=100

" CLIPBOARD SUPPORT
if system('uname -s') == "Darwin\n"
  "OSX
  set clipboard=unnamed
else
  "Linux
  set clipboard=unnamedplus
endif

" UNDO
set undodir=~/.vim/undodir
set undofile
set undolevels=100
set undoreload=1000

" BACKUP
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" FILE ENCODING
set ffs=unix,dos,mac            " Unix as standard file type
"set termencoding=utf-8          " Always utf8
"set fileencoding=utf-8          " set encoding=utf-8

" SCROLLING
set so=5 " scroll lines above/below cursor
set sidescrolloff=5
set lazyredraw

" TABS
set tabstop=2     " tab spacing
set softtabstop=2 " unify
set expandtab     " use space instead of tab
set smarttab
set shiftwidth=2  " indent/outdent by 4 columns
set autoindent
set smartindent

" IDENTATION (MOVE) visual mode
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" NO BACKUP IF vms PRESENT
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

" ENABLE MOUSE IF PRESENT
if has('mouse')
  set mouse=a
endif

if has("autocmd")
  augroup vimrcEx
    au!
    " For all text files set 'textwidth' to 102 characters.
    autocmd FileType text setlocal textwidth=102
    " Trim whitespace onsave
    autocmd BufWritePre * %s/\s\+$//e
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif
  augroup END
endif " has("autocmd")

" FILE SPECIFIC
autocmd BufNewFile,BufReadPost *.md set filetype=markdown " detect .md as markdown instead of modula-2

