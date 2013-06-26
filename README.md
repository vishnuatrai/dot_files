* Setting this up *

* Clone the repo:

* Create couple of symbolic links:

  $ ln -s ~/dot_files/zsh_profile.d ~/.zsh_profile.d·
  $ ln -s ~/dot_files/zshrc ~/.zshrc  
  $ ln -s ~/dot_files/irbrc ~/.irbrc  
  $ ln -s ~/dot_files/gitconfig ~/.gitconfig  
  $ ln -s ~/dot_files/git_ignore ~/.gitignore
  $ mkdir ~/bin (if bin directory doesn't exist)  
  $ ln -s ~/sake ~/bin/sake  
  $ ln -s ~/dot_files/vim ~/.vim
  $ ln -s ~/dot_files/vimrc ~/.vimrc
  $ ln -s ~/dot_files/aliasrc ~/.aliasrc
  
  

* ~/.zsh.local will be required for local zsh settings 
* ~/.vim.local will be required for local vim settings
  
  You may have to modify the zshrc file to your liking a bit. The PATH and 
  other stuff is configured according to the way, I have setup my machine.You may need to
  change that.

* Switch to zsh :

  $ chsh
  
* Close the terminal
* Logout from your active session. 
* Open terminal and voila, you should have zsh with new prompt and everything working.

  
