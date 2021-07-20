if has("unix")
    let g:python_host_prog='/usr/bin/python3'
    let g:python3_host_prog='/usr/bin/python3'
    " let g:mkdp_browser = 'surf'
    " let g:mkdp_browser = 'firefox'
elseif has("wind64")
    let g:python3_host_prog='C:\Users\feedoom\AppData\Local\Programs\Python\Python38\python.exe'
endif
