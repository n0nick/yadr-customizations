desc "Installs the customizations by linking the files to the correct direction"
task :install do
  current_dir = File.dirname(__FILE__)
  sh "ln -s #{File.join(current_dir, "vim", "vimrc.before")} ~/.vimrc.before"
  sh "ln -s #{File.join(current_dir, "vim", "vimrc.after")} ~/.vimrc.after"
  sh "ln -s #{File.join(current_dir, "vim", "vimrc_matcher")} ~/.vimrc_matcher"
  sh "ln -s #{File.join(current_dir, "zsh")} ~/.yadr/custom/zsh"
end

desc "Uninstalls the customizations by removing the symbolic links created"
task :uninstall do
  sh "rm ~/.vimrc.before"
  sh "rm ~/.vimrc.after"
  sh "rm ~/.vimrc_matcher"
  sh "rm ~/.yadr/custom/zsh"
end
