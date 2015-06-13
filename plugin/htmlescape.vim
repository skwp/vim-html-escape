" via: http://vim.wikia.com/wiki/HTML_entities
function! HtmlEscape()
  if &gdefault
    silent s/&/\&amp;/e
    silent s/</\&lt;/e
    silent s/>/\&gt;/e
  else
    silent s/&/\&amp;/eg
    silent s/</\&lt;/eg
    silent s/>/\&gt;/eg
  endif
endfunction

function! HtmlUnEscape()
  if &gdefault
    silent s/&lt;/</e
    silent s/&gt;/>/e
    silent s/&amp;/\&/e
  else
    silent s/&lt;/</eg
    silent s/&gt;/>/eg
    silent s/&amp;/\&/eg
  endif
endfunction

map <silent> <Leader>he :call HtmlEscape()<CR>
map <silent> <Leader>hu :call HtmlUnEscape()<CR>
