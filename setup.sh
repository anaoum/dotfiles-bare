#!/bin/bash

cd ~
git clone --bare https://github.com/anaoum/dotfiles.git .git

cd .git
git config core.bare false
git config core.sparseCheckout true

cat <<EOF > info/sparse-checkout
/*
!README.md
!LICENSE
!setup.sh
EOF

cd ~
git checkout
