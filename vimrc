" :::: Hans Heums vimrc ::::
" inspirasjonskilde: https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/

" VUNDLE
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" SimpylFold: A plugin to make vim fold code correctly
Plugin 'tmhedberg/SimpylFold'

" indentpython.vim: A plugin to fix auto-indentation for Python
Plugin 'vim-scripts/indentpython.vim'

" YouCompleteMe: Python autocompletion plugin
Bundle 'Valloric/YouCompleteMe'
" 	Makes the window go away when you're done with it
let g:ycm_autoclose_preview_window_after_completion=1
" 	Makes space-g goto definition of whatever I'm currently on
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntastic: Makes Vim check your syntax on each save
Plugin 'scrooloose/syntastic'

" Makes sure syntastic uses Python 3 syntax checking
let g:syntastic_python_python_exec = '/usr/local/bin/python3.5'

" vim-flake8: Makes Vim check your PEP8 on each save
Plugin 'nvie/vim-flake8'

" Colours! Solarized for GUI-mode, Zenburn for CLI-mode.
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" A bit of logic to decide the colour scheme
if has('gui_running')
 set background=dark
 colors solarized
else
 colors zenburn
endif

" Powerline! (Funker kun når flere vinduer er åpne? Sjekk http://powerline.readthedocs.io/en/latest/)
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Løsning på ovennevnte problem; se også :help laststatus
set laststatus=2

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" /VUNDLE

" Enable syntax highlighting
let python_highlight_all=1
syntax on 

" Show cursor position (as numbers and percentage, bottom right)
set ruler 

" Encoding
set encoding=utf-8

" Turn on line numbering
set number

" Scroll up/down when within 5 lines of top/bottom
set scrolloff=5

" Proper Python PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Define BadWhitespace before using in a match
" highlight BadWhitespace ctermbg=red guibg=darkred

" Flag redundant whitespace as 'bad'
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" ^Var egentlig bare irriterende. Kan kanskje være nyttig, men da må fargen
" endres.

" Useful keyboard maps for norwegian keyboards
noremap > ~
noremap & ^

" Enter for å sette inn ny linje under uten å gå inn i insert mode
" Ctrl-o for å sette inn linjen over
nmap <C-o> O<Esc>
nmap <CR> o<Esc>

" Hadde denne på før, men tror ikke jeg trenger den lenger:
" filetype indent plugin on

" Tells Vim where window splits should occur
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
 project_base_dir = os.environ['VIRTUAL_ENV']
 activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
 execfile(activate_this, dict(__file__=activate_this))
EOF

" 256 colours
set t_Co=256
