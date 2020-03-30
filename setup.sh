#!/bin/bash

cd ~
git clone --bare https://github.com/anaoum/dotfiles-bare.git .git

cd .git
git config core.bare false
git config core.sparseCheckout true
git config status.showUntrackedFiles no
git config bash.showUntrackedFiles false

cat <<EOF > info/sparse-checkout
/*
!README.md
!LICENSE
!setup.sh
EOF

cd ~
git checkout
