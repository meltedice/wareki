# -*- coding: utf-8 -*-

namespace :wareki do
  namespace :prepare do
    desc 'Parse HTML files'
    task :parse do
      puts 'parsing...'
      html_path = File.join(DATA_DIR, 'html', 'bunka.html')
      html = Nokogiri::HTML(open(html_path))

      era_name_en = html.css('ul > li.interwiki-en > a').first["href"].split('/').last rescue nil
      puts era_name_en

      era_name = html.css('#firstHeading').first.content.sub(/ \(.*$/, '') rescue nil
      puts era_name

      # <table cellspacing="0" cellpadding="2" border="1" style="text-align:center">
      tables = html.xpath('//table[@cellspacing="0"][@cellpadding="2"][@border="1"][@style="text-align:center"]')
      table = tables.first

      tr_type = :header # :gregorian, :jurian, グレゴリオ歴, ユリウス歴
      last_year = nil
      table.xpath('tr').each do |tr|
        if tr_type == :header
          era_year_ja, *era_months = tr.xpath('th').reject {|col| col.content.empty?}.map(&:content)
          puts "-#{era_year_ja.strip}-"
          era_year, eto_name = era_year_ja.strip.match(/^#{era_name}(.*)年（(.*)）/).captures
          puts "** #{era_name}-#{era_year}-(#{eto_name}):  " + era_months.join(", ")
          tr_type = :gregorian
        else
          if tr_type == :gregorian
            calendar_name, *beginning_of_months = tr.xpath('td').reject {|col| col.content.empty?}.map(&:content)
            beginning_of_months.map! do |bom|
              date = bom.split('/').map(&:to_i)
              if date.size == 3
                last_year = date[0]
              else
                date.unshift last_year
              end
              "%d/%02d/%02d" % date
            end
            puts "#{calendar_name}:  " + beginning_of_months.join(", ")
            tr_type = :jurian
          else
            tr_type = :header
          end
        end
      end
    end # task
  end
end
