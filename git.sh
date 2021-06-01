#!/bin/sh

echo "Configuring Git"

git config --global core.excludesfile $DOTFILES/.gitignore_global

echo "Cloning repositories..."

CODE=$HOME/Code

