# -*- coding: utf-8 -*-

namespace :wareki do
  namespace :prepare do
    desc 'Parse HTML files'
    task :parse do
      puts 'parsing...'

      eras = YAML.load_file(File.join(DATA_DIR, "eras.yml"))

      eras.each do |e|
        FileUtils.mkpath(File.join(DATA_DIR, 'yaml'))
        yaml_path = File.join(DATA_DIR, 'yaml', "#{e['name_en'].downcase}.yml")
        html_path = File.join(DATA_DIR, 'html', "#{e['name_en'].downcase}.html")
        html = Nokogiri::HTML(open(html_path))

        era = {}
        era[:wikipedia_uri] = e['uri']
        era[:era_name_en_downcase] = e['name_en'].downcase
        era[:era_name_en] = html.css('ul > li.interwiki-en > a').first["href"].split('/').last rescue nil
        era[:era_name] = html.css('#firstHeading').first.content.sub(/ \(.*$/, '') rescue nil
        era[:years] = []

        # <table cellspacing="0" cellpadding="2" border="1" style="text-align:center">
        # tables = html.xpath('//table[@cellspacing="0"][@cellpadding="2"][@border="1"][@style="text-align:center"]')
        # table = tables.first
        tables = html.xpath('//table')
        table = tables.find {|t|
          jan = t.css('tr > th')[1].content rescue nil
          jan == '一月'
        }

        tr_type = :header # :gregorian, :jurian, グレゴリオ歴, ユリウス歴
        current_year = {}
        table.xpath('tr').each do |tr|
          if tr_type == :header
            # 和暦の行
            era_year_ja, *era_months = tr.xpath('th').reject {|col| col.content.empty?}.map(&:content)
            era_year_ja, eto_name = era_year_ja.strip.match(/^#{era[:era_name]}(.*)年（(.*)）/).captures
            era_year = Wareki::Kanji.parse_number(era_year_ja)
            current_year[:era_year_ja] = era_year_ja
            current_year[:era_year] = era_year
            current_year[:eto_name] = eto_name
            current_year[:months] = era_months.map do |m|
              leap_month = m[0] == '閏'
              m[0] = '' if leap_month
              m[-1] = '' # 月
              month = {:era_month_kanji => m, :era_month => Wareki::Kanji.parse_number(m)}
              month[:leap_month] = leap_month if leap_month
              month
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
              beginning_of_months.each_with_index do |bom, i|
                current_year[:months][i][:beginning_of_month] = bom
              end
              tr_type = :jurian
            else
              # ユリウス歴の行
              # puts "#{era[:era_name]}#{current_year[:era_year_ja]}年: #{era[:era_name_en]}#{current_year[:era_year]}: #{current_year[:year]}"
              # puts current_year[:months].map {|m|
              #   length = 10 - m[:era_month_kanji].size
              #   "%#{length}s  " % m[:era_month_kanji]
              # }.join
              # puts current_year[:months].map {|m| "%10s  " % m[:beginning_of_month]}.join("")
              era[:years] << current_year unless current_year.empty?
              current_year = {}
              tr_type = :header
            end
          end
        end
        open(yaml_path, 'w') do |f|
          f.write era.to_yaml
        end
        puts ">> #{yaml_path}"
      end
      puts "parse completed!"
    end # task
  end
end
