" packadd! <- The ! is for when you run vim --noplugin so Vim won't the package.

packadd! nerdtree              " File system explorer.

let NERDTreeShowHidden=1       " Allow to see hiden files.

autocmd VimEnter * NERDTree " Init vim with NERDTree open

map <C-b> :NERDTreeToggle<CR>  " Maped macro to toggle nerdtree
