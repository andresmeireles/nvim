set iskeyword=@,48-57,_,192-255,$

" phpactor maps
" transform 
nnoremap <buffer> <silent> <leader>t :PhpactorTransform<CR>

" context menu
nnoremap <buffer> <silent> <leader>c :PhpactorContextMenu<CR>

" imports
nnoremap <buffer> <silent> <leader>i :PhpactorImportClass<CR>

nnoremap <buffer> <silent> <leader>I :PhpactorImportMissingClasses<CR>

" expand class name - class to full qualified name
nnoremap <buffer> <silent> <leader>e :PhpactorClassExpand<CR>
inoremap <buffer> <silent> <leader>e <esc>:PhpactorClassExpand<CR>

