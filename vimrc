"�������İ���
set helplang=cn

"�������֧��
set mouse=a

"�ر��Զ�����
"set wrap
set nowrap

"�����۵���ʽ
set foldmethod=manual

"ɾ����ǿ
set backspace=2

"��������
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb2312,chinese,prc,taiwan,latin-1
set termencoding=utf-8

"��ʾ�к�
set number
set rnu

"��������
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"set cindent
set smarttab
set expandtab

"һ�е��ַ�����80���Ļ��Ͱ���Щ�ַ��ı�����Ϊ��ɫ
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"GUI����
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions+=i
set guioptions-=m
set guioptions+=c

"�ر�vi����ģʽ
set nocompatible

"���ù��������±߽�ľ���
set so=1

"���Դ�Сдƥ��
set ignorecase

"��������ʱ������
set incsearch

"�����ؼ��ʸ���
set hlsearch

"�м��
set linespace=1

"ʹ��΢���ź�����
"set guifontwide=YaHei\ Consolas\ Hybrid:h14

"��������������
set nolinebreak

"��������ʷ
"set history=819222

"�Զ��﷨����
syntax on
".vm ʹ�� .html ����
au BufNewFile,BufRead *.vm set filetype=html

"less����
"au BufNewFile,BufRead *.less set filetype=less

"ts����
"au BufNewFile,BufRead *.ts set filetype=typescript

"�����ļ�ʱ�����ݣ��ر��Զ�����
set nobackup

"������ɫ
colors default

"�ļ���ʽ
set fileformat=unix
set fileformats=unix

"������ɫ
set background=dark

"����ʾ
match Ignore \\

""plugin
filetype off
"filetype plugin indent off
"set runtimepath+=$GOROOT/misc/vim
"filetype plugin indent on
"syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'scrooloose/nerdtree'
	map <C-n> :NERDTreeToggle<CR>
	autocmd StdinReadPre * let s:std_in=1
    "��vimʱĬ�Ϲر�
    "let NERDTreeQuitOnOpen=1
	"������nerdtree
	"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
	"number
	let NERDTreeShowLineNumbers = 1

Plugin 'The-NERD-Commenter'
  let NERDShutUp=1
  "֧�ֵ��кͶ��е�ѡ��//��ʽ
  map <c-h> ,c<space>

Plugin 'Valloric/YouCompleteMe'
	let g:ycm_key_list_select_completion = ['', '']
	let g:ycm_key_list_previous_completion = ['']
	let g:ycm_key_invoke_completion = '<C-Space>'

Plugin 'Lokaltog/vim-easymotion'
	let g:EasyMotion_smartcase = 1
	"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
	map <Leader><leader>h <Plug>(easymotion-linebackward)
	map <Leader><Leader>j <Plug>(easymotion-j)
	map <Leader><Leader>k <Plug>(easymotion-k)
	map <Leader><leader>l <Plug>(easymotion-lineforward)
	" �ظ���һ�β���, ����repeat���, ��ǿ��
	map <Leader><leader>. <Plug>(easymotion-repeat)

Plugin 'godlygeek/tabular'
    nmap <Leader>a& :Tabularize /&<CR>
    vmap <Leader>a& :Tabularize /&<CR>
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:<CR>
    vmap <Leader>a: :Tabularize /:<CR>
    nmap <Leader>a:: :Tabularize /:\zs<CR>
    vmap <Leader>a:: :Tabularize /:\zs<CR>
    nmap <Leader>a, :Tabularize /,<CR>
    vmap <Leader>a, :Tabularize /,<CR>
    nmap <Leader>a,, :Tabularize /,\zs<CR>
    vmap <Leader>a,, :Tabularize /,\zs<CR>
    nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'autoload_cscope.vim'
Plugin 'wincent/command-t'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/ZoomWin'
Plugin 'SirVer/ultisnips'
Plugin 'davidhalter/jedi-vim'
Plugin 'ShowTrailingWhitespace'
"Plugin 'AutoClose'
Plugin 'matchit.zip'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'yonchu/accelerated-smooth-scroll'
"Plugin 'scrooloose/syntastic'
"js
Plugin 'Yggdroot/indentLine'
    let g:indentLine_color_term = 239
    let g:indentLine_char = '|'
Plugin 'evanmiller/nginx-vim-syntax'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line















" UltiSnips setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"taglist��ݼ�
nnoremap <silent> <F8> :TagbarToggle<CR>

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"ack �ļ��ı���������
map <F4> :Ack! -i  ~/project/go/src<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

"code��ݼ�
map <F9> :r ~/code/go_

" set mapleader
let mapleader = ","

" vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>ts <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

" vim-go settings
let g:go_fmt_command = "goimports"

"godef
let g:godef_split=3
let g:godef_same_file_in_same_window=1

"vim�ݹ����tag�ļ�
set tags=tags;
set autochdir

"gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" "goimports
" if exists(#b:did_ftplugin_go_fmt#)
"     finish
" endif
" if !exists(#g:go_fmt_commands#)
"     let g:go_fmt_commands = 1
" endif
" if !exists(#g:gofmt_command#)
"     let g:gofmt_command = #goimports#
" endif
" if g:go_fmt_commands
"     command! -buffer Fmt call s:GoFormat()
" endif
" function! s:GoFormat()
"     let view = winsaveview()
"     silent execute #%!# . g:gofmt_command
"     if v:shell_error
"         let errors = []
"         for line in getline(1, line('$'))
"             let tokens = matchlist(line, '^\(.\{-}\):\(\d\+\):\(\d\+\)\s*\(.*\)')
"             if !empty(tokens)
"                 call add(errors, {#filename#: @%,
"                                  \#lnum#:     tokens[2],
"                                  \#col#:      tokens[3],
"                                  \#text#:     tokens[4]})
"             endif
"         endfor
"         if empty(errors)
"             % | # Couldn't detect gofmt error format, output errors
"         endif
"         undo
"         if !empty(errors)
"             call setloclist(0, errors, 'r')
"         endif
"         echohl Error | echomsg #Gofmt returned error# | echohl None
"     endif
"     call winrestview(view)
" endfunction
" let b:did_ftplugin_go_fmt = 1

"autocmd FileType go autocmd BufWritePre <buffer> Fmt

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"���windows�µĻ���
command -nargs=0 Clearwin : call Clearwin()
function Clearwin()
silent execute ':%s/\r//g'
endfunction

"tab����
"nmap <tab> V>
"nmap <s-tab> V<
"vmap <tab> >gv
"vmap <s-tab> <gv

"����ƶ����ɶԷ�����
imap (*) ()<Left>
imap [p] []<Left>
imap {"} {}<Left><Return><Return><Up><tab>
imap {P} {}<Left>
imap ":" ""<Left>
imap ';' ''<Left>
imap <M> <><Left>

"HTML��ȫ
imap #= id=""<Left>
imap .= class=""<Left>
imap $= value=""<Left>
imap ?= type=""<Left>
imap ?/ src=""<Left>
imap ?? href=""<Left>
imap <i> <i></i><Esc>cit
imap <a> <a></a><Esc>cit
imap <A> <a><Return><Esc><Up>o
imap <p> <p></p><Esc>cit
imap <P> <p><Return><Return><Up><Tab>
imap <h1> <h1></h1><Esc>cit
imap <ul> <ul></ul><Esc>cit
imap <UL> <ul><Return><Esc><Up>o
imap <li> <li></li><Esc>cit
imap <LI> <li><Return><Return><Up><Tab>
imap <ulli> <ul><Return><Esc><Up>o<li>
imap <input> <input type=""><Esc>hi
imap <label> <label></label><Esc>cit
imap <LABEL> <label class=""></label><Esc>7hi<Return><Esc><Up>o<input>
imap <span> <span></span><Esc>cit
imap <button> <button></button><Esc>cit
imap <u> <u></u><Esc>cit
imap <b> <b></b><Esc>cit
imap <html> <html></html><Esc>cit<Return><Esc><Up>o
imap <head> <head></head><Esc>cit<Return><Esc><Up>o
imap <body> <body></body><Esc>cit<Return><Esc><Up>o
imap <form> <form></form><Esc>cit<Return><Esc><Up>o
imap <forminput> <form><input>
imap <title> <title></title><Esc>cit<Return><Esc><Up>o
imap <div> <div></div><Esc>cit
imap <DIV> <div><Return><Esc><Up>o
imap <option> <option></option><Esc>cit
imap <select> <select></select><Esc>cit<Return><Esc><Up>o<option>

"CSS��ȫ
imap ., . {}<Left><Return><Return><Up><Up><Right>
imap #@ # {}<Left><Return><Return><Up><Up><Right>

"JS��ȫ
imap $# $("")<Left><Left>
imap $$ $('')<Left><Left>
imap $% $()<Left>

"console.log()
imap .: console.log();<Left><Left>

"pdb
imap .; import pdb<Return>pdb.set_trace()<ESC>

"go:=
imap \\ :=

"��ɫ�޸�
hi CursorLine ctermbg=242
hi Pmenu ctermbg=242 ctermfg=14
hi PmenuSel ctermbg=248 ctermfg=green
hi StatusLine cterm=reverse ctermbg=red ctermfg=black
hi StatusLineNC cterm=reverse ctermbg=166 ctermfg=black
hi VertSplit cterm=reverse ctermbg=166 ctermfg=black
hi LineNr ctermfg=green
hi Normal ctermbg=black ctermfg=141
hi String ctermfg=255

"netrw
let g:netrw_list_hide =  '^\.[^\.],'
let g:netrw_list_hide .= '\.pyc$,'

"״̬������
"��Ҫ��colors�󣬴󲿷���ɫ�ļ���hi clear
hi User1 ctermfg=226
hi User2 ctermfg=7
hi User3 ctermfg=166
hi User4 ctermfg=232 ctermbg=166
set laststatus=2
set statusline=%f%m%r%h%W\ %3*%Y\ %2*%{&fenc}->%3*%{&enc}\ %2*l:%3*%l\/%L(%1*%p%%%3*)\ %2*c:%3*%c-%v%V%<%=\ %4*%{strftime(\"%Y-%m-%d\ %H:%M\")}%*
if version >= 700
    au InsertEnter * hi StatusLine ctermfg=226
    au InsertLeave * hi StatusLine ctermfg=19
endif



"   filetype plugin indent on           "���ļ�����

"   "���������������ԣ���php java javascript �����Զ���ȫ

"   autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"   autocmd FileType python set omnifunc=pythoncomplete#Complete
"   autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"   autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"   autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"   autocmd FileType java set omnifunc=javacomplete#Complete
"   if has("autocmd") && exists("+omnifunc")
"   autocmd Filetype *
"   \ if &omnifunc == "" |
"   \ setlocal omnifunc=syntaxcomplete#Complete |
"   \ endif
"   endif
"   let g:rubycomplete_buffer_loading = 1
"   let g:rubycomplete_classes_in_global = 1
"   "let g:rubycomplete_rails = 1

"   autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P>






let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
