call plug#begin('~/.config/nvim/plugged')

"Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins', }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhartington/oceanic-next'

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Shougo/vimshell.vim'
Plug 'majutsushi/tagbar'

Plug 'tomlion/vim-solidity'

Plug 'Shougo/vimproc.vim', {'do': 'make'}

Plug 'jiangmiao/auto-pairs'
Plug 'derekwyatt/vim-scala'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'gantheory/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'mbbill/undotree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'alvan/vim-closetag'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'kchmck/vim-coffee-script'
Plug 'mtscout6/vim-cjsx'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'tomasiser/vim-code-dark'
Plug 'ntpeters/vim-better-whitespace'

Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', { 'do': 'npm install' }

Plug 'Vimjas/vim-python-pep8-indent'

call plug#end()

execute pathogen#infect()

set shell=/bin/bash

set nocompatible
set guicursor=

set hidden

syntax on
filetype plugin indent on

set number
set ruler
set smartindent
set cindent
set title
set encoding=utf8
set expandtab

set shiftwidth=4
set tabstop=4

set termguicolors

syntax enable
colorscheme codedark

hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi EndOfBuffer ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE

set cursorline

"hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
"hi CursorLineNr ctermbg=NONE ctermfg=green guifg=4

vnoremap > >gv
vnoremap < <gv

" visual indent
"nmap <leader>l :set list!<CR>
"set list
"set listchars=tab:\|\
"highlight NoneText cterm=None ctermfg=Darkgrey
"highlight SpecialKey cterm=None ctermfg=Darkgrey
"let g:indentLine_char='|'

" NERDTree
nmap <leader>q :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

set guifont=SauceCodePro\ Nerd\ Font\ Types\ 11
let g:NERDTreeChDirMode = 2

" let g:deoplete#enable_at_startup=1

" airline setting

let g:loaded_youcompleteme = 0
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#fnamecollapse = 0

let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'

let g:airline_powerline_fonts=1
let g:airline_theme='codedark'

let g:gitgutter_realtime = 1

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap J :bprevious!<CR>
nnoremap K :bnext!<CR>
nmap <C-t> :enew <BAR> :Denite file_rec<cr>
nmap <C-x> :bp <BAR> bd#<Enter>
nmap <C-o> :Denite file_rec<cr>

language en_US.UTF-8

command -nargs=0 -bar Update if &modified
	\|	if empty(bufname('%'))
	\|		browse confirm write
	\|	else
	\|		confirm write
	\|	endif
	\|endif

inoremap <c-s> <Esc>:Update<CR>
nnoremap <silent> <C-S> :<C-u>Update<CR>

cmap w!! w !sudo tee > /dev/null %

nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g

map <Leader> <Plug>(easymotion-prefix)

map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

nmap s <Plug>(easymotion-overwin-f2)

map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1

let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#6a6a6a   ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#8a8a8a ctermbg=242

nnoremap <F5> :UndotreeToggle<cr>

set number relativenumber
let g:go_term_mode = "split"

let g:go_doc_keywordprg_enabled = 0

map <F4> :TagbarToggle<CR>

let g:closetag_filenames = '*.js'

let g:coc_global_extensions = [ 'coc-python', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-eslint', ]

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

let g:typescript_indent_disable = 1
let g:vim_jsx_pretty_disable_tsx = 0

hi tsxTagName guifg=#569CD6
hi tsxComponentName guifg=#569CD6

hi tsxCloseString guifg=#f92420
hi tsxCloseTag guifg=#f92420
hi tsxCloseTagName guifg=#f92420
hi tsxCloseComponentName guifg=#f92420

hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

hi tsxAttrib guifg=#F8BD7F cterm=italic

hi Directory guifg=#569CD6 guibg=none
hi LineNr guifg=#569CD6
hi CursorLine guibg=#281e5d

set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

let g:go_def_mapping_enabled = 0

set nobackup
set nowritebackup

set cmdheight=1

set updatetime=300
set shortmess+=c

if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

nnoremap <silent> T :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"let g:tagbar_type_typescript = {
"  \ 'ctagsbin' : 'tstags',
"  \ 'ctagsargs' : '-f-',
"  \ 'kinds': [
"    \ 'e:enums:0:1',
"    \ 'f:function:0:1',
"    \ 't:typealias:0:1',
"    \ 'M:Module:0:1',
"    \ 'I:import:0:1',
"    \ 'i:interface:0:1',
"    \ 'C:class:0:1',
"    \ 'm:method:0:1',
"    \ 'p:property:0:1',
"    \ 'v:variable:0:1',
"    \ 'c:const:0:1',
"  \ ],
"  \ 'sort' : 0
"\ }
"
"
"let s:denite_options = {'default' : {
"\ 'split': 'floating',
"\ 'start_filter': 1,
"\ 'auto_resize': 1,
"\ 'source_names': 'short',
"\ 'direction': 'botright',
"\ 'prompt': 'λ ',
"\ 'statusline': 0,
"\ 'highlight_matched_char': 'typescriptEnum',
"\ 'winrow': 1,
"\ 'vertical_preview': 1,
"\ }}
"
"function! s:profile(opts) abort
"for l:fname in keys(a:opts)
"  for l:dopt in keys(a:opts[l:fname])
"	call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
"  endfor
"endfor
"endfunction
"
"call s:profile(s:denite_options)
"
"autocmd FileType denite call s:denite_my_settings()
"function! s:denite_my_settings() abort
"  nnoremap <silent><buffer><expr> <CR>
"  \ denite#do_map('do_action')
"  nnoremap <silent><buffer><expr> d
"  \ denite#do_map('do_action', 'delete')
"  nnoremap <silent><buffer><expr> p
"  \ denite#do_map('do_action', 'preview')
"  nnoremap <silent><buffer><expr> q
"  \ denite#do_map('quit')
"  nnoremap <silent><buffer><expr> i
"  \ denite#do_map('open_filter_buffer')
"  nnoremap <silent><buffer><expr> <Space>
"  \ denite#do_map('toggle_select').'j'
"endfunction
"
"call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nogroup', '-g', ''])
"call denite#custom#var('grep', 'command', ['ag'])
"call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', [])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])
"call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
"call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
"      \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
"      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png'])
"
"nmap <LEADER>p :Denite -start-filter file/rec<CR>
"nmap <LEADER>b :Denite buffer<CR>
"nnoremap \ :Denite grep<CR>

nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :Ag<Cr>

let g:js_file_import_omit_semicolon = 0

call coc#config('python', {'pythonPath': $PYENV_VIRTUAL_ENV})

