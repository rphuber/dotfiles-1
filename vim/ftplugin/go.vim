let g:syntastic_go_checkers = ['go', 'golint', 'govet']
"let g:go_fmt_command = "goimports"
nmap <C-i> <Plug>(go-info)
nmap <C-g> <Plug>(go-def)
nmap <Leader>e <Plug>(go-rename)
nmap <Leader>r :GoImports<CR>
