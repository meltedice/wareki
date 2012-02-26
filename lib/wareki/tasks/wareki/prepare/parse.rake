# -*- coding: utf-8 -*-

namespace :wareki do
  namespace :prepare do
    desc 'Parse HTML files'
    task :parse do
      puts 'parsing...'
      html_path = File.join(DATA_DIR, 'html', 'bunka.html')
      html = Nokogiri::HTML(open(html_path))

      era_name_en = html.css('ul > li.interwiki-en > a').first["href"].split('/').last rescue nil
      # puts era_name_en

      era_name = html.css('#firstHeading').first.content.sub(/ \(.*$/, '') rescue nil
      # puts era_name

      # <table cellspacing="0" cellpadding="2" border="1" style="text-align:center">
      tables = html.xpath('//table[@cellspacing="0"][@cellpadding="2"][@border="1"][@style="text-align:center"]')
      table = tables.first

      tr_type = :header # :gregorian, :jurian, グレゴリオ歴, ユリウス歴
      current_year = {}
      table.xpath('tr').each do |tr|
        if tr_type == :header
          # 和暦の行
          era_year_ja, *era_months = tr.xpath('th').reject {|col| col.content.empty?}.map(&:content)
          # puts "-#{era_year_ja.strip}-"
          era_year_ja, eto_name = era_year_ja.strip.match(/^#{era_name}(.*)年（(.*)）/).captures
          era_year = Wareki::Kanji.parse_number(era_year_ja)
          # puts "** #{era_name}-#{era_year}-(#{eto_name}):  " + era_months.join(", ")
          current_year[:era_year_ja] = era_year_ja
          current_year[:era_year] = era_year
          current_year[:eto_name] = eto_name
          current_year[:months] = era_months.map do |m|
            month = m.dup
            leap_month = month[0] == '閏'
            month[0] = '' if leap_month
            month[-1] = ''
            {:era_month_kanji => m, :era_month => Wareki::Kanji.parse_number(month), :leap_month => leap_month}
          end
          tr_type = :gregorian
        else
          if tr_type == :gregorian
            # グレゴリオ歴の行
            calendar_name, *beginning_of_months = tr.xpath('td').reject {|col| col.content.empty?}.map(&:content)
            beginning_of_months.map! do |bom|
              date = bom.split('/').map(&:to_i)
              if date.size == 3
                current_year[:year] = date[0]
              else
                date.unshift current_year[:year]
              end
              "%d/%02d/%02d" % date
            end
            # puts "#{calendar_name}:  " + beginning_of_months.join(", ")
            beginning_of_months.each_with_index do |bom, i|
              current_year[:months][i][:beginning_of_month] = bom
            end
            tr_type = :jurian
          else
            # ユリウス歴の行
            puts "#{era_name}#{current_year[:era_year_ja]}年: #{era_name_en}#{current_year[:era_year]}: #{current_year[:year]}"
            puts current_year[:months].map {|m|
              length = 10 - m[:era_month_kanji].size
              "%#{length}s  " % m[:era_month_kanji]
            }.join
            puts current_year[:months].map {|m| "%10s  " % m[:beginning_of_month]}.join("")
            current_year = {}
            tr_type = :header
          end
        end
      end
    end # task
  end
end
