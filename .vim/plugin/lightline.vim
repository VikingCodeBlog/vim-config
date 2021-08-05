" All config is on:
" https://github.com/itchyny/lightline.vim

" packadd! <- The ! is for when you run vim --noplugin so Vim won't the package.
packadd! lightline              " File system explorer.

set laststatus=2
set noshowmode

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
