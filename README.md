# dotvim

Setup (ssh/writeable):

    git clone --recursive git@github.com:mlippautz/dotvim.git .vim
    ln -s .vim/vimrc .vimrc
    cd .vim/bunle/YouCompleteMe
    ./install.py --clang-completer

Update (from within .vim):
    git pull && git submodule update --init --recursive
    cd bundle/YouCompleteMe
    ./install.py --clang-completer
