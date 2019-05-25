" search directory
let g:gutentags_project_root = ['.root', '.ROOT', '.git', '.svn', '.project']

" the tag file
let g:gutentags_ctags_tagfile = '.tags'

" cache files
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" ctags extra args
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

