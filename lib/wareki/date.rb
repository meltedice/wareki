# -*- coding: utf-8 -*-

module Wareki
  module Date
    def self.parse(str)
      puts "str ==> #{str}"
      case str
      when /^([mtsh])(\d+)\.(\d+)\.(\d+)/i
        era, year, month, mday = $1.downcase, $2.to_i, $3.to_i, $4.to_i

        if era == 'm' && year < 6
          # http://ja.wikipedia.org/wiki/%E6%98%8E%E6%B2%BB"
          # 明治元年（戊辰）      一月     二月     三月     四月     閏四月   五月     六月     七月     八月     九月     十月       十一月     十二月
          # グレゴリオ暦     1868/1/25     2/23     3/24     4/23     5/22     6/20     7/20     8/18     9/16     10/16    11/14      12/14      1869/1/13
          # 明治二年（己巳）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
          # グレゴリオ暦     1869/2/11     3/13     4/12     5/12     6/10     7/9      8/8      9/6      10/5     11/4     12/3       1870/1/2     
          # 明治三年（庚午）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     閏十月     十一月     十二月
          # グレゴリオ暦     1870/2/1      3/2      4/1      5/1      5/30     6/29     7/28     8/27     9/25     10/25    11/23      12/22      1871/1/21
          # 明治四年（辛未）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
          # グレゴリオ暦     1871/2/19     3/21     4/20     5/19     6/18     7/18     8/16     9/15     10/14    11/13    12/12      1872/1/10     
          # 明治五年（壬申）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
          # グレゴリオ暦     1872/2/9      3/9      4/8      5/7      6/6      7/6      8/4      9/3      10/3     11/1     12/1       12/30
          table = [{:era_year => 1, :month =>  1, :start => {:y => 1868, :m =>  1, :d => 25}},
                   {:era_year => 1, :month =>  2, :start => {:y => 1868, :m =>  2, :d => 23}},
                   {:era_year => 1, :month =>  3, :start => {:y => 1868, :m =>  3, :d => 24}},
                   {:era_year => 1, :month =>  4, :start => {:y => 1868, :m =>  4, :d => 23}},
                   {:era_year => 1, :month =>  4, :start => {:y => 1868, :m =>  5, :d => 22}, :leap_month => true},
                   {:era_year => 1, :month =>  5, :start => {:y => 1868, :m =>  6, :d => 20}},
                   {:era_year => 1, :month =>  6, :start => {:y => 1868, :m =>  7, :d => 20}},
                   {:era_year => 1, :month =>  7, :start => {:y => 1868, :m =>  8, :d => 18}},
                   {:era_year => 1, :month =>  8, :start => {:y => 1868, :m =>  9, :d => 16}},
                   {:era_year => 1, :month =>  9, :start => {:y => 1868, :m => 10, :d => 16}},
                   {:era_year => 1, :month => 10, :start => {:y => 1868, :m => 11, :d => 14}},
                   {:era_year => 1, :month => 11, :start => {:y => 1868, :m => 12, :d => 14}},
                   {:era_year => 1, :month => 12, :start => {:y => 1869, :m =>  1, :d => 13}},

                   {:era_year => 2, :month =>  1, :start => {:y => 1869, :m =>  2, :d => 11}},
                   {:era_year => 2, :month =>  2, :start => {:y => 1869, :m =>  3, :d => 13}},
                   {:era_year => 2, :month =>  3, :start => {:y => 1869, :m =>  4, :d => 12}},
                   {:era_year => 2, :month =>  4, :start => {:y => 1869, :m =>  5, :d => 12}},
                   {:era_year => 2, :month =>  5, :start => {:y => 1869, :m =>  6, :d => 10}},
                   {:era_year => 2, :month =>  6, :start => {:y => 1869, :m =>  7, :d =>  9}},
                   {:era_year => 2, :month =>  7, :start => {:y => 1869, :m =>  8, :d =>  8}},
                   {:era_year => 2, :month =>  8, :start => {:y => 1869, :m =>  9, :d =>  6}},
                   {:era_year => 2, :month =>  9, :start => {:y => 1869, :m => 10, :d =>  5}},
                   {:era_year => 2, :month => 10, :start => {:y => 1869, :m => 11, :d =>  4}},
                   {:era_year => 2, :month => 11, :start => {:y => 1869, :m => 12, :d =>  3}},
                   {:era_year => 2, :month => 12, :start => {:y => 1869, :m =>  1, :d =>  2}},

                   {:era_year => 3, :month =>  1, :start => {:y => 1870, :m =>  2, :d =>  1}},
                   {:era_year => 3, :month =>  2, :start => {:y => 1870, :m =>  3, :d =>  2}},
                   {:era_year => 3, :month =>  3, :start => {:y => 1870, :m =>  4, :d =>  1}},
                   {:era_year => 3, :month =>  4, :start => {:y => 1870, :m =>  5, :d =>  1}},
                   {:era_year => 3, :month =>  5, :start => {:y => 1870, :m =>  5, :d => 30}},
                   {:era_year => 3, :month =>  6, :start => {:y => 1870, :m =>  6, :d => 29}},
                   {:era_year => 3, :month =>  7, :start => {:y => 1870, :m =>  7, :d => 28}},
                   {:era_year => 3, :month =>  8, :start => {:y => 1870, :m =>  8, :d => 27}},
                   {:era_year => 3, :month =>  9, :start => {:y => 1870, :m =>  9, :d => 25}},
                   {:era_year => 3, :month => 10, :start => {:y => 1870, :m => 10, :d => 25}},
                   {:era_year => 3, :month => 10, :start => {:y => 1870, :m => 11, :d => 23}, :leap_month => true},
                   {:era_year => 3, :month => 11, :start => {:y => 1870, :m => 12, :d => 22}},
                   {:era_year => 3, :month => 12, :start => {:y => 1871, :m =>  1, :d => 21}},

                   {:era_year => 4, :month =>  1, :start => {:y => 1871, :m => 2,  :d => 19}},
                   {:era_year => 4, :month =>  2, :start => {:y => 1871, :m => 3,  :d => 21}},
                   {:era_year => 4, :month =>  3, :start => {:y => 1871, :m => 4,  :d => 20}},
                   {:era_year => 4, :month =>  4, :start => {:y => 1871, :m => 5,  :d => 19}},
                   {:era_year => 4, :month =>  5, :start => {:y => 1871, :m => 6,  :d => 18}},
                   {:era_year => 4, :month =>  6, :start => {:y => 1871, :m => 7,  :d => 18}},
                   {:era_year => 4, :month =>  7, :start => {:y => 1871, :m => 8,  :d => 16}},
                   {:era_year => 4, :month =>  8, :start => {:y => 1871, :m => 9,  :d => 15}},
                   {:era_year => 4, :month =>  9, :start => {:y => 1871, :m => 10, :d => 14}},
                   {:era_year => 4, :month => 10, :start => {:y => 1871, :m => 11, :d => 13}},
                   {:era_year => 4, :month => 11, :start => {:y => 1871, :m => 12, :d => 12}},
                   {:era_year => 4, :month => 12, :start => {:y => 1872, :m => 1,  :d => 10}},
                   
                   {:era_year => 5, :month =>  1, :start => {:y => 1872, :m => 2,  :d => 9}},
                   {:era_year => 5, :month =>  2, :start => {:y => 1872, :m => 3,  :d => 9}},
                   {:era_year => 5, :month =>  3, :start => {:y => 1872, :m => 4,  :d => 8}},
                   {:era_year => 5, :month =>  4, :start => {:y => 1872, :m => 5,  :d => 7}},
                   {:era_year => 5, :month =>  5, :start => {:y => 1872, :m => 6,  :d => 6}},
                   {:era_year => 5, :month =>  6, :start => {:y => 1872, :m => 7,  :d => 6}},
                   {:era_year => 5, :month =>  7, :start => {:y => 1872, :m => 8,  :d => 4}},
                   {:era_year => 5, :month =>  8, :start => {:y => 1872, :m => 9,  :d => 3}},
                   {:era_year => 5, :month =>  9, :start => {:y => 1872, :m => 10, :d => 3}},
                   {:era_year => 5, :month => 10, :start => {:y => 1872, :m => 11, :d => 1}},
                   {:era_year => 5, :month => 11, :start => {:y => 1872, :m => 12, :d => 1}},
                   {:era_year => 5, :month => 12, :start => {:y => 1872, :m => 12, :d => 30}},
                  ].reverse

          start = table.find do |record|
            record[:era_year] <= year && record[:month] <= month
          end
          return ::Date.new(start[:start][:y], start[:start][:m], start[:start][:d]) + (mday - 1)
        end
      end
      ::Date.parse(str)
    end # parse
  end # Date
end # Wareki
