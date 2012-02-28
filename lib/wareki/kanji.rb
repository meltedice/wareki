# -*- coding: utf-8 -*-

require 'wareki/map'

module Wareki
  module Kanji
    def self.format_date(kanji_str)
      str = kanji_str.dup
      if kanji_str[1] =~ /[0-9]/
        str[0] = Map::WAREKI_SHORT_ERA_NAME_TABLE[str[0]]
      else
        str[0,2] = Map::WAREKI_LONG_ERA_NAME_TABLE[str[0,2]]
      end
      unless /^([a-z]+)(\d+)\.(\d+)\.(\d+)/i =~ str
        str.sub! '元', '1'
        str.sub! '年', '.'
        str.sub! '月', '.'
        str.sub! '日', ''
        unless /^([a-z]+)(\d+)\.(\d+)\.(\d+)/i =~ str
          if /^([a-z]+)(.+)\.(.+)\.(.+)/i =~ str
            era, y, m, d = $1, parse_number($2), parse_number($3), parse_number($4)
            str = "#{era}%02d.%02d.%02d" % [y, m, d]
          end
        end
      end
      str
    end

    # FIXME
    def self.parse_number(kanji_number)
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
      n.gsub! '元', '1'
      n.gsub! '壱', '1'
      n.gsub! '弐', '2'
      n.gsub! '参', '3'
      return 10 if n == '十'
      return n.to_i if n =~ number_pattern
      n.gsub! /(\d)十(\d)/, '\1\2'
      n.gsub! /(^|[^\d])十([\d])/, '\11\2'
      n.gsub! /([\d])十([^\d]|$)/, '\10\2'
      n.to_i
    end
  end
end
