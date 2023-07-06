syntax on
set mouse=a
set number
highlight LineNr ctermfg=gray
set belloff=all
set noerrorbells
set tabstop=4
set cursorline
highlight cursorline ctermbg=237 cterm=bold
set nowrap
"CURSOR SETTINGS""""""""""""""""""
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
"""""""""""""""""""""""""""""""""""""""
"CUSTOM STATUS LINE SETTING {

set laststatus=2 		  	    		 "status line always visible
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \   "set format of statusline,paste-option/25charNameofFile_alignLeft/hyphen for modificatn,read-only,helpfile,unwritable 
set statusline+=\ \ \ [%{&ff}/%Y]                           "display file format & type
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\  "displays the hostname n current directory of the file(max 30char,leftalign)
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L                   "add space, percentage visible and no. of lines in file

function! CurDir()			
    let curdir = substitute(getcwd(), $HOME, "~", "")	
    return curdir							"script to display file current directly with home direct >> ~
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else							 	"script to display PASTE if that optn is selected
        return ''
    endif
endfunction

"}







"SETTINGS FOR C/C++ FILES"

autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30                  "set indent/comment styles for c/cpp files


set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif  
"Restore cursor to file position in previous editing session
