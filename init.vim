set autoindent
set expandtab
set foldmethod=manual
set go-=T
set hlsearch
set incsearch
set mouse=a
set nofoldenable
set number
set ruler
set shiftwidth=4
set smartindent
set softtabstop=4
set ts=4
set spelllang=en_us

" colorscheme elflord
colorscheme desert


filetype on
filetype plugin on
filetype indent on

syntax enable

"NERDTree and Tlist key binding
let Tlist_Use_Right_Window=1
" map <F2> :NERDTree<CR>
" map <F3> :Tlist<CR>

" tagbar
let tagbar_right=1
let tagbar_width=32
let g:tagbar_compact=1

let g:tagbar_type_cpp = {
        \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
        \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
 \ }

" PATHGEN CONFIGURATION
set runtimepath^=~/.vim/bundle/ctrlp.vim
" execute pathogen#infect()

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
"colorscheme solarized

"change <leader> from '\' to ','
let mapleader = ","

nmap <silent> <leader>hh :NERDTreeToggle<CR>
nmap <silent> <leader>ll :TagbarToggle<CR>
map <silent> <leader>mm :MBEToggle<CR>

" search
map <silent> <leader>ss :CtrlSF<CR>

" winmanager setting, but this plugin is buggy
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"let g:bufExplorerMaxHeight = 30
"let g:miniBufExplorerMoreThanOne = 0
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
"nmap <silent> <leader>wm :WMToggle<cr> 

" LOOKUPFILE SETTING
let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_AllowNewFiles = 0
nmap <silent> <leader>lt :LUTags<cr>
nmap <silent> <leader>lb :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>

"vim configuration shortcut
nnoremap <silent> <leader>cf :vsplit $MYVIMRC<cr>
nnoremap <silent> <leader>sf :source $MYVIMRC<cr>

"insert current date and time
"nmap <silent> <leader>dd :r !date "+\%Y-\%m-\%d \%H:\%M:\%S"<cr>
nmap <silent> <leader>dd :r !date "+\%Y-\%m-\%d"<cr>

" cscope
nmap <silent> <leader>c :!cscope -bcqR<cr>
nmap <silent> <leader>a :cs add cscope.out<cr>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" TMUX
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>


" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Mizuchi/STL-Syntax.git'
"Plugin 'Shougo/neocomplcache'
"Plugin 'Shougo/neocomplete.vim.git'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'bling/vim-airline'
"Plugin 'bling/vim-bufferline'
Plugin 'christoomey/vim-tmux-navigator'
" <c-p> in find file mode
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'flazz/vim-colorschemes'
"Plugin 'garbas/vim-snipmate'
"Plugin 'gcmt/wildfire.vim'
Plugin 'godlygeek/tabular'
"Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'kana/vim-textobj-indent'
"Plugin 'kana/vim-textobj-user'
"Plugin 'kristijanhusak/vim-multiple-cursors'
"Plugin 'matchit.zip'
"Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
"Plugin 'mbbill/undotree'
"Plugin 'mhinz/vim-signify'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'osyo-manga/vim-over'
" <silent> <leader>cc: comment code; <silent> <leader>cu: uncomment code
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'spf13/vim-colors'
"Plugin 'tacahiroy/ctrlp-funky'
"Plugin 'tomtom/tlib_vim'
"Plugin 'tpope/vim-abolish.git'
"Plugin 'tpope/vim-commentary'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/a.vim'
"Plugin 'vim-scripts/restore_view.vim'
"Plugin 'vim-scripts/sessionman.vim'
Plugin 'yegappan/grep.git'
Plugin 'yegappan/greplace'
Plugin 'majutsushi/tagbar'
Plugin 'kshenoy/vim-signature'
Plugin 'dyng/ctrlsf.vim'
" Plugin 'Valloric/YouCompleteMe'
" :TemplateHere *.leetcode 
Plugin 'git://github.com/aperezdc/vim-template.git'
" :DirDiff dir1 dir2
Plugin 'git://github.com/will133/vim-dirdiff.git'
Plugin 'git://github.com/alvan/vim-closetag.git'
Plugin 'lervag/vimtex'
Plugin 'vhdirk/vim-cmake'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'gilligan/vim-lldb'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'Yggdroot/indentLine'
Plugin '907th/vim-auto-save'
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


" auto save session
let g:session_autoload = 'no'

set clipboard=unnamed

let g:email='qingyun.oracle@gmail.com'
let g:ycm_server_python_interpreter='/usr/local/bin/python'

inoremap jk <esc>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel

nnoremap <leader>json :%!python -m json.tool<CR>

" !!! this piece of configuration mess up the .vimrc config
" auto save folding
" augroup remember_folds
"  autocmd!
"  au BufWinLeave ?* mkview 1
"  au BufWinEnter ?* silent! loadview 1
" augroup END

" delete word after cursor in insert mode
inoremap <C-e> <C-o>de

set enc=utf-8

" vertical terminal
" split | terminal<CR>
" or vs | te
" enter normal mode in terminal to scroll screen
" <C-\><C-N>

" source ~/.vimrc_public
"

" enable autosave  on vim startup
let g:auto_save = 1 
