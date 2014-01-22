" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim

function! PresentationModeOn()
  try
    colorscheme molokai
  catch
    colorscheme desert
  endtry

  if has("gui_macvim")
    set guifont=Monaco:h25           " for Mac
  elseif has("gui_gtk")
    set guifont=Monospace\ 22        " for ubuntu
  else
    set guifont=Monaco:h25           " for other
  end

  if has("win32") || has("win64")
    set guifont=Source_Code_Pro:h25
  end
endfunction

function! PresentationModeOff()
  try
    colorscheme molokai
  catch
    colorscheme desert
  endtry

  if has("gui_macvim")
    set guifont=Monaco:h14           " for Mac
  elseif has("gui_gtk")
    set guifont=Monospace\ 14        " for ubuntu
  else
    set guifont=Monaco:h14           " for other
  end

  if has("win32") || has("win64")
    set guifont=Source_Code_Pro:h14
  end
endfunction

function! TogglePresentationMode()
  if !exists('w:present')
    let w:present=0
  endif

  if w:present==0
    call PresentationModeOn()
    let w:present=1
  else
    call PresentationModeOff()
    let w:present=0
  endif
endfunction

map <leader>z :call TogglePresentationMode()<CR>
