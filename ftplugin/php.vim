set iskeyword=@,48-57,_,192-255,$

" phpactor maps
" transform 
nnoremap <buffer> <silent> <leader>t :PhpactorTransform<CR>
inoremap <buffer> <silent> <leader>t <esc>:PhpactorTransform<CR>
" context menu
nnoremap <buffer> <silent> <leader>c :PhpactorContextMenu<CR>
inoremap <buffer> <silent> <leader>c <esc>:PhpactorContextMenu<CR>
" imports
nnoremap <buffer> <silent> <leader>i :PhpactorImportClass<CR>
inoremap <buffer> <silent> <leader>i <esc>:PhpactorImportClass<CR>
nnoremap <buffer> <silent> <leader>I :PhpactorImportMissingClasses<CR>
inoremap <buffer> <silent> <leader>I <esc>:PhpactorImportMissingClasses<CR>
" expand class name - class to full qualified name
nnoremap <buffer> <silent> <leader>e :PhpactorClassExpand<CR>
inoremap <buffer> <silent> <leader>e <esc>:PhpactorClassExpand<CR>

