" Easy version Vimrc

set nocompatible
filetype off

if has("win32") || has("win64")
  set rtp+=$VIM\vimfiles\bundle\Vundle.vim
  call vundle#begin('$VIM\vimfiles\bundle')
else
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
endif

Plugin 'gmarik/Vundle.vim'

Plugin 'xuhdev/SingleCompile'
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'vim-scripts/c.vim'
Plugin 'c9s/colorselector.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mattn/emmet-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/neosnippet'
Plugin 'scrooloose/nerdtree'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'Shougo/unite.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ap/vim-css-color'
Plugin 'junegunn/vim-easy-align'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'thinca/vim-quickrun'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Shougo/vimfiler.vim'

Plugin 'jnurmine/Zenburn'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wesgibbs/vim-irblack'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'ywjno/vim-tomorrow-theme'


call vundle#end()
filetype plugin indent on

" =============
"  custom key
" =============
" add a new line without entering insert mode
noremap <CR> o<Esc>

" map backspce to delete a character
noremap <BS> X

" map ctrl+c and ctrl+v
noremap <C-c> y
noremap <C-v> P

" cancel searched highlight
noremap ; :nohlsearch<CR>

" navigating for long lines
map j gj
map k gk
map <UP> gk
map <DOWN> gj
imap <UP> <ESC>gk<RIGHT>i
imap <DOWN> <ESC>gj<RIGHT>i

" select ALL
map <C-A> ggVG

" Use neocomplcache
let g:neocomplcache_enable_at_startup = 1
