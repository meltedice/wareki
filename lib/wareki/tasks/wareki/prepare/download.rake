# -*- coding: utf-8 -*-

namespace :wareki do
  namespace :prepare do
    desc 'Download html files from Wikipedia'
    task :download do
      puts 'downloading...'
      FileUtils.mkpath(File.join(DATA_DIR, 'html'))
      uri = 'http://ja.wikipedia.org/wiki/%E6%96%87%E5%8C%96_%28%E5%85%83%E5%8F%B7%29' # 文化
      uris = [uri]
      uris.each do |uri|
        open(uri) do |content|
          path = File.join(DATA_DIR, 'html', 'bunka.html')
          open(path, 'wb') do |html|
            puts '%50s << %s' % [path, uri]
            html.write content.read
          end
        end
      end
      puts 'download completed!'
    end # task
  end
end
