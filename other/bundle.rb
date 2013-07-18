# encoding: utf-8

require 'erb'

@vundles = %w[
mileszs/ack.vim
vim-scripts/bufexplorer.zip
vim-scripts/c.vim
c9s/colorselector.vim
kien/ctrlp.vim
Raimondi/delimitMate
vim-scripts/matchit.zip
scrooloose/nerdcommenter
scrooloose/nerdtree
cakebaker/scss-syntax.vim
ervandew/supertab
scrooloose/syntastic
majutsushi/tagbar
Lokaltog/vim-easymotion
tpope/vim-endwise
kchmck/vim-coffee-script
ap/vim-css-color
tpope/vim-fugitive
nathanaelkane/vim-indent-guides
michaeljsmith/vim-indent-object
pangloss/vim-javascript
jistr/vim-nerdtree-tabs
Lokaltog/vim-powerline
tpope/vim-ragtag
tpope/vim-rails
tpope/vim-repeat
vim-ruby/vim-ruby
slim-template/vim-slim
tpope/vim-surround
tpope/vim-unimpaired
mattn/zencoding-vim
garbas/vim-snipmate
MarcWeber/vim-addon-mw-utils
tomtom/tlib_vim
honza/vim-snippets
godlygeek/tabular
Shougo/neocomplcache.vim
Shougo/neosnippet
terryma/vim-multiple-cursors
xuhdev/SingleCompile
thinca/vim-quickrun
Shougo/unite.vim
Shougo/vimfiler.vim
AndrewRadev/splitjoin.vim
]

@vundles.sort! do |x, y|
  x.split(/\//)[1] <=> y.split(/\//)[1]
end

vimrc = ERB.new(File.read('base_vimrc'))
File.open('../vimrc', 'w') do |f|
  f.puts vimrc.result
end

=begin
" 全局查找
mileszs/ack.vim
" 缓冲区浏览（'\be' '\bs' '\bv'）
vim-scripts/bufexplorer.zip
" c支持
vim-scripts/c.vim
" 切换配色
c9s/colorselector.vim
" 快速跳转文件（'ctrl+p'）
kien/ctrlp.vim
" 括号补全
Raimondi/delimitMate
" 匹配tab
vim-scripts/matchit.zip
" 代码注释
scrooloose/nerdcommenter
" 文件浏览
scrooloose/nerdtree
" scss支持
cakebaker/scss-syntax.vim
" tab键代码补全
ervandew/supertab
" 代码错误提示
scrooloose/syntastic
" 方法一览
majutsushi/tagbar
" 文件中快速移动
Lokaltog/vim-easymotion
" 自动输入`end`
tpope/vim-endwise
" coffeescript支持
kchmck/vim-coffee-script
" 显示css的颜色
ap/vim-css-color
" 在vim中使用git
tpope/vim-fugitive
" 显示对齐线
nathanaelkane/vim-indent-guides
" 快速选择同级的内容
michaeljsmith/vim-indent-object
" javascript支持
pangloss/vim-javascript
" nerdtree的tabs支持
jistr/vim-nerdtree-tabs
" vim状态栏
Lokaltog/vim-powerline
" 快速生成tag（:h ragtag）
tpope/vim-ragtag
" rails支持
tpope/vim-rails
" 使用.号重复操作
tpope/vim-repeat
" ruby支持
vim-ruby/vim-ruby
" slim支持
slim-template/vim-slim
" 快速选择替换配对的符号
tpope/vim-surround
" 快速上下移动当前行（'[e' ']e'）
tpope/vim-unimpaired
" zencoding
mattn/zencoding-vim
" 代码片段
garbas/vim-snipmate
" （garbas/vim-snipmate依赖）
MarcWeber/vim-addon-mw-utils
" （garbas/vim-snipmate依赖）
tomtom/tlib_vim
" 代码片段（garbas/vim-snipmate）
honza/vim-snippets
" 对齐等号
godlygeek/tabular
" 代码提示
Shougo/neocomplcache.vim
" （Shougo/neocomplcache.vim依赖）
Shougo/neosnippet
" 多重选取
terryma/vim-multiple-cursors
" 快速编译
xuhdev/SingleCompile
" 快速执行文件
thinca/vim-quickrun
" 强大的寻找器
Shougo/unite.vim
" 与nerdtree相似的插件（依赖Shougo/unite.vim）
Shougo/vimfiler.vim
" 快速拆开、合并行（gS、gJ）
AndrewRadev/splitjoin.vim
=end
