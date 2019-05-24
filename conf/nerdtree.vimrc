" NERDTree configure
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.py[cd]$','\~$','\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
" Automatically open NERDTree when open the vim and no file
autocmd vimenter * if !argc() | NERDTree | endif
" Automatically shut down only NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

