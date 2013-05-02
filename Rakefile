#TODO don't create symlinks if already exists
#TODO backup deleted files

desc "Installs the customizations by linking the files to the correct direction"
task :install do
  home = Dir.home
  pwd  = File.dirname(__FILE__)

  puts "Vim customization files"
  each_file File.join(pwd, "vim") do |file|
    run "ln -s #{file} #{File.join(home, ".#{File.basename(file)}")}"
  end
  each_file File.join(pwd, "vim", "vimdir") do |file|
    run "ln -s #{file} #{File.join(home, ".vim", ".#{File.basename(file)}")}"
  end
  puts ""

  puts "Zsh customization folders"
  %w(before after).each do |part|
    source = File.join(pwd, "zsh", part)
    target = File.join(home, ".zsh.#{part}")
    run "mkdir -p #{target}"

    each_file source do |file|
      run "ln -s #{file} #{File.join(target, File.basename(file))}"
    end
  end
  puts ""

  puts "Zsh prompt theme files"
  prompts = File.join(home, ".zsh.prompts")
  run "mkdir -p #{prompts}"
  each_file File.join(pwd, "zsh", "prompt") do |file|
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
  each_file File.join(pwd, "vim") do |file|
    run "rm #{File.join(home, ".#{File.basename(file)}")}"
  end
  each_file File.join(pwd, "vim", "vimdir") do |file|
    run "rm #{File.join(home, ".vim", ".#{File.basename(file)}")}"
  end
  puts ""

  puts "Zsh customization folders"
  %w(before after).each do |part|
    each_file File.join(pwd, "zsh", part) do |file|
      run "rm #{File.join(home, ".zsh.#{part}", File.basename(file))}"
    end
  end
  puts ""

  puts "Zsh prompt theme files"
  each_file File.join(pwd, "zsh", "prompt") do |file|
    run "rm #{File.join(home, ".zsh.prompts", "prompt_#{File.basename(file)}_setup")}"
  end
  puts ""

  puts "Zsh profile file"
  run "rm #{File.join(home, ".zprofile")}"
  puts ""
end

task :default => 'install'

private

def each_file(path, &block)
  Dir.foreach(path) do |file|
    if File.file?(File.join(path, file))
      yield(File.join(path, file))
    end
  end
end

def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end
