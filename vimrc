" enable pathogen to handle "bundles"
call pathogen#infect()

filetype plugin indent on

" use the dark solarized theme
" let g:solarized_termtrans=1
let g:solarized_termcolors=16
colorscheme solarized
set background=dark

" misc options
syntax on         " syntax highlighting
set textwidth=80  " yeah, still 80 cols...; will break after 80 cols
set tabstop=2     " tab stops at 2 spaces
set expandtab     " expand tabs to spaces
set shiftwidth=2  " number of spaces used for indenting
set hlsearch      " highlight all search matches
set ruler         " line and column number at lower right corner
set number        " line numbers
set autoindent    " automatically indent
set smartindent   " ... but use the smart version
set wrap          " Wrap aroung long lines in the editor (does not change text)
set vb            " Enable visual bell
set modeline
set mouse=a
set modelines=1
set backspace=indent,eol,start

set completeopt=menu

:noremap <F4> :set hlsearch! hlsearch?<CR>
:noremap <F12> :call ToggleMouse()<CR>

autocmd FileType html   setlocal shiftwidth=2 tabstop=2
autocmd FileType make   setlocal noexpandtab shiftwidth=8 tabstop=8
autocmd FileType c      setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType cpp    setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType tex    setlocal spell

" MacVim
set guifont=Monaco:h12

function! ToggleMouse()
  if &mouse == 'a' 
    set mouse=
    echo "Mouse usage disabled"
  else
    set mouse=a
    echo "Mouse usage enabled"
  endif
endfunction

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0

" OS dependent stuff follows.
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  " OSX
elseif os == 'Linux'
  " Linux
endif
