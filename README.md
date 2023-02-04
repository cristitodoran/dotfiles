#1. VIM install

 ### Prerequisites
- Install nerd font - https://www.nerdfonts.com/font-downloads
- Install delta for git diffs - https://github.com/dandavison/delta
- Set delta as lazygit custom pager - https://github.com/jesseduffield/lazygit/blob/master/docs/Custom_Pagers.md
- Install github cli
- sudo apt install fd-find
- https://github.com/ms-jpq/sad
- install packer
- install oh-my-zsh
- pip install thefuck
- install following zsh pluggins manually: powerlevel10k, zsh-syntax-highlighting, zsh-autosuggestions
- Install libsql lite (for neoclip): `sudo apt-get -y install libsqlite3-0 libsqlite3-dev`
- install tig https://jonas.github.io/tig/

### Leader ? - cheatsheet

### Telescope - find files and in files
`<leader>pf` - open finder  
`<leader>ps` - find in files  
`<leader>pg` - open finder for git files  
`<leader>pr` - find in files current word  
`<leader>pl` - live find  

**In search window:**

`C-/` - show help in insert mode    
`?` - show help in normal mode    
`C-n` - next item    
`C-p` - previous item    
`C-t` - open in new tab    
`C-u` - Scroll up in preview window    
`C-d` - Scroll down in preview window    
`C-q` - send files to quickfixlist    
`A-q` - send selected files to quickfixlisth    
`C-Up` and `C-Down` - cycle history    

### Undo - undotree
`<leader>u` - show undo tree

### Git
`:DiffviewOpen` - show diffs/conflicts
`:DiffviewClose` - close diffview

### Git-gitsigns
`[c` - next hunk  
`]c` - prev hunk  
`<leader>hs` - stage hunk  
`<leader>hr` - reset hunk  
`<leader>hS` - stage buffer  
`<leader>hu` - undo stage hunk  
`<leader>hp` - preview hunk  
`<leader>hb` - blame line  
`<leader>tb` - toggle current line blame  
`<leader>hd` - diff this  
`<leader>td` - toggle deleted  

### Sessions
`<leader>ss` - save session  
`<leader>sr` - restore session  

### Surround
|Old text                   |      Commannd  |     New text               |
|---------------------------|----------------|----------------------------|
|`surr*ound_words          `|`   ysiw)      `|`     (surround_words)     `|  
|`*make strings            `|`   ys$"       `|`     "make strings"       `|
|`[delete ar*ound me!]     `|`   ds]:w      `|`     delete around me!    `| 
|`remove <b>HTML t*ags</b> `|`   dst        `|`     remove HTML tags     `| 
|`'change quot*es'         `|`   cs'"       `|`     "change quotes"      `| 
|`<b>or tag* types</b>     `|`   csth1<CR>  `|`     <h1>or tag types</h1>`|  
|`delete(functi*on calls)  `|`   dsf        `|`     function calls       `| 

### LSP + autocomplete
`gd` - go to definition  
`K` - show info  
`<leader>vws` - search workspace for variable  
`gl` - show diagnostic  
`[d` - goto next diagnostic  
`]d` - goto prev diagnostic  
`F4` - show code action  
`gr` - show references  
`F2` - rename  
`C-h` - signature help  
`C-p` - navigate prev suggestion  
`C-n` - navigate next suggestion  
`C-u` - scroll up in documentation  
`C-f` - scroll down in documentation  
`C-e` - toggle completion  
`C-d` - next placeholder  
`C-b` - prev placeholder  

### Nerdcommenter
`<leader>cc` - comment  
`<leader>cu` - uncomment

### Tabs - barbar
`A-,` - prev tab  
`A-.` - next tab  
`A-[1,0]` - go to tab  
`A-p` - pin tab  
`A-c` - close tab  
`C-p` - magic picking mode (show letter, press letter to choose tab)  
`<leader>cab` - close all but current or pinned  
`<leader>cal` - close all to the left  
`<leader>car` - close all to the right  

### Ideas:
- create install script for everything
- checkout ranger
- add key mapings with legendary and/or which-key
- maybe use leap.nvim plugin
- setup nvim-bqf shortcuts
- familiarize with search and replace
- find a way to search and replace in all files
- incercat harpoon si poate sa ascund tree, sau folosit cu ce vine deja vim
- checkout marks￼
