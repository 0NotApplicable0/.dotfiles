"""""""""""""""""""""
" Vim Configuration "
"""""""""""""""""""""
" set viminfo+=n~/.dotfiles/vim/.cache/.viminfo
set runtimepath+=~/.vim_runtime

""""""""""""""""""""""""""""""""""""
" Vim Sources - Unmodified Sources "
""""""""""""""""""""""""""""""""""""
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

""""""""""""""""""""""
" Custom User Config "
""""""""""""""""""""""
try
    source ~/.dotfiles/vim/config.vim
catch
endtry
