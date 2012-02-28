# -*- coding: utf-8 -*-

namespace :wareki do
  namespace :prepare do
    desc 'Download html files from Wikipedia'
    task :download do
      puts 'downloading...'
      FileUtils.mkpath(File.join(DATA_DIR, 'html'))
      eras = YAML.load_file(File.join(DATA_DIR, "eras.yml"))
      first = true
      eras.each do |era|
        sleep 1 unless first
        open(era['uri']) do |content|
          path = File.join(DATA_DIR, 'html', "#{era['name_en'].downcase}.html")
          open(path, 'wb') do |html|
            puts '%s %-60s << %s' % [era['name'], path, era['uri']]
            html.write content.read
          end
        end
        first = false
      end
      puts 'download completed!'
    end # task
  end
end
