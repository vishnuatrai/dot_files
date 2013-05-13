* Setting this up *

* Clone the repo:

* Create couple of symbolic links:

  $ ln -s ~/dot_files/my_zshrc ~/.zshrc  
  $ ln -s ~/dot_files/irbrc ~/.irbrc  
  $ ln -s ~/dot_files/gitconfig ~/.gitconfig  
  $ mkdir ~/bin (if bin directory doesn't exist)  
  $ ln -s ~/sake ~/bin/sake  
  $ ln -s ~/dot_files/screenrc ~/.screenrc  
  $ ln -s src/dot_files/vimrc ~/.vimrc
  
  

* Modify ~/dot_files/my_zshrc 
  
  You may have to modify the my_zshrc file to your liking a bit. The PATH and 
  other stuff is configured according to the way, I have setup my machine.You may need to
  change that.

* Switch to zsh :

  $ chsh
  
* Close the terminal
* Logout from your active session. 
* Open terminal and voila, you should have zsh with new prompt and everything working.

  
