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
set mouse=a
set modelines=1
set backspace=indent,eol,start


:noremap <F4> :set hlsearch! hlsearch?<CR>
:noremap <F11> :TagbarToggle<CR>
:noremap <F12> :call ToggleMouse()<CR>

autocmd FileType html   setlocal shiftwidth=2 tabstop=2
autocmd FileType make   setlocal noexpandtab shiftwidth=8 tabstop=8
autocmd FileType c      setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType cpp    setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType tex    setlocal spell

" ck paper configuration
autocmd BufNewFile,BufRead paper.tex  setlocal textwidth=70

autocmd BufRead,BufNewFile *.c,*.h,*.cpp,*.cc,,*.java TagbarOpen

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


" clang_complete options (disable preview scratch window)
" needs (ubuntu): libclang-dev
set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15
" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 1
" Show clang errors in the quickfix window
let g:clang_complete_copen = 1
let g:clang_use_library = 1

if has("macunix")
  let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
elseif has("unix")
  " Note. we expect libclang.so, and in case there is only a libclang.so.1 just create a symlink
  let g:clang_library_path = '/usr/lib/x86_64-linux-gnu'
endif
