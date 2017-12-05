"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup color scheme
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  if (match($LC_TERM_PROFILE, "light") != -1)
    set background=light
  else
    set background=dark
  endif
  if (exists("g:dotvim_colorscheme"))
    execute 'colorscheme '.g:dotvim_colorscheme
  else
    colorscheme base16-google-dark
  endif
  if (match($LC_TERM_PROFILE, "base16") != -1)
    highlight clear SignColumn
    autocmd ColorScheme * highlight clear SignColumn
  endif
endif
