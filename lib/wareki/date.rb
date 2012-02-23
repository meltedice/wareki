# -*- coding: utf-8 -*-

module Wareki
  module Date
    WAREKI_SHORT_ERA_NAME_TABLE = {'明' => 'm', '大' => 't', '昭' => 's', '平' => 'h'}
    WAREKI_LONG_ERA_NAME_TABLE = {
      # 江戸時代
      '元和' => 'Genna',   # 1615年 げんな Genna
      '寛永' => 'Kanei',   # 1624年 かんえい Kan'ei
      '正保' => 'Shoho',   # 1644年 しょうほう Shōhō
      '慶安' => 'Keian',   # 1648年 けいあん Keian
      '承応' => 'Joo',     # 1652年 じょうおう Jōō
      '明暦' => 'Meireki', # 1655年 めいれき Meireki
      '万治' => 'Manji',   # 1658年 まんじ Manji
      '寛文' => 'Kanbun',  # 1661年 かんぶん Kanbun
      '延宝' => 'Enpo',    # 1673年 えんぽう Enpō
      '天和' => 'Tenna',   # 1681年 てんな Tenna
      '貞享' => 'Jokyo',   # 1684年 じょうきょう Jōkyō
      '元禄' => 'Genroku', # 1688年 げんろく Genroku
      '宝永' => 'Hoei',    # 1704年 ほうえい Hōei
      '正徳' => 'Shotoku', # 1711年 しょうとく Shōtoku
      '享保' => 'Kyoho',   # 1716年 きょうほう Kyōhō
      '元文' => 'Genbun',  # 1736年 げんぶん Genbun
      '寛保' => 'Kanpo',   # 1741年 かんぽう Kanpō
      '延享' => 'Enkyo',   # 1744年 えんきょう Enkyō
      '寛延' => 'Kanen',   # 1748年 かんえん Kan'en
      '宝暦' => 'Horeki',  # 1751年 ほうれき Hōreki
      '明和' => 'Meiwa',   # 1764年 めいわ Meiwa
      '安永' => 'Anei',    # 1772年 あんえい An'ei
      '天明' => 'Tenmei',  # 1781年 てんめい Tenmei
      '寛政' => 'Kansei',  # 1789年 かんせい Kansei
      '享和' => 'Kyowa',   # 1801年 きょうわ Kyōwa
      '文化' => 'Bunka',   # 1804年 ぶんか Bunka
      '文政' => 'Bunsei',  # 1818年 ぶんせい Bunsei
      '天保' => 'Tenpo',   # 1830年 てんぽう Tenpō
      '弘化' => 'Koka',    # 1844年 こうか Kōka
      '嘉永' => 'Kaei',    # 1848年 かえい Kaei
      '安政' => 'Ansei',   # 1854年 あんせい Ansei
      '万延' => 'Manen',   # 1860年 まんえん Man'en
      '文久' => 'Bunkyu',  # 1861年 ぶんきゅう Bunkyū
      '元治' => 'Genji',   # 1864年 げんじ Genji
      '慶応' => 'Keio',    # 1865年 けいおう Keiō
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
      str
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
