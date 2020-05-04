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
Plug 'edkolev/tmuxline.vim'                               " TMUX THEME FOLLOWS STATUS BAR

Plug 'scrooloose/nerdtree'                                " FILE BROWSER
Plug 'Xuyuanp/nerdtree-git-plugin'                        " FILE BROWSER GIT

call plug#end()

" NERDTREE
" OPEN WITH CTRL-P
map <C-p> :NERDTreeToggle<CR>
" CLOSE VIM IF ONLY NERDTREE IS LEFT OPEN
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
