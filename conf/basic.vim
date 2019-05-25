" Basic configure

" Easier moving in tabs and windows
map <C-W> <C-W>w

autocmd BufWritePost $MYVIMRC source $MYVIMRC  " Automatic updating vimrc when save
autocmd BufWritePre * :%s/\s\+$//e " Automatically remove whitespace at the end of the line

"colorscheme solarized         " The color scheme

" Define shortcuts to the beginning of a line and end of each line
nmap LB 0
nmap LE $

let mapleader = ','           " Map <Leader>, default is '\'

set history=1000              " Store a ton of history(default is 20)
set autowrite                 " Automatically write a file when leaving a modified buffer

"set spell                     " Spell checking on
set iskeyword+=_,-,$          " Is a word

set number                    " Line numbers on
set hlsearch                  " Highlight search terms
set incsearch                 " Find as you type search
set cursorline                " Highlight current line
set cursorcolumn              " Highlight current column
highlight CursorLine     cterm=NONE ctermbg=black guibg=NONE guifg=NONE
highlight CursorColumn   cterm=NONE ctermbg=black guibg=NONE guifg=NONE

set showmatch                 " Show matching brackets/parenthesis, {(...)}

set autoindent                " Indent at the same level of the previous ine
set cindent                   " .
set smartindent               " .
set expandtab                 " Tabs are sapces, not tabs
set shiftwidth=4              " Use indents of 4 spaces
set tabstop=4                 " And indentation every 4 colums
set softtabstop=4             " Let backspace delete indent

"imap { {}<ESC>i

filetype plugin indent on     " Automatically detect file types
syntax on                     " Syntax highlighting

"set nowrap                    " Do not wrap long lines

"set foldmarker={,} foldlevel=0 foldmethod=marker

set background=dark           " Set background dark
" Allow to trigger background
function! ToggleBG()
    let s:tbg = &background
    if s:tbg == "dark"
        set background=light
    else
        set background=dark
    endif
endfunction
noremap <leader>bg :call ToggleBG()<CR>

" Status line
" http://blog.csdn.net/strategycn/article/details/7620261
if has('statusline')
    set laststatus=2                                   " Make statusline always shown last 2nd
    set statusline=%<%F                                " Filename
    set statusline+=\ %-5.3n                           " Buffer number
    set statusline+=\ %w%h%m%r                         " Options:Preview Help + RO
    "set statusline+=%{fugitive#statusline()}
    set statusline+=\ [%{&ff}/%Y]                      " File format & type
    set statusline+=\ [%{getcwd()}]                    " Current dir
    set statusline+=%=[%(%l/%L,%c%V%)][%p%%]             " Right aligned file nav info
    set statusline+=\ %{strftime(\"%m/%d/%y\ %H:%M\")} " Date & time
endif



















