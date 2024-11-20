" Options
set background=dark		                            " apply dark background	
set clipboard=unnamedplus	                        " enable clipboard between other applications
set cursorline			                            " highligh current line
set completeopt=noinsert,menuone,noselect			" auto-complete menu
set number			                                " shows line numbers
set relativenumber 		                            " show relative line numbers
set title			                                " show the file title
set wildmenu 			                            " show a more advanced menu for auto-completion suggestions
set inccommand=split
set splitbelow splitright

" Tabs
set expandtab  			" tabs to spaces
set shiftwidth=4			" number of spaces for indentation
set tabstop=4 			" number of spaces for tab

" Syntax highlihgting
filetype plugin indent on
syntax on

" Color support
set t_Co=256

" Plugins
call plug#begin()
    " Programming languages syntax highlighting
    Plug 'sheerun/vim-polyglot'

    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " autocompletion / formatter
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" File browser
let NERDTreeShowHidden=1

" CTRLP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Markdown
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

" Key bindings
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>

nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

augroup auto_commands
    autocmd BufWrite *.py call CocAction('format')
    autocmd FileType scss setlocal iskeyword+=@-@
augroup END
