"--
"== coc ----------------------------------
"--
if has("win64")
    let g:coc_data_home = 'D:\Neovim\settings\coc'
endif
set complete=.,w,b,u,t
"inoremap <silent><expr> <CR> pumvisible() ? "\<C-y><CR>" : "\<CR>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = ['coc-cssmodules', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-xml', 'coc-snippets', 'coc-translator', 'coc-lists', 'coc-yank', 'coc-json', 'coc-emmet', 'coc-marketplace', 'coc-word', 'coc-highlight', 'coc-calc', 'coc-todolist', 'coc-explorer', 'coc-vetur', 'coc-go', 'coc-htmlhint', 'coc-wxml', 'coc-jedi']
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]=~ '\s'
endfunction
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
let g:coc_snippet_next = '<tab>'
nnoremap <silent> <leader>ya :<C-u>CocList -A --normal yank<cr>
nmap tr :CocCommand explorer<CR>
"nnoremap <c-c> :CocCommand<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Mappings using CoCList:
" Show all diagnostics.
"nnoremap <silent> <space>d  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>e  :<C-u>CocList locationlist<CR>

"coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

"coc-translator
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)

"coc calc
" append result on current expression
"nmap <Leader>ca <Plug>(coc-calc-result-append)
" replace result on current expression
nmap <Leader>cr <Plug>(coc-calc-result-replace)

"coc-todolist
cnoreabbrev tt CocCommand todolist.create
cnoreabbrev tl CocList todolist
cnoreabbrev tc CocCommand todolist.clear

" navigate chunks of current buffer
" nmap [g <Plug>(coc-git-prevchunk)
" nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
" nmap gs <Plug>(coc-git-chunkinfo)



"--
"== tagalong.vim ----------------------------------
"--
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'javascriptreact', 'typescriptreact', 'js', 'javascript', 'vue', 'typescript']



"--
"== MarkdownPreview ----------------------------------
"--
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


"--
"== vim-table-mode ----------------------------------
"--
" noremap <LEADER>tm :TableModeToggle<CR>
" "let g:table_mode_disable_mappings = 1
" "let g:table_mode_cell_text_object_i_map = 'k<Bar>'
" "let g:table_mode_delimiter = ' '
" let g:table_mode_corner='|'
" function! s:isAtStartOfLine(mapping)
"     let text_before_cursor = getline('.')[0 : col('.')-1]
"     let mapping_pattern = '\V' . escape(a:mapping, '\')
"     let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
"     return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
" endfunction
"
" inoreabbrev <expr> <bar><bar>
"             \ <SID>isAtStartOfLine('\|\|') ?
"             \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
" inoreabbrev <expr> __
"             \ <SID>isAtStartOfLine('__') ?
"             \ '<c-o>:silent! TableModeDisable<cr>' : '__'



"--
"== undotree ----------------------------------
"--
nnoremap un :UndotreeToggle<cr>
set undofile
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
    nmap <buffer> u <plug>UndotreeNextState
    nmap <buffer> e <plug>UndotreePreviousState
    nmap <buffer> U 5<plug>UndotreeNextState
    nmap <buffer> E 5<plug>UndotreePreviousState
endfunc



"--
"== Vista ----------------------------------
"--
" noremap <silent> tg :Vista!!<CR>
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" let g:vista_default_executive = 'ctags'
" let g:vista_fzf_preview = ['right:50%']
" let g:vista#renderer#enable_icon = 1
" let g:vista#renderer#icons = {
"             \   "function": "\uf794",
"             \   "variable": "\uf71b",
"             \  }
" function! NearestMethodOrFunction() abort
"     return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" "set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


"--
"== symbols-outline.nvim ----------------------------------
"--
let g:symbols_outline = {
    \ "highlight_hovered_item": v:true,
    \ "show_guides": v:true,
    \ "position": 'right',
    \ "auto_preview": v:true,
    \ "show_numbers": v:false,
    \ "show_relative_numbers": v:false,
    \ "show_symbol_details": v:true,
    \ "keymaps": {
        \ "close": "<Esc>",
        \ "goto_location": "<Cr>",
        \ "focus_location": "o",
        \ "hover_symbol": "<C-space>",
        \ "rename_symbol": "r",
        \ "code_actions": "a",
    \ },
    \ "lsp_blacklist": [],
\ }
noremap <silent> tg :SymbolsOutline<CR>



"--
"== vim-autoformat ----------------------------------
"--
nnoremap <leader>fo :Autoformat<CR>
" au BufWrite * :Autoformat    " 自动格式化
"let g:formatdef_eslint = '"SRC=eslint-temp-${RANDOM}.js; cat - >$SRC; eslint --fix $SRC >/dev/null 2>&1; cat $SRC | perl -pe \"chomp if eof\"; rm -f $SRC"'
"let g:formatters_javascript = ['eslint']
"let g:formatdef_my_html = '"html-beautify -s 2"'



"--
"== vim-easy-align ----------------------------------
"--
vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
    let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }



"--
"== rainbow_parentheses ----------------------------------
"--
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]
" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"--
"== vim-commentary ----------------------------------
"--
nmap <LEADER>/ gcc
vmap <LEADER>/ gc



"--
"== vim-illuminate ----------------------------------
"--
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl


"--
"== goyo ----------------------------------
"--
map <leader>gy :Goyo<CR>


"==
"== vim-expand-region
"==
" vmap v <Plug>(expand_region_expand)
" vmap V <Plug>(expand_region_shrink)


"==
"== vim-bookmarks
"==
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1


"--
"== indent-blankline.nvim ----------------------------------
"--
" let g:indent_blankline_filetype_exclude = ["vista", "dashboard", "dashpreview", "coc-explorer"]


"--
"== bufdelete ----------------------------------
"--
cnoreabbrev bd Bd


"--
"== textobj-anyblock ----------------------------------
"--
let g:textobj#anyblock#blocks = [
	\ '(',
	\ '{',
	\ '[',
	\ '(',
	\ '"',
	\ '<',
	\ '>',
	\ '=',
	\ ',',
	\ '`',
	\ '-',
	\ ':',
	\ '#',
	\ '/',
	\ '.',
	\ '\',
	\ '|',
	\ '$',
	\ '&',
	\ '_',
	\ 't',
	\ ';',
	\ '*',
	\ "'" ]


"--
"== vim-after-object ----------------------------------
"--
autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')



"--
"== vim-subversive ----------------------------------
"--
" nmap s <plug>(SubversiveSubstitute)
" nmap ss <plug>(SubversiveSubstituteLine)
" nmap S <plug>(SubversiveSubstituteToEndOfLine)
" nmap <leader>s <plug>(SubversiveSubstituteRange)
" xmap <leader>s <plug>(SubversiveSubstituteRange)
" nmap <leader>ss <plug>(SubversiveSubstituteWordRange)
"with abolish.vim
" nmap <leader><leader>s <plug>(SubversiveSubvertRange)
" xmap <leader><leader>s <plug>(SubversiveSubvertRange)
" nmap <leader><leader>ss <plug>(SubversiveSubvertWordRange)



"--
"== fzf.vim ----------------------------------
"--
" 查找文件
""noremap <C-p> :FZF<CR>
"" noremap <C-p> :Files<CR>
"silent! nmap <C-P> :GFiles<CR>
"" 查找文件内容
""noremap <C-f> :Ag<CR>
"noremap <C-f> :Ag<CR>
"" 历史打开的文件
"noremap <C-s> :MRU<CR>
"" 查找tag
"noremap <C-t> :BTags<CR>
"" 跳转打开的文件
"noremap <C-b> :Buffers<CR>
"" 预览每一行
"noremap <C-l> :Lines<CR>
"" 历史命令
"noremap <C-h> :History:<CR>

"autocmd! Filetype fzf
"autocmd  Filetype fzf set laststatus=0 noruler
"            \| autocmd BufLeave <buffer> set laststatus=2 ruler

"command! -bang -nargs=* Buffers
"            \ call fzf#vim#buffers(
"            \   '',
"            \   <bang>0 ? fzf#vim#with_preview('up:60%')
"            \           : fzf#vim#with_preview('right:0%', '?'),
"            \   <bang>0)


"command! -bang -nargs=* LinesWithPreview
"            \ call fzf#vim#grep(
"            \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
"            \   fzf#vim#with_preview({}, 'up:50%', '?'),
"            \   1)

"command! -bang -nargs=* Ag
"            \ call fzf#vim#ag(
"            \   '',
"            \   <bang>0 ? fzf#vim#with_preview('up:60%')
"            \           : fzf#vim#with_preview('down:50%', '?'),
"            \   <bang>0)

"command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

"command! -bang BTags
"            \ call fzf#vim#buffer_tags('', {
"            \     'down': '40%',
"            \     'options': '--with-nth 1
"            \                 --reverse
"            \                 --prompt "> "
"            \                 --preview-window="70%"
"            \                 --preview "
"            \                     tail -n +\$(echo {3} | tr -d \";\\\"\") {2} |
"            \                     head -n 16"'
"            \ })

"let g:fzf_preview_window = 'down:60%'
"let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

"function! s:list_buffers()
"    redir => list
"    silent ls
"    redir END
"    return split(list, "\n")
"endfunction

"function! s:delete_buffers(lines)
"    execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
"endfunction

"command! BD call fzf#run(fzf#wrap({
"            \ 'source': s:list_buffers(),
"            \ 'sink*': { lines -> s:delete_buffers(lines) },
"            \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
"            \ }))

""noremap <c-d> :BD<CR>

"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }
"nnoremap <silent>gr <cmd>lua vim.lsp.buf.references()<CR>



"--
"== telescope ----------------------------------
"--
lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = { preview_cutoff = 112 },
        },
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--ignore',
            '--hidden'
        },
        file_ignore_patterns = {
            ".git",
            "node_modules"
        },
        prompt_prefix = "—— ",
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<esc>"] = actions.close
            }
        }
    },
}
EOF
nnoremap <c-f> <cmd>Telescope live_grep<CR>
nnoremap <c-l> <cmd>Telescope current_buffer_fuzzy_find<CR>
nnoremap <c-b> <cmd>Telescope buffers<CR>
nnoremap <c-h> <cmd>Telescope command_history<CR>
nnoremap <c-p> <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>
nnoremap <c-s> <cmd>Telescope oldfiles<CR>
nnoremap <c-e> <cmd>Telescope lsp_document_diagnostics<CR>
nnoremap mc <cmd>Telescope vim_bookmarks all<CR>
nnoremap <silent>gr    <cmd>Telescope lsp_references<CR>
nnoremap <silent>gi    <cmd>Telescope lsp_implementations<CR>
nnoremap <silent>gd    <cmd>Telescope lsp_definitions<CR>
highlight TelescopeSelection guifg=#FF38A2 gui=bold
highlight TelescopeMatching guifg=blue


"--
"== incsearch-fuzzy ----------------------------------
"--
map ? <Plug>(incsearch-fuzzy-/)
map z/ <Plug>(incsearch-fuzzy-/)
"map zg/ <Plug>(incsearch-fuzzy-stay)


"--
"== LeaderF ----------------------------------
"--
" let g:Lf_HideHelp = 1
" let g:Lf_UseCache = 0
" let g:Lf_UseVersionControlTool = 0
" let g:Lf_IgnoreCurrentBufferName = 1
" let g:Lf_WindowPosition = 'popup'
" let g:Lf_PreviewInPopup = 1
" let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
" let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
" let g:Lf_ShortcutF = "<leader>ff"
" noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
" noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
" noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
" noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
" noremap go :<C-U>Leaderf! rg --recall<CR>
" let g:Lf_GtagsAutoGenerate = 0
" let g:Lf_Gtagslabel = 'native-pygments'
" noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
" noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>



"--
"== lsp ----------------------------------
"--
lua << EOF
require'lspconfig'.tsserver.setup{
  flags = {
    debounce_text_changes = 500,
  }
}
require'lspconfig'.vuels.setup{}
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.bashls.setup{}
-- require'fzf_lsp'.setup()
EOF
" nnoremap <silent>gd <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent><c-i> <cmd>lua vim.lsp.buf.implementation()<CR>



"--
"== gitsigns ----------------------------------
"--
lua << EOF
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  keymaps = {
    noremap = true,
    buffer = true,
    ['n ]g'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'"},
    ['n [g'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'"},
    ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['v <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['v <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
    ['n ghp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',
    -- Text objects
    ['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
    ['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>'
  },
  watch_index = {
    interval = 1000,
    follow_files = true
  },
  current_line_blame = true,
  current_line_blame_delay = 1000,
  current_line_blame_position = 'eol',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil,
  word_diff = false,
  use_decoration_api = true,
  use_internal_diff = true,
}
EOF


"--
"== tig-explorer ----------------------------------
"--
nnoremap gl :TigOpenProjectRootDir<cr>


"--
"== vim-matchup ----------------------------------
"--
let g:loaded_matchit = 1


"--
"== hop.nvim ----------------------------------
"--
nnoremap <silent>ff    <cmd>HopWord<CR>
nnoremap <silent>fff    <cmd>HopChar1<CR>
highlight HopNextKey guifg=#FF38A2 gui=bold
highlight HopNextKey1 guifg=#FF38A2 gui=bold
highlight HopNextKey2 guifg=blue gui=bold
" highlight HopUnmatched guifg=#FF38A2 gui=bold


"--
"== clever-f ----------------------------------
"--
let g:clever_f_smart_case = 1
let g:clever_f_across_no_line = 0


"--
"== choosewin ----------------------------------
"--
nmap  -  <Plug>(choosewin)


"--
"== vim-sneak ----------------------------------
"--
map s <Plug>Sneak_s
map S <Plug>Sneak_S
map , <Plug>Sneak_;
map ' <Plug>Sneak_,


"--
"== any-jump ----------------------------------
"--
let g:any_jump_disable_default_keybindings = 1
" Normal mode: Jump to definition under cursore
nnoremap <leader>jj :AnyJump<CR>
" Visual mode: jump to selected text in visual mode
xnoremap <leader>jj :AnyJumpVisual<CR>
" Normal mode: open previous opened file (after jump)
nnoremap <leader>ab :AnyJumpBack<CR>
" Normal mode: open last closed search window again
nnoremap <leader>al :AnyJumpLastResults<CR>



"--
"== ZFDirDiff ----------------------------------
"--
"let g:ZFDirDiffKeymap_update = ['DD']
"let g:ZFDirDiffKeymap_syncToHere = ['do', 'DH']
"let g:ZFDirDiffKeymap_syncToThere = ['dp', 'DL']



"--
"== dict-vim ----------------------------------
"--
" cnoreabbrev trans DictW
" nmap  <Leader>dddddd <Plug>DictSearch
" vmap  <Leader>dddddd <Plug>DictVSearch
" nmap  <Leader>tttttt <Plug>DictWSearch
" vmap  <Leader>tttttt <Plug>DictWVSearch
" nmap  <Leader>rrrrr <Plug>DictRSearch
" vmap  <Leader>rrrrr <Plug>DictRVSearch


"--
"== vim-translator ----------------------------------
"--
"nmap  <Leader>t <Plug>Translate
"vmap  <Leader>t <Plug>TranslateV
" Display translation in a window
"nmap  <Leader>t <Plug>TranslateW
"vmap  <Leader>wwwww <Plug>TranslateWV
"" Replace the text with translation
"nmap  <Leader>r <Plug>TranslateR
"vmap  <Leader>rrrrr <Plug>TranslateRV
"hi def link TranslatorQuery             Identifier
"hi def link TranslatorPhonetic          Type
"hi def link TranslatorExplain           Statement
"hi def link TranslatorDelimiter         Special



""--
""== ZFVimIM_pinyin ----------------------------------
""--
"nnoremap <expr><silent> ;; ZFVimIME_keymap_toggle_n()
"inoremap <expr> ;; ZFVimIME_keymap_toggle_i()
"vnoremap <expr> ;; ZFVimIME_keymap_toggle_v()
"
"nnoremap <expr><silent> ;: ZFVimIME_keymap_next_n()
"inoremap <expr> ;: ZFVimIME_keymap_next_i()
"vnoremap <expr> ;: ZFVimIME_keymap_next_v()
"
"nnoremap <expr><silent> ;, ZFVimIME_keymap_add_n()
"inoremap <expr> ;, ZFVimIME_keymap_add_i()
"xnoremap <expr> ;, ZFVimIME_keymap_add_v()
"
"nnoremap <expr><silent> ;. ZFVimIME_keymap_remove_n()
"inoremap <expr> ;. ZFVimIME_keymap_remove_i()
"xnoremap <expr> ;. ZFVimIME_keymap_remove_v()
"


"--
"== polyglot ----------------------------------
"--
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
"==vim-json
"let vim_json_syntax_conceal = 0


"--
"== codelf ----------------------------------
"--
" inoremap <silent> <F9> <C-R>=codelf#start()<CR>
" nnoremap <silent> <F9> :call codelf#start()<CR>


"--
"== vim-rooter ---------------------------------
"--
let g:rooter_patterns = ['__vim_project_root', '.git/']


"--
"== vim-better-whitespace ----------------------------------
"--
" let g:current_line_whitespace_disabled_hard=1
" "let g:strip_whitespace_confirm=0
" let g:better_whitespace_filetypes_blacklist=[ 'diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']
" let g:better_whitespace_enabled=1
" let g:strip_whitespace_on_save=1


"--
"== quickmenu ----------------------------------
"--
noremap <silent><F1> :call quickmenu#toggle(0)<cr>
let g:quickmenu_options = "LH"
call quickmenu#append("# Run", '')
call quickmenu#append("Run %{expand('%:t')}", 'call CompileRunGcc()', "Run current file")

call quickmenu#append("# vimspector", '')
call quickmenu#append("<F9>添加断点", 'call vimspector#ToggleBreakpoint()', "")
call quickmenu#append("<F5>开始调试", 'call vimspector#Continue()', "")
call quickmenu#append("<F10>单步跳过", 'call vimspector#StepOver()', "")
call quickmenu#append("<F11>单步调试", 'call vimspector#StepInto()', "")
call quickmenu#append("<F12>单步跳出", 'call vimspector#StepOut()', "")
call quickmenu#append("<F4>重新调试", 'call vimspector#Restart()', "")
call quickmenu#append("<F3>暂停调试", 'call vimspector#Stop()', "")
call quickmenu#append("<F7>退出vimspector", 'VimspectorReset', "")
call quickmenu#append("<F8>添加函数断点", 'call vimspector#AddFunctionBreakpoint()', "")


call quickmenu#append("# spell", '')
call quickmenu#append("spell('z=' to change)", 'set spell!', "")
call quickmenu#append("codelf", 'call codelf#start()', "")

call quickmenu#append("# markdown", '')
call quickmenu#append("tablemode", 'TableModeToggle', "")

call quickmenu#append("# Color", '')
call quickmenu#append("Vcoolor(调色板)", 'VCoolor', "")

call quickmenu#append("# other", '')
call quickmenu#append("goyo", 'Goyo', "")


"--
"== floaterm ----------------------------------
"--
nmap <leader>x :FloatermNew<space>
nmap ra :FloatermNew ranger<cr>
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_winblend = 5
let g:floaterm_keymap_toggle = '<leader>fh'
let g:floaterm_keymap_kill = '<leader>fk'
let g:floaterm_opener = 'edit'


"--
"== peekaboo ----------------------------------
"--
let g:peekaboo_prefix = '@'


"--
"== nvim-bufferline.lua ----------------------------------
"--
nnoremap <silent>R :BufferLineCycleNext<CR>
nnoremap <silent>E :BufferLineCyclePrev<CR>
lua << EOF
require("bufferline").setup {
    options = {
        numbers = 'both',
        separator_style="slant",
    }
}
EOF


"--
"== spaceline ----------------------------------
"--
" let g:spaceline_seperate_style= 'curve'
" let g:spaceline_colorscheme = 'space'


"--
"== dashboard ----------------------------------
"--
let g:dashboard_default_executive ='telescope'


"--
"== nvim-treesitter ----------------------------------
"--
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "vue", "html", "css", "scss", "typescript", "python", "bash" },
  matchup = {
    enable = true,
    -- disable = { "c", "ruby" },
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { "python"},
  },
  pyfold = {
    enable = true,
    custom_foldtext = true,
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s'
      }
    }
  }
}
EOF
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


"--
"== vimspector ----------------------------------
"--
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-node-debug2', 'debugger-for-chrome' ]
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_sidebar_width = 25
let g:vimspector_bottombar_height = 5
let g:vimspector_terminal_maxwidth = 25
let g:vimspector_terminal_minwidth = 20
nmap <F7> :VimspectorReset<cr>


"--
"== vim-textmanip ----------------------------------
"--
" xmap <m-j> <Plug>(textmanip-move-down)
" xmap <m-k> <Plug>(textmanip-move-up)
" xmap <m-h> <Plug>(textmanip-move-left)
" xmap <m-l> <Plug>(textmanip-move-right)

