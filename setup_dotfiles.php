<?php

## Commands to run
$cmds = [
		'rm -rf ~/.vim',
		  'ln -s ~/dotfiles/.vim ~/.vim',
	'rm -rf ~/.vimrc',
  'ln -s ~/dotfiles/.vimrc ~/.vimrc',
  'curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim',

	'rm -rf ~/.tmux.conf',
  'ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf',

  	'rm -rf ~/.bash_profile',
	  'ln -s ~/dotfiles/.bash_profile ~/.bash_profile',
	'rm -rf ~/.bashrc',
  'ln -s ~/dotfiles/.bashrc ~/.bashrc'
];

## Loop and run the commands
foreach ($cmds as $cmd) {
  runcmd($cmd, true);
}

/**
 *
 */
function runcmd($cmd, $exit_on_fail = true) {
  echo PHP_EOL.'[Info] executing "'.$cmd.'"'.PHP_EOL;
  
  ## Clearly previous output
  $output = []; 
  
  ## Run the command
  passthru($cmd, $return_var);
  
  return [
  	'cmd' => $cmd,
  	'return_var' => $return_var
  ];  
}
