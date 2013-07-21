set guioptions=ce
set antialias
set linespace=2
set vb t_vb=

if has("gui_macvim")
  set guifont=Monaco:h14
elseif has("gui_gtk")
  set guifont=Monospace\ 14
else
  set guifont=Monaco:h14
end

if has("win32") || has("win64")
  let Tlist_Ctags_Cmd='ctags'

  " maximum the initial window
  au GUIENTER * simalt ~x

  let $LANG="zh_CN.UTF-8"
  set langmenu=zh_cn.utf-8
  set encoding=utf8

  set guifont=Source_Code_Pro:h14

  "reload menu with UTF-8 encoding
  source $VIMRUNTIME/delmenu.vim
  source $VIMRUNTIME/menu.vim
end

if has("gui_macvim")
  set transparency=0

  " move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <D-j> mz:m+<cr>`z
  nmap <D-k> mz:m-2<cr>`z
  vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

  " disable default menu hot key
  macmenu &File.New\ Window key=<nop>
  macmenu &File.Close key=<nop>

  " remap cmd + w to close tab
  map <D-w> :tabclose<CR>

  " remap cmd + n to new tab
  map <D-n> :tabnew<CR>

  " map cmd + enter to switch to full screen
  map <D-Enter> :set invfu<CR>

  " map cmd+1~9 to switch tab 1~9
  for i in range(1, 9)
    exec "nnoremap <D-".i."> ".i."gt"
  endfor
endif
