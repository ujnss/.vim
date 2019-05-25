
function! LoadConfig(name)
	let confpath = expand('~/.vim/conf/'.a:name)
	"if filereadable(expand("~/.vim/conf/".a:name))
	if filereadable(confpath)
        silent! execute 'source '.confpath
	endif
endfunction

" basic
call LoadConfig("basic.vim")

" plugins
call LoadConfig("vim-airline.vim")
call LoadConfig("vim-gutentags.vim")
call LoadConfig("YouCompleteMe.vim")
call LoadConfig("nerdtree.vim")
call LoadConfig("vim-which-key.vim")


