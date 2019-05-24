
function! LoadConfig(name)
	let confpath = expand('~/.vim/conf/'.a:name)
	"if filereadable(expand("~/.vim/conf/".a:name))
	if filereadable(confpath)
        silent! execute 'source '.confpath
	endif
endfunction

" basic
call LoadConfig("basic.vimrc")

" plugins
call LoadConfig("vim-airline.vimrc")


