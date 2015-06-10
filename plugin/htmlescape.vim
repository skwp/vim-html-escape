" via: http://vim.wikia.com/wiki/HTML_entities
function! HtmlEscape()
  silent s/&/\&amp;/e
  silent s/</\&lt;/e
  silent s/>/\&gt;/e
endfunction

function! HtmlUnEscape()
  silent s/&lt;/</e
  silent s/&gt;/>/e
  silent s/&amp;/\&/e
endfunction

map <silent> <Leader>he :call HtmlEscape()<CR>
map <silent> <Leader>hu :call HtmlUnEscape()<CR>
