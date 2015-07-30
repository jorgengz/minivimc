" Allow autocompleting minizinc keywords with <Ctrl-N> and <Ctrl-P>
autocmd FileType    minizinc    set dictionary=\~/.vim/misc/minizinc_dict
autocmd FileType    minizinc    set complete+=k

" Save and run the current minizinc file from Vim.
" Automatically, as-is with F7,
" With the ability to name data files (.dzn) with F6
autocmd FileType    minizinc    map <F6> :w<CR>:!echo ----- Running % -----; minizinc %  
autocmd FileType    minizinc    map <F7> <F6><CR>
