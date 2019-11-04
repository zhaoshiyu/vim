" no vi-compatible
set nocompatible

" Setting up Vundle - the best vim plugin manager
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

filetype off

" 让 Vundle管理插件
"调用vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins from github repos:

" Better file browser
Plugin 'scrooloose/nerdtree'
" Code commenter
Plugin 'scrooloose/nerdcommenter'
" Class/module browser
Plugin 'majutsushi/tagbar'
" Code and files fuzzy finder
Plugin 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plugin 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Plugin 'mattn/emmet-vim'
" Maybe the best Git integration
Plugin 'tpope/vim-fugitive'
" Tab list panel
Plugin 'kien/tabman.vim'
" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Consoles as buffers
Plugin 'rosenfeld/conque-term'
" Pending tasks list
Plugin 'fisadev/FixedTaskList.vim'
" Surround
Plugin 'tpope/vim-surround'
" Autoclose
Plugin 'Townk/vim-autoclose'
" Indent text object
Plugin 'michaeljsmith/vim-indent-object'
" Python mode (indentation, doc, refactor, lints, code checking, motion and
" operators, highlighting, run and ipdb breakpoints)
Plugin 'klen/python-mode'
" Better autocompletion
Plugin 'Shougo/neocomplcache.vim'
" Snippets manager (SnipMate), dependencies, and snippets repo
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" awesome colorscheme
Plugin 'tomasr/molokai'
" Git/mercurial/others diff icons on the side of the file lines
Plugin 'mhinz/vim-signify'
" Automatically sort python imports
Plugin 'fisadev/vim-isort'
" Drag visual blocks arround
Plugin 'fisadev/dragvisuals.vim'
" Window chooser
Plugin 't9md/vim-choosewin'
" Python and other languages code checker
Plugin 'scrooloose/syntastic'
" Paint css colors with the real color
Plugin 'lilydjwg/colorizer'

Plugin 'c9s/perlomni.vim'
" pathogen
Plugin 'tpope/vim-pathogen'

" javascript complete after install the plugin, you must cd the install
" directory and run `npm install`, then add a .tern-project config file
" the doc at http://ternjs.net/doc/manual.html#vim
Plugin 'marijnh/tern_for_vim'
" Golang Plugins
Plugin 'fatih/vim-go'
" JSX syntax highlight.
Plugin 'mxw/vim-jsx'
Plugin 'godlygeek/tabular'
" Markdown syntastic highlight
"Plugin 'plasticboy/vim-markdown'
" Markdown realtime preview
" Before you want to use it, please run
" `sudo npm -g install instant-markdown-d`
"Plugin 'suan/vim-instant-markdown'
" Handlebars syntax highlighting
Plugin 'mustache/vim-mustache-handlebars'
" True Sublime Text style multiple selections for Vim
Plugin 'terryma/vim-multiple-cursors'

" Plugins from vim-scripts repos:

" Search results counter
Plugin 'IndexedSearch'
" XML/HTML tags navigation
Plugin 'matchit.zip'
" Gvim colorscheme
Plugin 'Wombat'
" Yank history navigation
Plugin 'YankRing.vim'


Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = 'f'
Plugin 'tristen/vim-sparkup'
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'pangloss/vim-javascript'
"代码存放在 vim script 上
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'taglist.vim'

"aautopep8自动格式化工具
Plugin 'tell-k/vim-autopep8'

Plugin 'jiangmiao/auto-pairs'

"
" " 代码存放在其他地方
Plugin 'wincent/command-t'
" Plugin 'git://git.wincent.com/command-t.git'

" Track the engine.
Plugin 'SirVer/ultisnips'
"Plugin 'garbas/vim-snipmate'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" " ...
"
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install(update) bundles
" " :BundleSearch(!) foo - search(or refresh cache first) for foo
" " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle command are not allowed..
"

" ============================================================================
" Install plugins the first time vim runs

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

" ============================================================================
" Vim settings and mappings
" You can edit them as you wish

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

scriptencoding utf-8

"关闭vi兼容模式
set nocompatible  
"设置文件检测编码
set fileencodings=utf-8,gbk,gb2312,ucs-bom,chinese,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"设置内部编码
set encoding=utf-8
"设置新建文件保存编码
set fileencoding=utf-8
"搜索忽略大小写
set ignorecase smartcase  
"开启实时搜索功能
set incsearch
"高亮搜索
set hlsearch       
" muting search highlighting 
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
"显示行号 
set nu!
"显示尺标
set ruler
"突出显示当前行和列
set cursorline
set cursorcolumn
hi CursorLine  cterm=NONE ctermbg=darkred ctermbg=darkred ctermfg=white
"突出显示当前列
"set cursorcolumn
"命令打开文件类型检测功能，它相当于文件类型检测功能的开关
filetype on
"运行环境载入不同插件 indent代表不同文件类型不同的缩排方式 .vim/indent
filetype plugin indent on
"语法高亮
syntax enable
syntax on
"自动缩进
set autoindent
" tabs and spaces handling
set expandtab
"table键盘4空格
set tabstop=4
set softtabstop=4
"当使用移动(shift)命令时移动的字符数
set shiftwidth=4
"增强模式中的命令行自动完成操作,可以在命令行下Tab键给出命令列表
set wildmenu
set wildmode=longest:list,full 
"显示状态栏
set laststatus=2
"基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
set foldcolumn=0
"启动 vim 时关闭折叠代码
set nofoldenable
"定义快捷键的前缀，即<Leader>
let mapleader=";"
"nnoremap 普通模式(normal mode)下生效的映射 与map的区别是不会递归映射
"inoremap 插入模式(insert mode)下生效
"配色方案
"colorscheme moss

" hidden startup messages
set shortmess=atI
" auto read and write
set autowrite
set autoread
" when deal with unsaved files ask what to do
set confirm
" no backup files
set nobackup
" other settings 
set langmenu=zh_CN.UTF-8
set mouse=v
set whichwrap+=<,>,h,l,[,]
set background=dark

set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start


"设置 tagslist
"让taglist窗口出现在Vim的右边
let Tlist_Use_Right_Window = 1
"当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_File_Fold_Auto_Close = 1
"只显示一个文件中的tag，默认为显示多个
let Tlist_Show_One_File = 1
"Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
"let Tlist_Sort_Type ='name'
"Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_GainFocus_On_ToggleOpen = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"设置窗体宽度为32，可以根据自己喜好设置
let Tlist_WinWidth = 32
"这里比较重要了，设置ctags的位置
let Tlist_Ctags_Cmd ='/usr/bin/ctags'


" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

" old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview

" simple recursive grep
" both recursive grep commands with internal or external (fast) grep
command! -nargs=1 RecurGrep lvimgrep /<args>/gj ./**/*.* | lopen | set nowrap
command! -nargs=1 RecurGrepFast silent exec 'lgrep! <q-args> ./**/*.*' | lopen
" mappings to call them
nmap ,R :RecurGrep 
nmap ,r :RecurGrepFast 
" mappings to call them with the default word as search text
nmap ,wR :RecurGrep <cword><CR>
nmap ,wr :RecurGrepFast <cword><CR>

" use 256 colors when possible
if &term =~? 'mlterm\|xterm\|xterm-256\|screen-256'
	let &t_Co = 256
    colorscheme molokai
else
    colorscheme delek
endif

" colors for gvim
if has('gui_running')
    colorscheme wombat
endif

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like zsh
" (autocomplete menu)
set wildmenu
set wildmode=full

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Pathogen load ----------------------------- 
"filetype off

"call pathogen#infect()
"call pathogen#helptags()

"filetype plugin indent on
"syntax on

" Tasklist ------------------------------
" show pending tasks list
map <F2> :TaskList<CR>

" NERDTree ----------------------------- 
" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" auto open or close NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" Tagbar (Tag支持)----------------------------- 
" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1
" let g:tagbar_left = 1

"按F5运行python"
map <F5> :call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    endif
endfunc

"map <F5> :Autopep8<CR> :w<CR> :call RunPython()<CR>
"function RunPython()
"    let mp = &makeprg
"    let ef = &errorformat
"    let exeFile = expand("%:t")
"    setlocal makeprg=python\ -u
"    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"    silent make %
"    copen
"    let &makeprg = mp
"    let &errorformat = ef
"endfunction

map <F8> <leader>ci <CR>

"热键设置
"map t :TlistToggle
"map <silent> <F9> :TlistToggle<cr>
"map <F3> :NERDTreeToggle<CR>


" CtrlP ------------------------------

" file finder mapping
let g:ctrlp_map = ',e'
" hidden some types files
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif           "Linux
" tags (symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>
" tags (symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>
" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>
" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" same as previous mappings, but calling with current word as default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

" Syntastic (语法检测)------------------------------

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" turn to next or previous errors, after open errors list
nmap <leader>n :lnext<CR>
nmap <leader>p :lprevious<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" syntastic checker for javascript.
" eslint is the only tool support JSX.
" If you don't need write JSX, you can use jshint.
" And eslint is slow, but not a hindrance
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous 
" setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

" Python-mode ------------------------------
call pymode#default('g:pymode_rope_autoimport', 0)
" don't use linter, we use syntastic for that
let g:pymode_lint_on_write = 0
let g:pymode_lint_signs = 0
" don't fold python code on open
let g:pymode_folding = 0
" don't load rope by default. Change to 1 to use rope
let g:pymode_rope = 0
" max line length
let g:pymode_options_max_line_length = 99
" open definitions on same window, and custom mappings for definitions and
" occurrences
let g:pymode_rope_goto_definition_bind = ',d'
let g:pymode_rope_goto_definition_cmd = 'e'
nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
nmap ,o :RopeFindOccurrences<CR>


" NeoComplCache (超全自动补全)------------------------------

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make 
" it play nice)

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1

let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()



" TabMan (Tab管理)------------------------------

" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tt'
let g:tabman_focus  = 'tf'
" Change the width of the TabMan window
"let g:tabman_width = 25
" And the position
"let g:tabman_side = 'left'
" Set this to 1 to show windows created by plugins, help and quickfix
"let g:tabman_specials = 0
" Set this to 0 to disable line numbering in the TabMan window
"let g:tabman_number = 1


" Autoclose ------------------------------

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" DragVisuals ------------------------------

" mappings to move blocks in 4 directions
vmap <expr> <S-M-LEFT> DVB_Drag('left')
vmap <expr> <S-M-RIGHT> DVB_Drag('right')
vmap <expr> <S-M-DOWN> DVB_Drag('down')
vmap <expr> <S-M-UP> DVB_Drag('up')
" mapping to duplicate block
vmap <expr> D DVB_Duplicate()

" Signify (Git支持)------------------------------

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)
" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227


" Window Chooser (类Tmux的窗口选择)------------------------------

" mapping
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

" Airline (状态栏)------------------------------

" let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#whitespace#enabled = 1

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'

" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

" ultisnips 片段管理
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" C/C++ -----------------

" A simple script go generate document for C/C++ function
"

"syntax on

"set nocompatible    " Use Vim defaults (much better!)

set smarttab
"set tabstop=4
"set shiftwidth=4
"set expandtab
"set autoindent
set cindent
"set fileencodings=utf-8,cp936,gb18030,big5,latin1
"set encoding=utf-8
set termencoding=utf-8
set number
retab


"public auto indent
set cino=g0
set nocp
"namespaces auto indent
function! IndentNamespace()
        let l:cline_num = line('.')
        let l:pline_num = prevnonblank(l:cline_num - 1)
        let l:pline = getline(l:pline_num)
        let l:retv = cindent('.')
        while l:pline =~# '\(^\s*{\s*\|^\s*//\|^\s*/\*\|\*/\s*$\)'
            let l:pline_num = prevnonblank(l:pline_num - 1)
            let l:pline = getline(l:pline_num)
        endwhile
        if l:pline =~# '^\s*namespace.*'
            let l:retv = 0
        endif
        return l:retv
endfunction
setlocal indentexpr=IndentNamespace()

if exists("loaded_gendocument")
    finish
endif
let loaded_gendocument = 1

let g:KeyWordsPrefixToErase = "inline,extern,\"C\",virtual,static"
let g:TokenNotInFunDeclare = "#,{,},;,"
let g:MAX_PARAM_LINE = 12

function! <SID>DateInsert()
	$read !date /T
endfunction

function! <SID>OpenNew()
	let s = input("input file name: ")
	execute  ":n"." ".s
endfunction


" Function : GetNthItemFromList (PRIVATE)
" Purpose  : Support reading items from a comma seperated list
"            Used to iterate all the extensions in an extension spec
"            Used to iterate all path prefixes
" Args     : list -- the list (extension spec, file paths) to iterate
"            n -- the extension to get
" Returns  : the nth item (extension, path) from the list (extension
"            spec), or "" for failure
" Author   : Michael Sharpe <feline@irendi.com>
" History  : Renamed from GetNthExtensionFromSpec to GetNthItemFromList
"            to reflect a more generic use of this function. -- Bindu
function! <SID>GetNthItemFromList(list, n, sep)
   let itemStart = 0
   let itemEnd = -1
   let pos = 0
   let item = ""
   let i = 0
   while (i != a:n)
      let itemStart = itemEnd + 1
      let itemEnd = match(a:list, a:sep, itemStart)
      let i = i + 1
      if (itemEnd == -1)
         if (i == a:n)
            let itemEnd = strlen(a:list)
         endif
         break
      endif
   endwhile
   if (itemEnd != -1)
      let item = strpart(a:list, itemStart, itemEnd - itemStart)
   endif
   return item
endfunction


function! DebugStr(s)
    return
	echo a:s
endfunction

function! <SID>MatchInList(s, l)
	let i=1
	let kw = <SID>GetNthItemFromList(a:l, i, ",")
	while (strlen(kw)>0)
		call DebugStr("MatchInList Nth ".kw)
		if (match(a:s, kw)!=-1)
			return i
		endif
		let i = i+1
		let kw = <SID>GetNthItemFromList(a:l, i, ",")
	endwhile
	return -1
endfunction


function! <SID>ErasePrefix(s)
	let i=1
	let ts = substitute(a:s, '^\s\+', "", "")
	let kw = <SID>GetNthItemFromList(g:KeyWordsPrefixToErase, i, ",")

	while (strlen(kw)>0)
		call  DebugStr("ErasePrefix Nth ".kw)
		let ts = substitute(ts, '^'.kw, "", "")
		let ts = substitute(ts, '^\s\+', "", "")
		let i = i+1
		let kw = <SID>GetNthItemFromList(g:KeyWordsPrefixToErase, i, ",")
	endwhile
	return ts
endfunction

function! <SID>GetCurFunction()
	let cur_line_no = line(".")
	let max_line_no = line("$")
	let fun_str = ""
	let raw_fun_str = ""
	let fun_line_count=0

	while (fun_line_count<g:MAX_PARAM_LINE && cur_line_no<=max_line_no)
		let cur_line = getline(cur_line_no)
		let cur_line_no = cur_line_no + 1
		let fun_line_count = fun_line_count+1
		if ( strlen(cur_line)>0 )
			let raw_fun_str = raw_fun_str . cur_line . " \n"
		endif
	endwhile

	call DebugStr("raw_fun_str ".raw_fun_str)

	let idx =0
	let fun_over=0
	let raw_fun_str_len = strlen(raw_fun_str)
	let quote=0
	while (idx<raw_fun_str_len && fun_over==0)
		let cur_char = raw_fun_str[idx]
		"exec DebugStr("cur_char:".cur_char)
		let idx = idx+1

		if (cur_char=="/")
			"check next char
			let next_char = raw_fun_str[idx]
			"exec DebugStr("next_char:".next_char)

			if (next_char=="/")
				"find /n
				let new_line_pos = match(raw_fun_str, "\n", idx)
				if (new_line_pos==-1)
					"echo "error format near //"
					return ""
				endif
				let idx = new_line_pos+1
				continue
			elseif (next_char=="*")
				let idx = idx+1
				let right_pos = match(raw_fun_str, "*/", idx)
				if (right_pos==-1)
					 "error format near /*"
					return ""
				endif
				let idx = right_pos+2
				continue
			else
				 "error format near /"
				return ""
			endif
		endif

		if (cur_char=="(")
			let quote = quote+1
		endif

		if (cur_char==")")
			let quote = quote-1
			if (quote==0)
				let fun_over=1
			endif
		endif

		if (cur_char!="\n")
			let fun_str = fun_str . cur_char
        else
            exec DebugStr("fun_str:".fun_str)
            let is_py = <SID>IsPythonEnv()
            if (is_py == 1 && match(fun_str, "class") == 0)
                let fun_over=1
                let fun_str = strpart(fun_str, 0, strlen(fun_str) - 2) . "()"
            endif
		endif
		"exec DebugStr(fun_str)
	endwhile


	if (fun_over==1)
		if ( <SID>MatchInList(fun_str, g:TokenNotInFunDeclare)==-1)
			return <SID>ErasePrefix(fun_str)
		endif
	endif

	 "can't find function format!"
	return ""

endfunction


"pass in : ' int a[23] '
"return  : "int[23],a"
function! <SID>GetSingleParamInfo(s, isparam)
	" unsigned int * ass [1][2]

	let single_param = a:s
	call DebugStr("single param ".single_param)


	if (a:isparam)
		" erase default value , eg int a = 10
		let single_param = substitute(single_param, '=\(.\+\)', "", "g")
	endif

	" erase ending blank
	let single_param = substitute(single_param, '\(\s\+\)$' , "", "")

	" erase blank before '['
	let single_param = substitute(single_param, '\(\s\+\)[', "[", "g")
	"exec DebugStr(single_param)

	let single_param = substitute(single_param, '^\s\+', "", "")
	"exec DebugStr(single_param)

	" erase blank before '*' | '&'
	let single_param = substitute(single_param, '\(\s\+\)\*', "*", "g")
	let single_param = substitute(single_param, '\(\s\+\)&', "\\&", "g")
	"exec DebugStr(single_param)

	" insert blank to * (&), eg int *i => int * i
	let single_param = substitute(single_param, '\(\*\+\)', "\\0 ", "")
	let single_param = substitute(single_param, '\(&\+\)', "\\0 ", "")

	call DebugStr("single param processed:" .single_param. "END")
	"call DebugStr("single param processed:" .single_param)

	"let match_res = matchlist(single_param, '\(.\+\)\s\+\(\S\+\)')
	"'^\s/*\(.\+\)\s\+\(.\+\)\s/*$')
	"exec DebugStr(match_res)
	"let type = match_res[1]
	"let name = match_res[2]

	let pos = match(single_param, '\S\+$')

	if (pos==-1)
		call DebugStr("pos==-1")
		return ""
	endif

	let type = strpart(single_param, 0, pos-1)
	let name = strpart(single_param, pos)

	" type can be "", eg c++ constructor
	if (strlen(name)==0)
		call DebugStr("strlen(name)==0")
		return ""
	endif

    let is_py = <SID>IsPythonEnv()
    if (is_py == 0)
        if (a:isparam && strlen(type)==0)
            call DebugStr("a:isparam && strlen(type)==0")
            return ""
        endif
    endif

	let bpos = match(name, "[")
	if (bpos!=-1)
		let type = type . strpart(name, bpos)
		let name = strpart(name, 0, bpos)
	endif

	"trim final string
	let type = substitute(type, '\(\s\+\)$' , "", "")
	let name = substitute(name, '\(\s\+\)$' , "", "")

	let ret = type.",". name.","
	call DebugStr("RET GetSingleParamInfo " . ret)
	return ret
endfunction


" format are "type,name,"
"  begin with function name and then "\n" then followed by param
function! <SID>GetFunctionInfo(fun_str)
	let param_start = match(a:fun_str, "(")
	let fun_info = ""

	if (param_start==-1)
		  "can't find '(' in function "
		return ""
	endif

	let fun_name_part = strpart(a:fun_str, 0, param_start)
	let param_start = param_start + 1
	let param_len   = strlen(a:fun_str) - param_start -1
	let fun_param_part = strpart(a:fun_str, param_start, param_len)

	call DebugStr("FUN :".fun_name_part)
	call DebugStr("PARAM :".fun_param_part)

	"analysis fun_name_part
	let temp = <SID>GetSingleParamInfo(fun_name_part, 0)
	if (strlen(temp)==0)
		 "function name analysis failed!!"
		return ""
	endif
	let fun_info = fun_info . temp

	"analysis fun_param_part
	let cur_idx = 0
	let comma_idx = match(fun_param_part, "," , cur_idx)
	while (comma_idx!=-1)
		"for earch param
		let single_param = strpart(fun_param_part, cur_idx, comma_idx - cur_idx)
		let temp = <SID>GetSingleParamInfo(single_param, 1)
		if (strlen(temp)>0)
			let fun_info = fun_info.temp
			let cur_idx = comma_idx + 1
			let comma_idx = match(fun_param_part, "," , cur_idx)
		else
			echo "function param analysis failed!!"
			return ""
		endif
	endwhile

	"last param
	let single_param = strpart(fun_param_part, cur_idx)

	if (strlen(matchstr(single_param, '\S'))>0)
		let temp = <SID>GetSingleParamInfo(single_param, 1)
		if (strlen(temp)>0)
			let fun_info = fun_info.temp
		"else
			"echo "function param analysis failed!!"
		"	return ""
		endif

	endif

	return fun_info
endfunction


function! <SID>GetUserName()
	let home = $HOME
	let user = matchstr(home, '[^/\\]\+$')
	return user
endfunction

function! <SID>GetDate()
	"windows
	let date = system("date /T")
	if (v:shell_error!=0)
		"linux
		let date = system("date +\"%Y-%m-%d %H:%M:%S\" ")
	endif

	if (date[strlen(date)-1]=="\n")
		let date = strpart(date, 0, strlen(date)-1)
	endif
	return date
endfunction

function! <SID>GetYear()
	return strftime("%Y")
endfunction

function! <SID>GetLastModifiedDate()
	let fname = expand("%")
	let	date = getftime(fname)
	let strDate = strftime("%c", date)
	return strDate
endfunction
"     /**
"      * @brief This is a function called Test
"      *
"      * Details about Test
"      * @param a an integer argument.
"      * @param s a constant character pointer.
"      * @return The test results
"      * @author sprite
"      * @date 2006-07:
"      * @version 1.0
"      * @todo
"      */

function! <SID>GetDoxygenStyleDoc(fun_info, leading_blank)

	let doc=""
	let idx=1
	let doc  = a:leading_blank."/**\n"

	let ret_type = <SID>GetNthItemFromList(a:fun_info, idx, ",")
	let idx = idx + 1
	let fun_name = <SID>GetNthItemFromList(a:fun_info, idx, ",")
	let idx = idx + 1
	if (strlen(fun_name)==0)
		return ""
	endif

	"let doc = doc . a:leading_blank." * @brief brief description about ".fun_name."\n"
	let doc = doc . a:leading_blank." * @brief \n"
	let doc = doc. a:leading_blank." *\n"
	"let doc = doc . a:leading_blank." * detail description about ".fun_name."\n"

	"gen function name part
	let type = <SID>GetNthItemFromList(a:fun_info, idx, ",")
	let idx = idx + 1
	let name = <SID>GetNthItemFromList(a:fun_info, idx, ",")
	let idx = idx + 1

	"gen param part
	while(strlen(type)>0 && strlen(name)>0)

		let doc = doc . a:leading_blank." * @param [in] ".name." "."  : ".type.  "\n"
		let type = <SID>GetNthItemFromList(a:fun_info, idx, ",")
		let idx = idx + 1
		let name = <SID>GetNthItemFromList(a:fun_info, idx, ",")
		let idx = idx + 1
	endwhile

	if (! (strlen(type)==0 && strlen(name)==0) )
		return ""
	endif

	"ret
	if (strlen(ret_type)>0)
		let doc = doc . a:leading_blank." * @return  ".ret_type. " \n"
		let doc = doc . a:leading_blank." * @retval  "." \n"
	endif

	"other
  let doc = doc . a:leading_blank." * @see \n"
	let doc = doc . a:leading_blank." * @author ".<SID>GetUserName()."\n"
  let doc = doc . a:leading_blank." * @date ".<SID>GetDate()."\n"
	"let doc = doc . a:leading_blank." * @version 1.0.0 \n"
	"let doc = doc . a:leading_blank." * @todo \n"

	" end
	let doc = doc . a:leading_blank."**/\n"
	return doc
endfunction
function! <SID>GetFileName()
	let fname = expand("%")
	return fname
endfunction
function! <SID>GetVer()
  let fname = system("cvs st ".<SID>GetFileName()." |grep -o \"Sticky Tag:.*\"|awk -F'[\t\t]' '{print $3}' ")
  if (strlen(matchstr(fname, "PD_BL")) <= 0)
	  let fname = system("cvs st ".<SID>GetFileName()."|grep -o \"Working revision:.*\"|awk -F'[\t]' '{print $2}' ")
	  if ( strlen(fname) > 6)
		  let fname = "1.0"
	  endif
  endif
	if (fname[strlen(fname)-1]=="\n")
		let fname = strpart(fname,0,strlen(fname)-1)
	endif
	return fname
endfunction

function! <SID>GetEmail()
	let home = $HOME
	let user = matchstr(home, '[^/\\]\+$')
	return user . "@outlook.com"
endfunction

function! <SID>GetDoxFileHeader(leading_blank)

	let doc = ""
  let doc = doc. a:leading_blank."/***************************************************************************\n"
	let doc = doc. a:leading_blank." * \n"
  let doc = doc. a:leading_blank." * Copyright (c) ".<SID>GetYear()." zhshyu.com, Inc. All Rights Reserved\n"
  let doc = doc. a:leading_blank." * $Id$ \n"
  let doc = doc. a:leading_blank." * \n"
  let doc = doc. a:leading_blank." **************************************************************************/\n"
  let doc = doc. a:leading_blank." \n "
  let doc = doc. a:leading_blank."/**\n"
	let doc = doc. a:leading_blank." * @file ".<SID>GetFileName()."\n"
	let doc = doc. a:leading_blank." * @author ".<SID>GetUserName()."(".<SID>GetEmail().")\n"
	let doc = doc. a:leading_blank." * @date ".<SID>GetDate()."\n"
	let doc = doc. a:leading_blank." * @version $Revision$ \n"
	let doc = doc. a:leading_blank." * @brief \n"
	let doc = doc. a:leading_blank." *  \n"
	let doc = doc. a:leading_blank." **/\n"
  call append(line('$'), "/* vim: set ts=4 sw=4 sts=4 tw=100 */")
	return doc


endfunction

function! <SID>GetDoxMainpage(leading_blank)

	let doc = ""
	let doc = doc.a:leading_blank."/**\n"
	let doc = doc.a:leading_blank."* @mainpage xxx½éÉÜ¼°Ê¹ÓÃ·½·¨ \n"
	let doc = doc.a:leading_blank."* \<h2>¸ÅÊö</h2>\n"
	let doc = doc.a:leading_blank."* <p>xxxxxxxxxxx</p>\n"
	let doc = doc.a:leading_blank."* <ol></ol>\n"
	let doc = doc.a:leading_blank."* <h2>Ê¹ÓÃ·½·¨</h2>\n"
	let doc = doc.a:leading_blank."* <hr>\n"
	let doc = doc.a:leading_blank."* <p>ÎÊÌâÇë·¢ËÍ<a href=\"mailto:".<SID>GetEmail()."?subject=[dilib]\">.".<SID>GetEmail()."</a></p>\n"
	let doc = doc. a:leading_blank."*/\n"
	return doc
endfunction

function! <SID>GetDoxClass(leading_blank)
	let doc = ""
	let doc = doc.a:leading_blank."/**\n"
	let doc = doc. a:leading_blank."* @brief \n"
	let doc = doc. a:leading_blank."*  \n"
	let doc = doc. a:leading_blank."*  \n"
	let doc = doc. a:leading_blank."*/\n"
	return doc
endfunction
function! <SID>GetDoxGroup(leading_blank)
	let doc = ""
	let doc = doc.a:leading_blank."/** @addtogroup groupname\n"
	let doc = doc. a:leading_blank."*  \n"
	let doc = doc. a:leading_blank."* <ul>\n"
	let doc = doc. a:leading_blank."* <li> item1\n"
	let doc = doc. a:leading_blank."* 	<ol>\n"
	let doc = doc. a:leading_blank."* 	<li> subitem11\n"
	let doc = doc. a:leading_blank."* 	<li> subitem12\n"
	let doc = doc. a:leading_blank."* 	</ol>\n"
	let doc = doc. a:leading_blank."* <li> item2\n"
	let doc = doc. a:leading_blank."* 	<ol>\n"
	let doc = doc. a:leading_blank."* 	<li> subitem21\n"
	let doc = doc. a:leading_blank."* 	<li> subitem22\n"
	let doc = doc. a:leading_blank."* 	</ol>\n"
	let doc = doc. a:leading_blank."* </ul>\n"
	let doc = doc. a:leading_blank."* @{\n"
	let doc = doc. a:leading_blank."*/\n"
	let doc = doc. a:leading_blank." \n"
	let doc = doc. a:leading_blank."/** @} */\n"
	return doc
endfunction

function! <SID>ReTab()
    retab
    startinsert!

endfunction

function! <SID>GenCppDoc()
	let l:synopsisLine=line(".")+1
    let l:synopsisCol=col(".")

	let cur_line = line(".")
       	let first_line = getline(cur_line)
	let leading_blank = ""

	if (strlen(matchstr(first_line, '\S'))==0)
		return
	else
		let leading_blank = matchstr(first_line, '\(\s*\)')
	endif

	let fun_str = <SID>GetCurFunction()
	if (strlen(fun_str)==0)
		"exec cursor(cur_line, 0)
		return
	endif

	call DebugStr("FUN_BODY ".fun_str)

	let fun_info = <SID>GetFunctionInfo(fun_str)
	call DebugStr("fun_info ".fun_info."END")

	let doc = <SID>GetDoxygenStyleDoc(fun_info, leading_blank)
	"echo "doc \n".expand(doc)

	if (strlen(doc)>0)
		let idx =1
		let li = <SID>GetNthItemFromList(doc, idx, "\n")
		while (strlen(li)>0)
			call append( cur_line-1, li.expand("<CR>"))
			let idx = idx + 1
			let cur_line = cur_line + 1
			let li = <SID>GetNthItemFromList(doc, idx, "\n")
		endwhile
	endif
    exec l:synopsisLine
    exec "normal " . l:synopsisCol . "|"
    startinsert!

endfunction
function! <SID>GetDoxFH(type)
	let l:synopsisLine=line(".")+1
    let l:synopsisCol=col(".")

	let cur_line = line(".")
    let first_line = getline(cur_line)
	let leading_blank = matchstr(first_line, '\(\s*\)')
	if (a:type == 1)

		let doc = <SID>GetDoxFileHeader(leading_blank)
	elseif (a:type == 0)
		let doc = <SID>GetDoxMainpage(leading_blank)
	elseif (a:type == 2)
		let doc = <SID>GetDoxClass(leading_blank)
		if (strlen(matchstr(first_line, '\S'))==0)
			return
		endif
	elseif (a:type == 3)
		let doc = <SID>GetDoxGroup(leading_blank)
	elseif (a:type == 4)
		let doc = <SID>GetPyDocFileHeader(leading_blank)
	endif
	if (strlen(doc)>0)
		let idx =1
		let li = <SID>GetNthItemFromList(doc, idx, "\n")
		while (strlen(li)>0)
			call append( cur_line-1, li.expand("<CR>"))
			let idx = idx + 1
			let cur_line = cur_line + 1
			let li = <SID>GetNthItemFromList(doc, idx, "\n")
		endwhile
	endif

    exec l:synopsisCol
    exec "normal " . l:synopsisCol . "|"
    startinsert!


endfunction

function! <SID>ValCppComment()

  call cursor(line('.'), col('$'))
  exec "normal! a\t\t  /**<        */"
  call cursor(line('.'), col('$')-9)

endfunction

function! <SID>InsertFormat()
  call <SID>GetDoxFH(1)
  let idx = 0
    "20
  while (idx > 0)
    call append(line('$') - 1, "")
    let idx = idx - 1
  endwhile

  "call append(line('$'), "/* vim: set ts=4 sw=4 sts=4 tw=100 */")
  call cursor(15, 11)
endfunction

function! <SID>InsertHeadFormat()
  let s = toupper(<SID>GetFileName())
  let s = substitute(s, "[\.]", "_", "g")
" modified by anqin to fix the unknown display
  call append(line('$')-2, "#ifndef ". s. "")
  call append(line('$')-2, "#define ". s. "")
  call append(line('$')-2, "")
  call append(line('$')-2, "#endif  // ". s. "")
endfunction


"   Python -----------------

""""""""""""""""""""""""""""""""""""""""""""""""""
"   python specification
"   by shiyuzhaocn@outlook.com
"
""""""""""""""""""""""""""""""""""""""""""""""""""


function! <SID>GetPydocStyleDoc(fun_info, leading_blank)
    let doc = ""
    let idx = 1
    let doc  = a:leading_blank."    \"\"\"\n"

    let ret_type = <SID>GetNthItemFromList(a:fun_info, idx, ",")
    let idx = idx + 1
    let fun_name = <SID>GetNthItemFromList(a:fun_info, idx, ",")
    let idx = idx + 1
    if (strlen(fun_name)==0)
        return ""
    endif

    "let doc = doc . a:leading_blank." * @brief brief description about ".fun_name."\n"
    let doc = doc . a:leading_blank."        brief info for: ".fun_name."\n"
    let doc = doc. a:leading_blank."        \n"
    let doc = doc. a:leading_blank."        Args:\n"
    "let doc = doc . a:leading_blank." * detail description about ".fun_name."\n"

    "gen function name part
    let type = <SID>GetNthItemFromList(a:fun_info, idx, ",")
    let idx = idx + 1
    let name = <SID>GetNthItemFromList(a:fun_info, idx, ",")
    let idx = idx + 1

    "gen param part
    while(strlen(name) > 0)
        if (strlen(<SID>ErasePrefix(name)) > 0)
            let doc = doc . a:leading_blank."    ".name." ".":\n"
        endif

        let type = <SID>GetNthItemFromList(a:fun_info, idx, ",")
        let idx = idx + 1
        let name = <SID>GetNthItemFromList(a:fun_info, idx, ",")
        let idx = idx + 1
    endwhile

    if (! (strlen(type) == 0 && strlen(name) == 0) )
        return ""
    endif

    "ret
"    if (strlen(ret_type) > 0)
        let doc = doc . a:leading_blank."        Return:  "." \n"
"        let doc = doc . a:leading_blank."  retval  "." \n"
"    endif

    "other
    let doc = doc . a:leading_blank."        Raise: \n"
"    let doc = doc . a:leading_blank." * @note \n"
"    let doc = doc . a:leading_blank." * @author ".<SID>GetUserName()."\n"
"    let doc = doc . a:leading_blank." * @date ".<SID>GetDate()."\n"
    "let doc = doc . a:leading_blank." * @version 1.0.0 \n"
    "let doc = doc . a:leading_blank." * @todo \n"

    " end
    let doc = doc . a:leading_blank."    \"\"\"\n"
    return doc
endfunction


function! <SID>GetPyDocFileHeader(leading_blank)
    let doc = "#!/usr/bin/env python\n"
    let doc = doc. a:leading_blank."# -*- coding: utf-8 -*-\n"
    let doc = doc. a:leading_blank."########################################################################\n"
    let doc = doc. a:leading_blank."# \n"
    let doc = doc. a:leading_blank."# Copyright (c) ".<SID>GetYear()." zhshyu.com, Inc. All Rights Reserved\n"
    let doc = doc. a:leading_blank."# \n"
    let doc = doc. a:leading_blank."########################################################################\n"
    let doc = doc. a:leading_blank." \n"
    let doc = doc. a:leading_blank."\"\"\"\n"
    let doc = doc. a:leading_blank."File: ".<SID>GetFileName()."\n"
    let doc = doc. a:leading_blank."Author: ".<SID>GetUserName()."(".<SID>GetUserName()."@zhshyu.com)\n"
    let doc = doc. a:leading_blank."Date: ".<SID>GetDate()."\n"
    let doc = doc. a:leading_blank."\"\"\"\n"
    return doc
endfunction

function! <SID>GenPyDoc()
    call DebugStr("call: GenPyDoc()")

    let l:synopsisLine = line(".") + 1
    let l:synopsisCol = col(".")

    let cur_line = line(".")
        let first_line = getline(cur_line)
    let leading_blank = ""

    call DebugStr("CUR_LINE ".first_line)
    if (strlen(matchstr(first_line, '[def|class]')) == 0)
        call DebugStr("FUN_LINE ".first_line)
        return
    else
        let leading_blank = matchstr(first_line, '\(\s*\)')
    endif

    let fun_str = <SID>GetCurFunction()
    if (strlen(fun_str) == 0)
        "exec cursor(cur_line, 0)
        call DebugStr("FUN_LINE ".first_line)
        return
    endif

    call DebugStr("FUN_BODY ".fun_str)

    let fun_info = <SID>GetFunctionInfo(fun_str)
    call DebugStr("fun_info ".fun_info."END")

    let doc = <SID>GetPydocStyleDoc(fun_info, leading_blank)
"    echo "doc \n".expand(doc)

    if (strlen(doc) > 0)
        let idx = 1
        let li = <SID>GetNthItemFromList(doc, idx, "\n")
        while (strlen(li) > 0)
            call append(cur_line, li.expand("<CR>"))
            let idx = idx + 1
            let cur_line = cur_line + 1
            let li = <SID>GetNthItemFromList(doc, idx, "\n")
        endwhile
    endif
    exec l:synopsisLine
    exec "normal " . l:synopsisCol . "|"
    startinsert!
endfunction

function! <SID>ValPyComment()
    call cursor(line('.'), col('$'))
    exec "normal! a\t # "
    call cursor(line('.'), col('$')-3)
    startinsert!
endfunction


function! <SID>InsertPyFormat()
  call <SID>GetDoxFH(4)
  call cursor(13, 1)
endfunction

function! <SID>IsPythonEnv()
    let cur_ft = &filetype
    let ret = 0
    call DebugStr("file type:".cur_ft)
    if (match(cur_ft, 'python') != -1)
        let ret = 1
    endif
    return ret
endfunction

function! <SID>GenDoc()
    let is_py = <SID>IsPythonEnv()
    if (is_py == 1)
        call <SID>GenPyDoc()
    else
        call <SID>GenCppDoc()
    endif
endfunction


function! <SID>ValPyComment()
    call cursor(line('.'), col('$'))
    exec "normal! a\t # "
    call cursor(line('.'), col('$')-3)
    startinsert!
endfunction

function! <SID>ValComment()
    let is_py = <SID>IsPythonEnv()
    if (is_py == 1)
        call <SID>ValPyComment()
    else
        call <SID>ValCppComment()
    endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""

"autoindent
map  ;nb      gg=G
map  ;re      :call <SID>ReTab()<CR>
imap ;re <ESC>:call <SID>ReTab()<CR>
"function
map  ;df      :call <SID>GenDoc()<CR>
imap ;df <ESC>:call <SID>GenDoc()<CR>
"variable
map  ;dv      :call <SID>ValComment()<CR>
imap ;dv <ESC>:call <SID>ValComment()<CR>
"main page
map  ;dm      :call <SID>GetDoxFH(0)<CR>
imap ;dm <ESC>:call <SID>GetDoxFH(0)<CR>
autocmd FileType c,cpp,java,sh,awk,vim,sed,perl nnoremap <silent> <Leader>a :call <SID>GetDoxFH(0)<CR>
"start
map  ;ds      :call <SID>GetDoxFH(1)<CR>
imap ;ds <ESC>:call <SID>GetDoxFH(1)<CR>
autocmd FileType c,cpp,java,sh,awk,vim,sed,perl nnoremap <silent> <Leader>s :call <SID>GetDoxFH(1)<CR>
"description
map  ;dd      mz:call <SID>GetDoxFH(2)<CR><Esc>'z
imap ;dd <ESC>;dda
autocmd FileType c,cpp,java,sh,awk,vim,sed,perl nnoremap <silent> <Leader>d :call <SID>GetDoxFH(2)<CR>
"group
map  ;dg      :call <SID>GetDoxFH(3)<CR>
imap ;dg <ESC>:call <SID>GetDoxFH(3)<CR>
autocmd FileType c,cpp,java,sh,awk,vim,sed,perl nnoremap <silent> <Leader>f :call <SID>GetDoxFH(3)<CR>
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType proto   let b:comment_leader = '# '
autocmd BufNewFile *.h,*.cpp,*.c,*.cc,*.java,*.pl,*.php  :call <SID>InsertFormat()
autocmd BufNewFile *h :call <SID>InsertHeadFormat()
autocmd BufNewFile *.py :call <SID>InsertPyFormat()


" shell -------------------------------------

" new shell file set title and turn to endline
" Author: shiyuzhaocn@outlook.com
" Date: 2017-12-13
" Version: 0.1

autocmd BufNewFile *.sh exec ":call SetTitle()"
function SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    endif
endfunction
autocmd BufNewFile * normal G


" Vim-jsx ------------------------------

" if you use JSX syntax in .js file, please enable it.
let g:jsx_ext_required = 0


" (Markdown实时预览)
" Vim-markdown ------------------------------

" Disabled automatically folding
"let g:vim_markdown_folding_disabled=1
" LeTeX math
"let g:vim_markdown_math=1
" Highlight YAML frontmatter
"let g:vim_markdown_frontmatter=1

" Vim-instant-markdown -----------------

" If it takes your system too much, you can specify
" let g:instant_markdown_slow = 1
" if you don't want to manually control it
" you can open this setting
" and when you open this, you can manually trigger preview
" via the command :InstantMarkdownPreview
"let g:instant_markdown_autostart = 0
