call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Autocomplition
Plug 'valloric/youcompleteme'

" syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" kien/ctrlp.vim
Plug 'kien/ctrlp.vim'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Css color
Plug 'ap/vim-css-color'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'jacoborus/tender.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'sainnhe/sonokai', {'as': 'sonokai' }
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'sainnhe/edge'
Plug 'joshdick/onedark.vim'
Plug 'nightsense/carbonized'
"
"colorscheme carbonized-light
"colorscheme carbonized-dark


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

"colorscheme nightfly
if has('termguicolors')
    set termguicolors
endif

"let g:edge_style = 'aura'
"let g:efge_better_perfomance = 1

colorscheme onedark
"set background=dark

let g:mapleader=','
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

"let g:cpp_no_function_highlight = 1


let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
let g:airline_theme='moonfly'

set encoding=utf8
syntax on
filetype plugin indent on
set number
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set number
set hlsearch
set incsearch
set completeopt-=preview
set tags=./tags,tags;$HOME

"syn match Function /\(new\s\+\)\@<=\w\+/
"syn match Function /\w\+\((\)\@=/

" Mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

