se nocp                     " set nocompatible

" Turns on syntax highlighting.
syn on                      " syntax on

filet off

se rtp+=~/.vim/bundle/Vundle.vim
cal vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-fugitive'
Plugin 'qpkorr/vim-bufkill'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'kendling/TagHighlight'
"Plugin 'abudden/taghighlight-automirror'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
cal vundle#end()

colo anoncol
"let g:TagHighlightSettings = {'TagFileName': '~/programming/c/tags'}
let g:TagHighlightSettings = {"CtagsExecutable": "c:/cygwin64/bin/ctags.exe"}

" Turns on specific settings depending on filetype for indentation settings.
filet plugin indent on      " filetype plugin indent on

au bufNewFile *.c,*.h so ~/.vim/templates/c.template
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|FILENAME\|.*/s~~" . expand("%:t")
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|DATE\|/s~~" . strftime("%m/%d/%Y")
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|TIME\|/s//" . strftime("%H:%M:%S")
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|AUTHOR\|/s//Anonrate"
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|YEAR\|/s//" . strftime("%Y")

" Sets 'backspace' to '2' which allows backspacing over autoIndents, line
"   breaks and the start of insert.
se bs=2                     " Same as 'se bs=indent,eol,start'.

" Shows where your cursor is by highlighting the the whole column.
se cuc                      " set cursorcolumn

" Shows the current line you're at by outling the whole line.
se cul                      " set cursorline

" Sets the encoding type to 'utf8'.
"se enc=utf8                 " set encoding=utf8

" Use spaces instead of tabs.
se et                       " set expandtabs

" Sets the file encoding type to 'utf8'.
"se fenc=utf8                " set fileencoding=utf8

" Sets the command history limit to '200'.
se history=200              " set history=200

" Turns on 'list', then sets 'lcs' to have the 'tab' character shown as '>-',
"   and 'trail' (Trailing whitespaces) to be shown as '~'.
se list lcs=tab:>-,trail:~  " set list listchars=tab:>-,trail:~

" Always shows the 'laststatus'.
se ls=2                     " set laststatus=2

" Shows line numbers.
se nu                       " set number

" Shows your cursor position.
se ru                       " set ruler

" Shows (partial) command in last line of screen.
" NOTE: Turning off 'showcmd' will increase terminal performance.
se nosc                     " set showcmd

" Turns on smart indenting, for automatic indentation depending on the
"   filetype.
se si                       " set smartindent

" Matches the brack of which your cursor is over, with it's closing or opening
"   bracket, if presetn.
se sm                       " set showmatch (Show matching brackets)

" Shows 'n' lines of context around the cursor.
" NOTE: Setting 'so' to a large value, will result in the cursor always being
"     in the middle of the window (except at start, end or when
"     lines wrap).
se so=140                   " set scrolloff=140

" Sets how much should be indented when you press 'enter'.
se sw=4                     " set shiftwidth=4

" Only use if your terminal supports more than 256 colors.
se tgc                     " set termguicolors

" Sets the amount of spaces used when inserting the 'tab' character.
se ts=2                     " set tabstop=4

" Time out on ':mappings' and key codes.
se ttimeout                 " set ttimeout

" Time waited for key codes or ':mappings' to be completed.
se ttm=100                  " set ttimeoutlen=100

" Sets the maximum amount of characters a line can have before adding another
"   line to 79.  (Not the samething as wrapping)
se tw=79                    " set textwidth=79

" Shows command line completiton.
se wmnu                     " set wildmenu

" Colors column '80' to represent the 'textwidth' setting.  Also colors column
"   column '120'.
"let &cc="80," . join(range(120, 478), ",")
let &cc=79

" Disable loading all extensions.
let g:ariline#extensions#disable_rtp_load = 1

" Load only wanted extensions.
let g:airline_extensions  = [
              \ 'tabline',
              \ 'wordcount',
              \ 'branch',
              \ 'hunks',
              \ ]

" Show buffer numbers.
let g:airline#extensions#tabline#buffer_nr_show           = 1

" Switch position of buffers and tabs on sple tabline.
let g:airline#extensions#tabline#switch_buffers_and_tabs  = 1

" How numbers are displayed in tab mode.
" Splits and tab number
let g:airline#extensions#tabline#tab_nr_type              = 2

fu! SyntaxItem()
  return
    \ 'hi<'
    \ . synIDattr(
    \   synID(line('.'), col('.'), 1),
    \   'name') .
    \ '> trans<'
    \ . synIDattr(
    \   synID(line('.'), col('.'), 0),
    \   'name') .
    \ '> lo<'
    \ . synIDattr(
    \   synIDtrans(synID(line('.'), col('.'), 1)),
    \   'name') .
    \ '>'
endf

fu! ToggleShowHi()
  if exists("g:airline_section_y")
      unlet g:airline_section_y
  else
      let g:airline_section_y = '%{SyntaxItem()}'
  endif
endf

map <F2> ToggleShowHi()<CR>
"let g:airline_section_y = '%{SyntaxItem()}'

let g:gitgutter_max_signs = 9999999

let g:c_syntax_for_h  = 1
