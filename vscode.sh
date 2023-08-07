#!/bin/bash

# Extensions
extensions=(
"42crunch.vscode-openapi"
"dkundel.vscode-new-file"
"calebporzio.better-phpunit"
"junstyle.php-cs-fixer"
"donjayamanne.githistory"
"sleistner.vscode-fileutils"
"file-icons.file-icons"
"zignd.html-css-class-completion"
"eriklynd.json-tools"
"neilbrayfield.php-docblocker"
"victorzevallos.vscode-theme-laravel"
"bmewburn.vscode-intelephense-client"
"mehedidracula.php-namespace-resolver"
"wware.snippet-creator"
"shardulm94.trailing-spaces"
"redhat.vscode-yaml"
"esbenp.prettier-vscode"
"felixfbecker.php-debug"
)

installs=$(printf " --install-extension %s" "${extensions[@]}")

code $installs --force
