set encoding=utf-8
set fileencoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,utf-8
set fileformats=dos,unix,mac

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('vim-airline/vim-airline')
  call dein#add('preservim/nerdtree')
  call dein#add('dag/vim2hs')
  call dein#add('w0rp/ale')
  call dein#add('tpope/vim-commentary')
  call dein#add('andys8/vim-elm-syntax')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set ambiwidth=double
set belloff=all
set wildmode=longest,list

augroup noo
	autocmd!
	autocmd FileType * setlocal tw=0
	autocmd FileType * setlocal fo-=t
	autocmd FileType * setlocal fo-=c
augroup END

augroup fileTypeIndent
	autocmd!
	autocmd BufNewFile,BufRead *.hs,*.elm setlocal ts=4 sts=4 sw=4 et
	autocmd BufNewFile,BufRead *.js setlocal sts=2 sw=2 et
augroup END

set tags=./tags;,tags;

if filereadable(expand("~/_vimrc-local"))
	source ~/_vimrc-local
endif
