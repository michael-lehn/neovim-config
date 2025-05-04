if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.s,*.ulmasm,*.uasm setfiletype uasm
  au! BufRead,BufNewFile *.abc setfiletype abc
augroup END
