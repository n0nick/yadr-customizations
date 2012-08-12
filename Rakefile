desc "Installs the customizations by linking the files to the correct direction"
task :install do
  pwd = File.dirname(__FILE__)
  sh "ln -s #{File.join(pwd, "vim", "vimrc.before")} ~/.vimrc.before"
  sh "ln -s #{File.join(pwd, "vim", "vimrc.after")} ~/.vimrc.after"
  sh "ln -s #{File.join(pwd, "vim", "vimrc_matcher")} ~/.vimrc_matcher"
  sh "ln -s #{File.join(pwd, "zsh")} ~/.yadr/custom/zsh"
  sh "ln -s #{File.join(pwd, "zsh", "prompt", "prompt_n0nick_setup")} ~/.oh-my-zsh/modules/prompt/functions/prompt_n0nick_setup"
end

desc "Uninstalls the customizations by removing the symbolic links created"
task :uninstall do
  sh "rm ~/.vimrc.before"
  sh "rm ~/.vimrc.after"
  sh "rm ~/.vimrc_matcher"
  sh "rm ~/.yadr/custom/zsh"
  sh "rm ~/.oh-my-zsh/modules/prompt/functions/prompt_n0nick_setup"
end
