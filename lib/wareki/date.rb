# -*- coding: utf-8 -*-

module Wareki
  module Date
    def self.parse(str)
      # puts "str ==> #{str}"
      case str
      when /^([mtsh])(\d+)\.(\d+)\.(\d+)/i
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
        if era == 'm' && year < 6
          return _parse(era, year, month, mday)
        else
          return ::Date.parse(str)
        end
      when /^([a-z]+)(\d+)\.(\d+)\.(\d+)/i
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
        return _parse(era, year, month, mday)
      end
    end # parse

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
      when 'keio'
        era_name = 'keio'
      when 'genji'
        era_name = 'genji'
      when 'bunkyu'
        era_name = 'bunkyu'
      when 'manen'
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
