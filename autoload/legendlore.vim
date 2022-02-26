python3 from legendlore import repltools as dnd

python3 import vim

function! legendlore#AutoCompleteSpells(findstart, base)
  return py3eval('auto_complete_spells(vim.eval("a:findstart") == True, vim.eval("a:base"))')
endfunction

function! legendlore#AutoCompleteFindStart()
  let i=0
  while i > -1
    let string = getline('.')[i:col('.')]
    echo "i: " . i . "; string: '" . string . "';"
    if py3eval('any(dnd.s.where(name=dnd.p.startswith(vim.eval("string"))))')
      return i
    else
      " TODO: verify that word/nonword delimitation is consistent
      " skip to beginning of next word
      let i += match(string, '\s\zs\S')
    endif
  endwhile
  return -1
endfunction

function! legendlore#AutoCompleteSpells(findstart, base)
  if a:findstart
    return legendlore#AutoCompleteFindStart()
  else
    return py3eval('[spell.fmt_oneline() for spell in dnd.s.where(name=dnd.p.startswith(vim.eval("a:base")))]')
  endif
endfunction
