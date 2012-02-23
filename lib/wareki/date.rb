# -*- coding: utf-8 -*-

module Wareki
  module Date
    WAREKI_SHORT_ERA_NAME_TABLE = {'明' => 'm', '大' => 't', '昭' => 's', '平' => 'h'}
    WAREKI_LONG_ERA_NAME_TABLE = {
      # 江戸時代
      '元和' => 'genna',   # 1615年 げんな Genna
      '寛永' => 'kanei',   # 1624年 かんえい Kan'ei
      '正保' => 'shoho',   # 1644年 しょうほう Shōhō
      '慶安' => 'keian',   # 1648年 けいあん Keian
      '承応' => 'joo',     # 1652年 じょうおう Jōō
      '明暦' => 'meireki', # 1655年 めいれき Meireki
      '万治' => 'manji',   # 1658年 まんじ Manji
      '寛文' => 'kanbun',  # 1661年 かんぶん Kanbun
      '延宝' => 'enpo',    # 1673年 えんぽう Enpō
      '天和' => 'tenna',   # 1681年 てんな Tenna
      '貞享' => 'jokyo',   # 1684年 じょうきょう Jōkyō
      '元禄' => 'genroku', # 1688年 げんろく Genroku
      '宝永' => 'hoei',    # 1704年 ほうえい Hōei
      '正徳' => 'shotoku', # 1711年 しょうとく Shōtoku
      '享保' => 'kyoho',   # 1716年 きょうほう Kyōhō
      '元文' => 'genbun',  # 1736年 げんぶん Genbun
      '寛保' => 'kanpo',   # 1741年 かんぽう Kanpō
      '延享' => 'enkyo',   # 1744年 えんきょう Enkyō
      '寛延' => 'kanen',   # 1748年 かんえん Kan'en
      '宝暦' => 'horeki',  # 1751年 ほうれき Hōreki
      '明和' => 'meiwa',   # 1764年 めいわ Meiwa
      '安永' => 'anei',    # 1772年 あんえい An'ei
      '天明' => 'tenmei',  # 1781年 てんめい Tenmei
      '寛政' => 'kansei',  # 1789年 かんせい Kansei
      '享和' => 'kyowa',   # 1801年 きょうわ Kyōwa
      '文化' => 'bunka',   # 1804年 ぶんか Bunka
      '文政' => 'bunsei',  # 1818年 ぶんせい Bunsei
      '天保' => 'tenpo',   # 1830年 てんぽう Tenpō
      '弘化' => 'koka',    # 1844年 こうか Kōka
      '嘉永' => 'kaei',    # 1848年 かえい Kaei
      '安政' => 'ansei',   # 1854年 あんせい Ansei
      '万延' => 'manen',   # 1860年 まんえん Man'en
      '文久' => 'bunkyu',  # 1861年 ぶんきゅう Bunkyū
      '元治' => 'genji',   # 1864年 げんじ Genji
      '慶応' => 'keio',    # 1865年 けいおう Keiō
      # 明治時代以降
      '明治' => 'm', # 1912/07/30 めいじ
      '大正' => 't', # 1912/07/30 たいしょう
      '昭和' => 's', # 1926/12/25 しょうわ
      '平成' => 'h', # 1989/01/08 へいせい
    }

    def self.parse(str)
      # puts "str ==> #{str}"
      if /^([mtsh])(\d+)\.(\d+)\.(\d+)/i =~ str
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
        if era == 'm' && year < 6
          return _parse(era, year, month, mday)
        else
          return ::Date.parse(str)
        end
      end
      str = parse_kanji(str) if str[0] =~ /^[^0-9A-z]/
      if /^([a-z]+)(\d+)\.(\d+)\.(\d+)/i =~ str
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
        return _parse(era, year, month, mday)
      end
      nil
    end # parse

    def self.parse_kanji(kanji_str)
      str = kanji_str.dup
      if kanji_str[1] =~ /[0-9]/
        str[0] = WAREKI_SHORT_ERA_NAME_TABLE[str[0]]
      else
        str[0,2] = WAREKI_LONG_ERA_NAME_TABLE[str[0,2]]
      end
      unless /^([a-z]+)(\d+)\.(\d+)\.(\d+)/i =~ str
        str.sub! '元', '1'
        str.sub! '年', '.'
        str.sub! '月', '.'
        str.sub! '日', ''
        unless /^([a-z]+)(\d+)\.(\d+)\.(\d+)/i =~ str
          if /^([a-z]+)(.+)\.(.+)\.(.+)/i =~ str
            era, y, m, d = $1, parse_kanji_number($2), parse_kanji_number($3), parse_kanji_number($4)
            str = "#{era}%02d.%02d.%02d" % [y, m, d]
          end
        end
      end
      str
    end

    def self.parse_kanji_number(kanji_number)
      number_pattern = /^[0-9]+$/
      n = kanji_number.dup
      n.gsub! '〇', '0'
      n.gsub! '一', '1'
      n.gsub! '二', '2'
      n.gsub! '三', '3'
      n.gsub! '四', '4'
      n.gsub! '五', '5'
      n.gsub! '六', '6'
      n.gsub! '七', '7'
      n.gsub! '八', '8'
      n.gsub! '九', '9'
      return 10 if n == '十'
      return n.to_i if n =~ number_pattern
      n.gsub! /(\d)十(\d)/, '\1\2'
      n.gsub! /(^|[^\d])十([\d])/, '\11\2'
      n.gsub! /([\d])十([^\d]|$)/, '\10\2'
      n.to_i
    end

    protected

    def self.add_era_table(era_table)
      @@era_table = {}
      era_table.each do |era_record|
        e_y = era_record[:e_y]
        e_m = era_record[:leap_month] ? "#{era_record[:e_m]}*" : era_record[:e_m]
        @@era_table[e_y] ||= {}
        @@era_table[e_y][e_m] = era_record
      end
    end

    def self.era_table
      if defined?(@@era_table)
        @@era_table
      else
        @@era_table = {}
      end
    end

    def self._parse(era, year, month, mday)
      @@eras ||= {}
      case era
      when 'm', 'meiji'
        era_name = 'meiji'
      when 'keio', '慶応', 'けいおう'
        era_name = 'keio'
      when 'genji', '元治', 'げんじ'
        era_name = 'genji'
      when 'bunkyu', '文久', 'ぶんきゅう'
        era_name = 'bunkyu'
      when 'manen', '万延', 'まんえん'
        era_name = 'manen'
      else
        raise 'Unknown era'
      end

      unless @@eras[era_name]
        require "wareki/date/#{era_name}"
        @@eras[era_name] = true
      end
      bom = era_table[year][month]
      ::Date.new(bom[:g_y], bom[:g_m], bom[:g_d]) + (mday - 1)
    end
  end # Date
end # Wareki
