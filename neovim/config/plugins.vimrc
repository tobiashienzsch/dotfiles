" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
""" COLORS
Plug 'mhartington/oceanic-next'

""" GENERAL
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'                                     " FILE FINDER
Plug 'vim-airline/vim-airline'                            " STATUS BAR
Plug 'vim-airline/vim-airline-themes'                     " STATUS BAR THEME
Plug 'edkolev/tmuxline.vim'                               " TMUX THEME FOLLOWS STATUS BAR

" FROM TIM POPE
Plug 'tpope/vim-eunuch'                                   " UNIX TOOLS
Plug 'tpope/vim-fugitive'                                 " GIT

" Initialize plugin system
call plug#end()

" PLUGIN SETTINGS
" CTRL-P
set wildmenu " enhanced autocomplete
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*.jpg,*.png,*.svg,*.ttf,*.woff,*.woff3,*.eot,*.pyc

