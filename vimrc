"pathogen
call pathogen#infect()

set mouse=a
set pastetoggle=<F2>

"highlight *.todo files
au BufNewFile,BufRead *.todo set syntax=todo
au BufNewFile,Bufread *.csv setf csv

"show the file name in the title bar
set title

filetype on
filetype plugin indent on

"256 colours
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme desert

"highlight bad whitespace: leading tabs and trailing spaces
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\(^\t\+\|\s\+$\)/
highlight BadWhitespace ctermbg=red guibg=red

"tabs and spaces
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4

"noweb Pweave...
au BufRead,BufNewFile *.Plw set filetype=noweb 
let noweb_backend = "tex"
let noweb_language = "python"
let noweb_fold_code = 1

