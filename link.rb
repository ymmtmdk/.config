require 'pathname'
require 'fileutils'

SRC_HOME = Pathname(ENV['HOME'] + '/.config')
DST_HOME = Pathname(ENV['HOME'])

def link(src, dst = '', type = :sym)
  src.sub!(/^~\//, ENV['HOME'] + '/')
  dst.sub!(/^~\//, ENV['HOME'] + '/')
  src_path = Pathname(src)
  dst_path = Pathname(dst)
  src_path = SRC_HOME + src_path if src_path.relative?
  dst_path = DST_HOME + dst_path if dst_path.relative?

  Dir.glob(src_path).each do |s|
    s_path = Pathname(s)
    FileUtils.mkdir_p dst_path.dirname
    case type
    when :sym
      FileUtils.ln_s s_path, dst_path, force: true
    when :hard
      FileUtils.ln s_path, dst_path, force: true
    end
  end
end

if __FILE__ == $0
  # link '.gemrc'
  if RUBY_PLATFORM =~ /darwin\d/
    link 'Code/settings.json', '~/Library/Application Support/Code/User/'
    link 'Code/keybindings.json', '~/Library/Application Support/Code/User/'
  end
end

