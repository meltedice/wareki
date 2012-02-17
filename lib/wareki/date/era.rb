# -*- coding: utf-8 -*-

module Wareki::Date
  module Era
    def self.included(base)
      base.extend ClassMethods
      base.__send__ :include, InstanceMethods
    end

    module ClassMethods
      def era_table
        return @era_table if defined?(@era_table)
        @era_table = {}
        self::TABLE.each do |era_record|
          e_y = era_record[:e_y]
          e_m = era_record[:leap_month] ? "#{era_record[:e_m]}*" : era_record[:e_m]
          @era_table[e_y] ||= {}
          @era_table[e_y][e_m] = era_record
        end
        @era_table
      end
    end

    module InstanceMethods
    end
  end
end # Wareki::Date
