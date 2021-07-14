#! /bin/sh
#
# vim_setup.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

. ~/paths.sh
mkdir -p ~/.vim

install_vim(){
    cd $WORKSPACE
    git clone https://github.com/vim/vim.git
    cd vim/src
    make
}

# alernatives
install_upgrade_vim_from_ppa(){
    sudo add-apt-repository ppa:jonathonf/vim
    sudo apt update
    sudo apt install vim
}


setupVundle(){
    ## vundle
    #--------
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    
    # NOTE: setup ycm after python setup
    vim +PluginInstall
    
    # TODO - migrate from vundle to vim-plug
    # https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
    
    sudo apt install cmake build-essential python3-dev -y
    # NOTE: install go before this
    vim +GoInstallBinaries
    sudo apt install nodejs npm -y
    # sudo apt install rustc cargo
    python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer --go-completer  --java-completer --ts-completer # --rust-completer
}

setupVimInstantMarkdown(){
    ## suan/vim-instant-markdown
    # ---------------------------
    sudo apt install npm xdg-utils curl nodejs -y
    sudo npm -g install instant-markdown-d
    git clone https://github.com/suan/vim-instant-markdown.git ~/.vim/vim-instant-markdown
    mv ~/.vim/vim-instant-markdown/after ~/.vim/after
}

setupEclim(){
    # setup eclim - http://eclim.org/install.html#installer
    ## prerequisites 
    #- Java Development Kit 1.8 or greater
    #- Vim 7.1 or greater
    #- Eclipse 4.8.x (Photon)
    #- python (2.7 or 3.x)
    #- make
    #- gcc
    
    mkdir -p ~/.temp
    cd ~/.temp
    
    ## install eclipse photon
    wget http://eclipse.stu.edu.tw/technology/epp/downloads/release/photon/R/eclipse-java-photon-R-linux-gtk-x86_64.tar.gz -O eclipse-java-photon-linux-64.tar.gz
    
    sudo tar -xvzf eclipse-java-photon-linux-64.tar.gz -C /opt
    
    ## install eclim
    wget https://github.com/ervandew/eclim/releases/download/2.8.0/eclim_2.8.0.bin
    chmod +x eclim_2.8.0.bin
    ./eclim_2.8.0.bin \
      --yes \
      --eclipse=/opt/eclipse \
      --vimfiles=$HOME/.vim \
      --plugins=jdt
    
    ### NOTE - to manually start eclim server
    #$ECLIPSE_HOME/eclimd
}

setupCOC(){
    set -o nounset    # error when referencing undefined variable
    set -o errexit    # exit when command fails
    
    # Install latest nodejs
    if [ ! -x "$(command -v node)" ]; then
        curl --fail -LSs https://install-node.now.sh/latest | sh
        export PATH="/usr/local/bin/:$PATH"
        # Or use apt-get
        # sudo apt-get install nodejs
    fi
    
    # Use package feature to install coc.nvim
    
    # for vim8
    mkdir -p ~/.vim/pack/coc/start
    cd ~/.vim/pack/coc/start
    curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz | tar xzfv -
    # for neovim
    # mkdir -p ~/.local/share/nvim/site/pack/coc/start
    # cd ~/.local/share/nvim/site/pack/coc/start
    # curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz | tar xzfv -
    
    # Install extensions
    mkdir -p ~/.config/coc/extensions
    cd ~/.config/coc/extensions
    if [ ! -f package.json ]
    then
      echo '{"dependencies":{}}'> package.json
    fi
    # Change extension names to the extensions you need
    npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
    npm install coc-prettier --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
    # npm install coc-go --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod  # use fatih/vim-go
    npm install coc-python --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
    npm install coc-java --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
    npm install coc-json --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
    npm install coc-tsserver --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
    # npm install coc-tabnine --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod  # use Plug 'codota/tabnine-vim'
    npm install coc-git --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
    npm install coc-vimlsp --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
}

setup(){
    install_vim &&
    # setupVundle
    setupCOC
    setupVimInstantMarkdown
    # setupEclim
}

setup
