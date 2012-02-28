# -*- coding: utf-8 -*-

require 'erb'

namespace :wareki do
  desc 'Build Wareki::Date info'
  task :build do
    puts 'building...'

    eras = YAML.load_file(File.join(DATA_DIR, 'eras.yml'))
    template_path = File.join(DATA_DIR, 'date.erb')
    template = open(template_path) {|f| ERB.new(f.read, nil, '-')}

    eras.each do |e|
      FileUtils.mkpath(File.join(DATA_DIR, 'yaml'))
      yaml_path = File.join(DATA_DIR, 'yaml', "#{e['name_en'].downcase}.yml")
      era = YAML.load_file(yaml_path)

      rb_path = File.join(WAREKI_ROOT, 'lib/wareki/date', "#{e['name_en'].downcase}.rb")
      src = template.result(binding)
      open(rb_path, "w") do |f|
        f.write src
      end
      puts ">> #{rb_path}"
      # puts src
    end
    puts "build completed!"
  end # task
end
