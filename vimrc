"alt设置成meta键
noremap <M-x> :echo "ALT-X pressed"<cr>
exec "set <M-x>=\ex"
set ttimeout ttimeoutlen=100

"user path
let g:userpath = $HOME

"nnoremap[n模式不递归映射]
nnoremap <leader>ev :e $HOME/.vimrc<cr>

"开启中文帮助
set helplang=cn

"开启鼠标支持
set mouse=a

"关闭自动折行
"set wrap
set nowrap

"设置折叠方式
set foldmethod=manual

"删除增强
set backspace=2

"编码设置
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb2312,chinese,prc,taiwan,latin-1
set termencoding=utf-8

"显示行号
set number
set rnu

"缩进设置
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"set cindent
set smarttab
set expandtab

"一行的字符超出80个的话就把那些字符的背景设为红色
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"GUI设置
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions+=i
set guioptions-=m
set guioptions+=c

"关闭vi兼容模式
set nocompatible

"设置光标距离上下边界的距离
set so=1

"忽略大小写匹配
set ignorecase

"开启输入时的搜索
set incsearch

"搜索关键词高亮
set hlsearch

"行间距
set linespace=1

"使用微软雅黑字体
"set guifontwide=YaHei\ Consolas\ Hybrid:h14

"按完整单词折行
set nolinebreak

"命令行历史
"set history=819222

"自动语法高亮
syntax on

".vm 文件类型判断为html
au BufNewFile,BufRead *.vm set filetype=html
".less文件类型判断为less
"au BufNewFile,BufRead *.less set filetype=less
".ts文件类型判断为typescript
"au BufNewFile,BufRead *.ts set filetype=typescript

"覆盖文件时不备份，关闭自动备份
set nobackup

"文字颜色
colors default

"文件格式
set fileformat=unix
set fileformats=unix

"背景颜色
set background=dark

"不显示
match Ignore /\r/
match Ignore /\r$/

"光标碰到第五行、倒数第五行时就上下卷屏
set scrolloff=5

"光标恢复到退出时的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"code快捷键
map <F9> :r ~/code/

" set mapleader
let mapleader = ","

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

"补全展示
Plugin 'Valloric/YouCompleteMe'
    let g:ycm_key_list_select_completion = ['', '']
    let g:ycm_key_list_previous_completion = ['']
    let g:ycm_key_invoke_completion = '<C-Space>'
	let g:ycm_semantic_triggers =  {
        \   'c' : ['->', '.'],
        \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'],
        \   'ocaml' : ['.', '#'],
        \   'cpp,objcpp' : ['->', '.', '::'],
        \   'perl' : ['->'],
        \   'php' : ['->', '::'],
        \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
        \   'ruby' : ['.', '::'],
        \   'lua' : ['.', ':'],
        \   'erlang' : [':'],
        \ }

"Plugin 'Shougo/neocomplete.vim'

"nerdtree文件树
Plugin 'scrooloose/nerdtree'
	map <C-n> :NERDTreeToggle<CR>
	autocmd StdinReadPre * let s:std_in=1
    "打开vim时默认关闭
    "let NERDTreeQuitOnOpen=1
	"启动打开nerdtree
	"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
	"number
	let NERDTreeShowLineNumbers = 1
    "netrw 忽略隐藏文件和pyc文件
    let g:netrw_list_hide =  '^\.[^\.],'
    let g:netrw_list_hide .= '\.pyc$,'

"代码注释
Plugin 'The-NERD-Commenter'
    let NERDShutUp=1
    "支持单行和多行的选择，//格式
    map <c-h> ,c<space>

"定位跳转
Plugin 'Lokaltog/vim-easymotion'
	let g:EasyMotion_smartcase = 1
	"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
	map <Leader><leader>h <Plug>(easymotion-linebackward)
	map <Leader><Leader>j <Plug>(easymotion-j)
	map <Leader><Leader>k <Plug>(easymotion-k)
	map <Leader><leader>l <Plug>(easymotion-lineforward)
	" 重复上一次操作, 类似repeat插件, 很强大
	map <Leader><leader>. <Plug>(easymotion-repeat)

"格式对齐
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
"tagbar
Plugin 'majutsushi/tagbar'
    nnoremap <silent> <F8> :TagbarToggle<CR>
"cscope
Plugin 'autoload_cscope.vim'
"文件搜索
Plugin 'wincent/command-t'
Plugin 'kien/ctrlp.vim'
    " ctrlp
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
"字符搜索
Plugin 'mileszs/ack.vim'
    "ack 文件文本内容搜索
    map <F4> :Ack! -i  ~/project<left><left><left><left><left><left><left><left><left><left>
"加减符号、标签
Plugin 'tpope/vim-surround'
"vim窗口全屏
Plugin 'vim-scripts/ZoomWin'
"代码块引擎
Plugin 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
    "let g:UltiSnipsJumpForwardTrigger="<c-b>"
    "let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"代码块库
Plugin 'honza/vim-snippets'
Plugin 'davidhalter/jedi-vim'
"行尾空格标红
Plugin 'ShowTrailingWhitespace'
"Plugin 'AutoClose'
"%匹配html标签
Plugin 'matchit.zip'
"状态栏增强
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
    let g:airline#extensions#tabline#enabled = 1 "tab 栏
    let g:airline_powerline_fonts=1
"Plugin 'scrooloose/syntastic'
"格式样式
Plugin 'Yggdroot/indentLine'
    let g:indentLine_color_term = 239
    let g:indentLine_char = '|'
"nginx语法高亮
Plugin 'evanmiller/nginx-vim-syntax'
"html补全(zen coding)
Plugin 'mattn/emmet-vim'
	let g:user_emmet_mode='n'    "only enable normal mode functions.
	let g:user_emmet_mode='inv'  "enable all functions, which is equal to
	let g:user_emmet_mode='a'    "enable all function in all mode.
    "设置Emmet只对html/css启用
	let g:user_emmet_install_global = 0
	autocmd FileType html,css EmmetInstall
"jshint
Plugin 'Shutnik/jshint2.vim'
    let jshint2_command = '/Users/zhangjk/.nvm/versions/node/v6.10.0/lib/node_modules/jshint/bin/jshint'
    let jshint2_save = 1
    " show next jshint error
    nnoremap <silent><M-n> :lnext<CR>
    inoremap <silent><M-n> <C-O>:lnext<CR>
    vnoremap <silent><M-n> :lnext<CR>
    exec "set <M-n>=\en"

    " show previous jshint error
    nnoremap <silent><M-p> :lprevious<CR>
    inoremap <silent><M-p> <C-O>:lprevious<CR>
    vnoremap <silent><M-p> :lprevious<CR>
    exec "set <M-p>=\ep"
"js补全
Plugin 'marijnh/tern_for_vim'
"jsdoc
Plugin 'heavenshell/vim-jsdoc'
    nmap <silent><C-l> <Plug>(jsdoc)
"多行操作
Plugin 'terryma/vim-multiple-cursors'
    let g:multi_cursor_use_default_mapping=0
    " Default mapping
    let g:multi_cursor_next_key='<C-m>'
    let g:multi_cursor_prev_key='<C-p>'
    let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'
    " Default highlighting (see help :highlight and help :highlight-link)
    highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
    highlight link multiple_cursors_visual Visual
"web语法高亮(比vim自带的好用)
"Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'othree/yajs-core.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
"jsx高亮
Plugin 'mxw/vim-jsx'
    let g:syntastic_javascript_checkers = ['eslint']
    let g:jsx_ext_required = 0
"高亮匹配html标签
Plugin 'Valloric/MatchTagAlways'
"颜色代码高亮
Plugin 'gorodinskiy/vim-coloresque'
"语法分析(用途不清楚)
Plugin 'ynkdir/vim-vimlparser'
"莫洛凯
"Plugin 'tomasr/molokai'
    "let g:molokai_original = 1
    "let g:rehash256 = 1
    "set t_Co=256
"太极
"Plugin 'altercation/vim-colors-solarized'
    "let g:solarized_termcolors=256
"代码检查(开启不了呢？)
"Plugin 'w0rp/ale'
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

















"vim递归查找tag文件
"set tags=tags;
"set autochdir

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

"清除windows下的换行
command -nargs=0 Clearwin : call Clearwin()
function Clearwin()
silent execute ':%s/\r//g'
endfunction

"tab缩进
"nmap <tab> V>
"nmap <s-tab> V<
"vmap <tab> >gv
"vmap <s-tab> <gv

"光标移动到成对符号中
imap (*) ()<Left>
imap [p] []<Left>
imap {"} {}<Left><Return><Return><Up><tab>
imap {P} {}<Left>
imap ":" ""<Left>
imap ';' ''<Left>
imap <M> <><Left>

"CSS补全
imap ., . {}<Left><Return><Return><Up><Up><Right>
imap #@ # {}<Left><Return><Return><Up><Up><Right>

"JS补全
imap $# $("")<Left><Left>
imap $$ $('')<Left><Left>
imap $% $()<Left>

"console.log()
imap .: console.log();<Left><Left>

"pdb
imap .; import pdb<Return>pdb.set_trace()<ESC>

"配色修改
"colorscheme molokai
"colorscheme solarized
hi CursorLine ctermbg=242
hi Pmenu ctermbg=242 ctermfg=14
hi PmenuSel ctermbg=248 ctermfg=green
hi StatusLine cterm=reverse ctermbg=red ctermfg=black
hi StatusLineNC cterm=reverse ctermbg=166 ctermfg=black
hi VertSplit cterm=reverse ctermbg=166 ctermfg=black
hi LineNr ctermfg=green
hi Normal ctermbg=black ctermfg=141
hi String ctermfg=255

"状态栏设置
"需要在colors后，大部分配色文件有hi clear
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
