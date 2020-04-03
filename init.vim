"
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/dr_midwest/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/dr_midwest/.cache/dein')
  call dein#begin('/Users/dr_midwest/.cache/dein')

  " Let dein manage dein
  " Required:
"##################<<plugins>>####################"

  "call dein#add('/Users/dr_midwest/.cache/dein/repos/github.com/Shougo/dein.vim')
  "call dein#add('~/.cache/dein/repos/github.com/vim-airline')
  "call dein#add('~/.cache/dein/repos/github.com/vim-airline-themes')
  "call dein#add('~/.cache/dein/repos/github.com/vim-quickrun')  
  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  let g:rc_dir = expand('~/.config/nvim') "<- dein.toml dein_lazy.toml
  let s:toml = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


"Vim-airline preference
let g:airline_theme='violet' "themes setting
let g:airline_powerline_font = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1 "all buffers show

"symbol difinition
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
 
"左側に使用されるセパレータ
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
"右側に使用されるセパレータ
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'		
let g:airline_symbols.maxlinenr = '㏑'	
let g:airline_symbols.branch = '⭠'		
let g:airline_symbols.paste = 'ρ'			
let g:airline_symbols.spell = 'Ꞩ'			
let g:airline_symbols.whitespace = 'Ξ'	


