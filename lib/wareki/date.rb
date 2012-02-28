# -*- coding: utf-8 -*-

require 'wareki/kanji'

module Wareki
  module Date
    def self.parse(str)
      # puts "str ==> #{str}"
      if /^([mtsh])(\d+)\.(\d+)\.(\d+)/i =~ str
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
        return ::Date.parse(str) unless era == 'm' && year < 6
      end
      _parse(str)
    end # parse

    protected

    def self.add_era_table(era_table)
      @@era_table ||= {}
      @@debug_last_record ||= {} # DEBUG
      era_table.each do |era_record|
        if @@debug_last_record[era_record[:era]] # DEBUG
          r1 = @@debug_last_record[era_record[:era]]
          r2 = era_record
          s1 = "%02d/%02d/%02d" % [r1[:g_y], r1[:g_m], r1[:g_d]]
          s2 = "%02d/%02d/%02d" % [r2[:g_y], r2[:g_m], r2[:g_d]]
          d1 = ::Date.parse(s1)
          d2 = ::Date.parse(s2)
          # puts "#{era_record}"
          unless d1 < d2
            puts
            puts "---------- invalid record: #{r2}  :  #{d1} < #{d2}"
            puts "                           #{r1}"
          end
        end
        e_y = era_record[:e_y]
        e_m = era_record[:leap_month] ? "#{era_record[:e_m]}*" : era_record[:e_m]
        @@era_table[e_y] ||= {}
        @@era_table[e_y][e_m] = era_record
        @@debug_last_record[era_record[:era]] = era_record # DEBUG
      end
    end

    def self.era_table
      if defined?(@@era_table)
        @@era_table
      else
        @@era_table = {}
      end
    end

    # parse date before Meiji 6th
    def self._parse(str)
      str = ::Wareki::Kanji.format_date(str) if str[0] =~ /[^0-9A-z.]/ # /^[^0-9A-z]/
      if /^([^0-9]+)(\d+)\.(\d+)\.(\d+)/i =~ str
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i
      else
        return nil
      end

      @@eras ||= {}
      case era
      when 'm', 'meiji'
        era_name = 'meiji'
      else
        era_name = era
      end

      unless @@eras[era_name]
        begin
          require "wareki/date/#{era_name}"
          @@eras[era_name] = true
        rescue => e
          raise ArgumentError, "Unknown era '#{era_name}': #{e}"
        end
      end
      bom = era_table[year][month]
      ::Date.new(bom[:g_y], bom[:g_m], bom[:g_d]) + (mday - 1)
    end
  end # Date
end # Wareki
