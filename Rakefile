#TODO don't create symlinks if already exists
#TODO backup deleted files

desc "Installs the customizations by linking the files to the correct direction"
task :install do
  home = Dir.home
  pwd  = File.dirname(__FILE__)

  # vim files
  Dir[File.join(pwd, "vim", "*")].each do |file|
    run "ln -s #{file} #{File.join(home, ".#{File.basename(file)}")}"
  end

  # zsh custom folders
  %w(before after).each do |f|
    run "ln -s #{File.join(pwd, "zsh/#{f}")} #{File.join(home, ".zsh.#{f}")}"
  end

  # zsh prompt files
  Dir[File.join(pwd, "zsh", "prompt", "*")].each do |file|
    run "ln -s #{file} \
      #{File.join(home, ".oh-my-zsh", "modules", "prompt", "functions", \
        File.basename(file))}"
  end
end

desc "Uninstalls the customizations by removing the symbolic links created"
task :uninstall do
  home = Dir.home

  # vim files
  Dir[File.join(pwd, "vim", "*")].each do |file|
    run "rm #{File.join(home, ".#{File.basename(file)}")}"
  end

  # zsh custom folders
  %w(before after).each do |f|
    run "rm #{File.join(home, ".zsh.#{f}")}"
  end

  # zsh prompt files
  Dir[File.join(pwd, "zsh", "prompt", "*")].each do |file|
    run "rm #{File.join(home, ".oh-my-zsh", "modules", "prompt", "functions", \
              File.basename(file))}"
  end
end

task :default => 'install'

private
def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end
