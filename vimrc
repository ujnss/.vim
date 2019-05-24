" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:

set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker 

set number                    " Line numbers on

function! LoadConfig(name)
	let confpath = expand('~/.vim/conf/'.a:name)
	"if filereadable(expand("~/.vim/conf/".a:name))
	if filereadable(confpath)
        silent! execute 'source '.confpath
	endif
endfunction

call LoadConfig("vim-airline.vimrc")

