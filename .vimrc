"=======================================================================
"                            _                    
"                           (_)                   
"                     __   ___ _ __ ___  _ __ ___ 
"                     \ \ / / | '_ ` _ \| '__/ __|
"                      \ V /| | | | | | | | | (__ 
"                     (_)_/ |_|_| |_| |_|_|  \___|
"
"  This is the configuration I use to program with vim as main IDE.
"  
"  LANGUAGES AND FRAMEWORKS SUPORTED:
"
"     - JavaScript
"
"========================================================================

let VIM_HOME = "~/.vim/"

" Route paths:
" These paths are used to import all configuration files.
execute "source " . VIM_HOME . ".routes"

" Custom Style IDE:
" Set relative and absolute line number.
execute "source " . VIM_STYLES . ".lines"        

" Plugins:
" Import all packages with custom settings.
execute "source " VIM_PACKS_CONFIG . ".index" 

" Mapping Keys:
execute "source " VIM_MAPS

" Config IDE
set mouse=a " Allows you to interact with the mouse 
set clipboard=unnamed " Allows to use system clipboard
syntax enable " Syntax highlighting
set showcmd " Shows commands when you write them
set encoding=utf-8
set showmatch " Shows the pair of a parenteis
set tabstop=2 shiftwidth=2 " Use 2 spaces instead tabs
