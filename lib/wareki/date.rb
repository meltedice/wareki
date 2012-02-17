# -*- coding: utf-8 -*-

module Wareki
  module Date
    def self.parse(str)
      # puts "str ==> #{str}"
      case str
      when /^([mtsh])(\d+)\.(\d+)\.(\d+)/i
        require 'wareki/date/meiji'
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
        if era == 'm' && year < 6
          bom = Meiji.era_table[year][month]
          return ::Date.new(bom[:g_y], bom[:g_m], bom[:g_d]) + (mday - 1)
        end
      end
      ::Date.parse(str)
    end # parse
  end # Date
end # Wareki
