" !!! if in Windows, please see here to completely setup Plugin Vundle
" https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows
" clean defualt vim settings	http://blog.changyy.org/2012/02/vim-vimrc-plugin.html
set fdm=marker	" use "za" to open/close the vim folder
" general settings {{{
	" set encoding=utf-8
	" export LC_ALL='en_US.utf-8'	" default
	" export LANG='zh_TW.UTF-8'	" default
	set laststatus=2	" ls
	set mouse=nv
	set number	" nu
	set tabstop=4	" ts
	set t_Co=256
	syntax on
	colorscheme slate
	" set guifont=Consolas:h11:cANSI " for Windows
	set guifont=monospace\ 14 " for Linux (download example: cp monaco.ttf /usr/share/fonts/truetype/; fc-cache -f -v)
	" set guifont=Monaco:h16 " for Mac OSX
" }}}
" manage vim plugins (by Vundle) {{{
	" auto install settings (1) {{{
	" ignore...becuase I want to use this setting on windows' gVim, too
	"	" cf. http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
	"	let iCanHazVundle=1
	"	let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
	"	if !filereadable(vundle_readme)
	"		echo "Install vundle......"
	"		echo ""
	"		echo ""
	"		echo "remember to set your name and email for git"
	"		echo "git config user.name \"yourname\""
	"		echo "git config user.email \"youremail@abc.com\""
	"		echo ""
	"		echo ""
	"		silent !mkdir -p ~/.vim/bundle/Vundle.vim
	"		silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	"		let iCanHazVundle=0
	"	endif
	" }}}
	" Vundle settings (1) {{{
		set nocompatible	" be iMproved, required
		filetype off	" required
		" set the runtime path to include Vundle and initialize
		" if on Linux {{{
			set rtp+=~/.vim/bundle/Vundle.vim
			call vundle#begin()
		" }}}
		" if on Windows {{{
		"	set rtp+=~/vimfiles/bundle/Vundle.vim/
		"	let path='~/vimfiles/bundle'
		"	call vundle#begin(path)
		" }}}
		" alternatively, pass a path where Vundle should install plugins
		" call vundle#begin('~/some/path/here')
		" Keep Plugin commands between vundle#begin/end.
		Plugin 'gmarik/Vundle.vim'	" let Vundle manage Vundle, required
	" }}}
	" my plugins {{{
		" Trinity + Source Explorer + Tag List + NERD_tree {{{
			Plugin 'Trinity'	" same as Plugin 'wesleyche/Trinity'
			Plugin 'SrcExpl'	" same as Plugin 'wesleyche/SrcExpl'
			Plugin 'taglist.vim'	" same as Plugin 'vim-scripts/taglist.vim'
			Plugin 'scrooloose/nerdtree'	" (not sure) wait too long with Plugin 'nerdtree'
		" }}}
		" to trace code {{{
			Plugin 'supertab'	" same as Plugin 'ervandew/supertab'
			Plugin 'cppcomplete'	" same as Plugin 'vim-scripts/cppcomplete'
			" Plugin 'Rip-Rip/clang_complete'	" You need Vim 7.3 or higher
			" Plugin 'Shougo/neocomplete.vim'	" It requires "if_lua" enabled Vim(7.3.885 or above).
			" Plugin 'Valloric/YouCompleteMe'	" same as Plugin ''	" YouCompleteMe unavailable: requires Vim 7.3.584+
		" }}}
		" to debug {{{
			" Plugin 'larrupingpig/vimgdb-for-vim7.3'
			" Plugin 'larrupingpig/vimgdb-for-vim7.4'
		" }}}
		" to find files {{{
			" Plugin 'kien/ctrlp.vim'	" conflict with vim's session
			Plugin 'L9'	" needed by Plugin FuzzyFinder
			Plugin 'FuzzyFinder'	" http://www.vim.org/scripts/script.php?script_id=1984
						" http://rickey-nctu.blogspot.tw/2009/02/vim-fuzzyfinder.html
			" Plugin 'Shougo/unite.vim'	" a little complex, need to study..	http://bootleq.blogspot.tw/2011/07/unitevim.html
		" }}}
		" to manage note {{{
			Plugin 'tpope/vim-surround'	" (build like(...)) guide: http://blog.eddie.com.tw/2012/06/01/screencast-3-vim-plugins/
			Plugin 'vimwiki'	" guide: http://gvimmanual.blogspot.tw/p/vimwiki.html
		" }}}
		" Plugin 'c9s/gsession.vim'	" manage vim sessions	" it will change the directory update time
									" http://www.openfoundry.org/en/tech-column/2244--vim-plugin
		Plugin 'thetoast/diff-fold'	" to folding diff (*.patch) files	" see bottom of this file to ignore comments
		Plugin 'wannesm/wmgraphviz.vim' " to run graphviz
										" another choise is to use ":!dot –O –Tpng %"
										" http://blog.csdn.net/fangkailove/article/details/8969398
		Plugin 'SearchComplete'
		" to see calendar {{{
			" Plugin 'itchyny/calendar.vim'	" wait to test (haven't find intro website in chinese, so try it later)
			" Plugin 'calendar.vim' or 'calendar_vim'	" from: http://www.vim.org/scripts/script.php?script_id=52
		" }}}
		" plugin intro website {{{
			" [Doro One Two Three]	http://rickey-nctu.blogspot.tw/2009/02/make-vim-more-powerful-cont-and-prolog.html
			" http://www.openfoundry.org/tw/tech-column/2244--vim-plugin
			" http://legendmohe.net/2013/12/20/%E6%88%91%E7%9A%84vim%E9%85%8D%E7%BD%AE/
			" http://bootleq.blogspot.tw/2012/05/neobundle-vim-plugin.html
			" http://www.openfoundry.org/en/tech-column/2244--vim-plugin
		" }}}
	" }}}
	" add plugins examples {{{
		" The following are examples of different formats supported.
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
	" }}}
	" Vundle settings (2) {{{
		" All of your Plugins must be added before the following line
		call vundle#end()
		filetype plugin indent on
	" }}}
	" auto install settings (2) {{{
	" ignore...becuase I want to use this setting on windows' gVim, too
	"	if iCanHazVundle==0
	"		echo "Install Bundles, please key map error msgs"
	"		echo ""
	"		:PluginInstall
	"		:q
	"	endif
	" }}}
" }}}
" additional plugin settings {{{
	" vundle {{{
		let g:NERDTreeDirArrows=0	" (unimportant) because terminal doesn't support fancy arrow figs
	" }}}
	" clang_complete {{{
		" (unnecessary) make Plugin clang_complete faster
		let g:clang_use_library=1
		nmap <F12> :TrinityToggleAll<CR>
		nmap <F11> :TrinityToggleNERDTree<CR>
		nmap <F10> :TrinityToggleTagList<CR>
		nmap <F9> :TrinityToggleSourceExplorer<CR>
	" }}}
	" cppcomplete {{{
		" use <C-X><C-O> to active Plugin cppcomplete
	" }}}
	" diff-fold {{{
		" use this command to igore the comments in diff-fold Plugin
		" cat 123.patch |grep -v "^+/\*\|^+ \*\|^+\*\|+$" >./123.patch.shrot
			" ignore "+/*", "+ *", "+*" in the beginnging
			" ignore "+" in the end
	" }}}
	" supertab {{{
		" use <C-V><Tab> to insert real "tab" instead of active Plugin supertab
	" }}}
	" taglist {{{
		" in Linux {{{
			" install ctags by "apt-get install ctags" or "yum install ctags" which is needed for Plugin taglist.vim
			" execute "ctags -R --exclude=.svn" to generate ctags
		" }}}
		" in Windows {{{
			" also need ctags
			" download here, only need ctags.exe, put in C:/	" http://ctags.sourceforge.net/
			" http://c9s.blogspot.tw/2007/07/setting-up-ctags-gvim-in-windows.html
			let Tlist_Ctags_Cmd = 'C:\ctags.exe'
			" http://bboytaiwan.blogspot.tw/2009/09/windowsvimctagstrinity.html
			" http://wolfer-reserach.blogspot.tw/2013/04/vim-windows-taglist-exuberant-ctags.html
		" }}}
	" }}}
	" vimwiki {{{
		set nocompatible
		filetype plugin on
		" syntax on	" already seted
		set fileencodings=utf8
	" }}}
	" waiting to try... [Doro One Two Three] QuickFix, EasyGrep, Marks, ...
" }}}
" manage programs {{{
	" setup by ask questions	http://bootleq.blogspot.tw/2012/05/neobundle-vim-plugin.html
" }}}
