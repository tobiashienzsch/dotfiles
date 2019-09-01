" Download autoload if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $HOME/.vimrc
endif

call plug#begin()

" Make sure to use single quotes
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'                            " STATUS BAR
Plug 'vim-airline/vim-airline-themes'                     " STATUS BAR THEME

Plug 'kien/ctrlp.vim'                                     " FILE FINDER
Plug 'edkolev/tmuxline.vim'                               " TMUX THEME FOLLOWS STATUS BAR
" Plug 'myitcv/govim'                                       " GOLANG
Plug 'tpope/vim-eunuch'                                   " UNIX TOOLS
Plug 'tpope/vim-fugitive'                                 " GIT

call plug#end()

" CTRL-P
set wildmenu " enhanced autocomplete
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*.jpg,*.png,*.svg,*.ttf,*.woff,*.woff3,*.eot,*.pyc
