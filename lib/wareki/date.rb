# -*- coding: utf-8 -*-

module Wareki
  module Date
    WAREKI_SHORT_ERA_NAME_TABLE = {'明' => 'm', '大' => 't', '昭' => 's', '平' => 'h'}
    WAREKI_LONG_ERA_NAME_TABLE = {
      '明治' => 'm',
      '大正' => 't',
      '昭和' => 's',
      '平成' => 'h',
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
