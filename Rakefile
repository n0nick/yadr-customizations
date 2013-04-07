#TODO don't create symlinks if already exists
#TODO backup deleted files

desc "Installs the customizations by linking the files to the correct direction"
task :install do
  home = Dir.home
  pwd  = File.dirname(__FILE__)

  puts "Vim customization files"
  Dir[File.join(pwd, "vim", "*")].each do |file|
    run "ln -s #{file} #{File.join(home, ".#{File.basename(file)}")}"
  end
  puts ""

  puts "Zsh customization folders"
  %w(before after).each do |part|
    source = File.join(pwd, "zsh", part)
    target = File.join(home, ".zsh.#{part}")
    run "mkdir -p #{target}"

    Dir[File.join(source, "*")].each do |file|
      run "ln -s #{file} #{File.join(target, File.basename(file))}"
    end
  end
  puts ""

  puts "Zsh prompt theme files"
  prompts = File.join(home, ".zsh.prompts")
  run "mkdir -p #{prompts}"
  Dir[File.join(pwd, "zsh", "prompt", "*")].each do |file|
    run "ln -s #{file} \
      #{File.join(prompts, "prompt_#{File.basename(file)}_setup")}"
  end
  puts ""

  puts "Zsh profile file"
  source = File.join(pwd, "zsh", "zprofile")
  target = File.join(home, ".zprofile")
  run "ln -s #{source} #{target}"
  puts ""
end

desc "Uninstalls the customizations by removing the symbolic links created"
task :uninstall do
  home = Dir.home

  puts "Vim customization files"
  Dir[File.join(pwd, "vim", "*")].each do |file|
    run "rm #{File.join(home, ".#{File.basename(file)}")}"
  end
  puts ""

  puts "Zsh customization folders"
  %w(before after).each do |part|
    Dir[File.join(pwd, "zsh", part, "*")].each do |file|
      run "rm #{File.join(home, ".zsh.#{part}", File.basename(file))}"
    end
  end
  puts ""

  puts "Zsh prompt theme files"
  Dir[File.join(pwd, "zsh", "prompt", "*")].each do |file|
    run "rm #{File.join(home, ".zsh.prompts", "prompt_#{File.basename(file)}_setup")}"
  end
  puts ""

  puts "Zsh profile file"
  run "rm #{File.join(home, ".zprofile")}"
  puts ""
end

task :default => 'install'

private
def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end
