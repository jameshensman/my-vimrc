"pathogen
call pathogen#infect()

set mouse=a
set pastetoggle=<F2>
set cursorline

"highlight *.todo files
au BufNewFile,BufRead *.todo set syntax=todo
au BufNewFile,Bufread *.csv setf csv

"show the file name in the title bar
set title

filetype on
filetype plugin indent on

"256 colours
set t_Co=256
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

"turn off pyflakes
let g:pyflakes_autostart = 0
map <F11> :PyflakesToggle<cr>

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

"statusline
set laststatus=2
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

