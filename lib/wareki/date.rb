# -*- coding: utf-8 -*-

module Wareki
  module Date
    def self.parse(str)
      # puts "str ==> #{str}"
      case str
      when /^([mtsh])(\d+)\.(\d+)\.(\d+)/i
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
        if era == 'm' && year < 6
          require 'wareki/date/meiji'
          bom = Meiji.era_table[year][month]
          return ::Date.new(bom[:g_y], bom[:g_m], bom[:g_d]) + (mday - 1)
        end
      when /^([a-z]+)(\d+)\.(\d+)\.(\d+)/i
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
        bom = nil
        case era
        when 'k', 'keio'
          require 'wareki/date/keio'
          bom = Keio.era_table[year][month]
        else
          raise 'Unknown era'
        end
        return ::Date.new(bom[:g_y], bom[:g_m], bom[:g_d]) + (mday - 1)
      end
      ::Date.parse(str)
    end # parse
  end # Date
end # Wareki
