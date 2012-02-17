# -*- coding: utf-8 -*-

module Wareki::Date
  module Meiji
    include Era

    ERA_NAME = 'meiji'
    KANJI_ERA_NAME = '明治'

    # http://ja.wikipedia.org/wiki/%E6%98%8E%E6%B2%BB
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

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    TABLE = [{:era => :meiji, :e_y => 1, :e_m =>  1, :g_y => 1868, :g_m =>  1, :g_d => 25},
             {:era => :meiji, :e_y => 1, :e_m =>  2, :g_y => 1868, :g_m =>  2, :g_d => 23},
             {:era => :meiji, :e_y => 1, :e_m =>  3, :g_y => 1868, :g_m =>  3, :g_d => 24},
             {:era => :meiji, :e_y => 1, :e_m =>  4, :g_y => 1868, :g_m =>  4, :g_d => 23},
             {:era => :meiji, :e_y => 1, :e_m =>  4, :g_y => 1868, :g_m =>  5, :g_d => 22, :leap_month => true},
             {:era => :meiji, :e_y => 1, :e_m =>  5, :g_y => 1868, :g_m =>  6, :g_d => 20},
             {:era => :meiji, :e_y => 1, :e_m =>  6, :g_y => 1868, :g_m =>  7, :g_d => 20},
             {:era => :meiji, :e_y => 1, :e_m =>  7, :g_y => 1868, :g_m =>  8, :g_d => 18},
             {:era => :meiji, :e_y => 1, :e_m =>  8, :g_y => 1868, :g_m =>  9, :g_d => 16},
             {:era => :meiji, :e_y => 1, :e_m =>  9, :g_y => 1868, :g_m => 10, :g_d => 16},
             {:era => :meiji, :e_y => 1, :e_m => 10, :g_y => 1868, :g_m => 11, :g_d => 14},
             {:era => :meiji, :e_y => 1, :e_m => 11, :g_y => 1868, :g_m => 12, :g_d => 14},
             {:era => :meiji, :e_y => 1, :e_m => 12, :g_y => 1869, :g_m =>  1, :g_d => 13},

             {:era => :meiji, :e_y => 2, :e_m =>  1, :g_y => 1869, :g_m =>  2, :g_d => 11},
             {:era => :meiji, :e_y => 2, :e_m =>  2, :g_y => 1869, :g_m =>  3, :g_d => 13},
             {:era => :meiji, :e_y => 2, :e_m =>  3, :g_y => 1869, :g_m =>  4, :g_d => 12},
             {:era => :meiji, :e_y => 2, :e_m =>  4, :g_y => 1869, :g_m =>  5, :g_d => 12},
             {:era => :meiji, :e_y => 2, :e_m =>  5, :g_y => 1869, :g_m =>  6, :g_d => 10},
             {:era => :meiji, :e_y => 2, :e_m =>  6, :g_y => 1869, :g_m =>  7, :g_d =>  9},
             {:era => :meiji, :e_y => 2, :e_m =>  7, :g_y => 1869, :g_m =>  8, :g_d =>  8},
             {:era => :meiji, :e_y => 2, :e_m =>  8, :g_y => 1869, :g_m =>  9, :g_d =>  6},
             {:era => :meiji, :e_y => 2, :e_m =>  9, :g_y => 1869, :g_m => 10, :g_d =>  5},
             {:era => :meiji, :e_y => 2, :e_m => 10, :g_y => 1869, :g_m => 11, :g_d =>  4},
             {:era => :meiji, :e_y => 2, :e_m => 11, :g_y => 1869, :g_m => 12, :g_d =>  3},
             {:era => :meiji, :e_y => 2, :e_m => 12, :g_y => 1869, :g_m =>  1, :g_d =>  2},

             {:era => :meiji, :e_y => 3, :e_m =>  1, :g_y => 1870, :g_m =>  2, :g_d =>  1},
             {:era => :meiji, :e_y => 3, :e_m =>  2, :g_y => 1870, :g_m =>  3, :g_d =>  2},
             {:era => :meiji, :e_y => 3, :e_m =>  3, :g_y => 1870, :g_m =>  4, :g_d =>  1},
             {:era => :meiji, :e_y => 3, :e_m =>  4, :g_y => 1870, :g_m =>  5, :g_d =>  1},
             {:era => :meiji, :e_y => 3, :e_m =>  5, :g_y => 1870, :g_m =>  5, :g_d => 30},
             {:era => :meiji, :e_y => 3, :e_m =>  6, :g_y => 1870, :g_m =>  6, :g_d => 29},
             {:era => :meiji, :e_y => 3, :e_m =>  7, :g_y => 1870, :g_m =>  7, :g_d => 28},
             {:era => :meiji, :e_y => 3, :e_m =>  8, :g_y => 1870, :g_m =>  8, :g_d => 27},
             {:era => :meiji, :e_y => 3, :e_m =>  9, :g_y => 1870, :g_m =>  9, :g_d => 25},
             {:era => :meiji, :e_y => 3, :e_m => 10, :g_y => 1870, :g_m => 10, :g_d => 25},
             {:era => :meiji, :e_y => 3, :e_m => 10, :g_y => 1870, :g_m => 11, :g_d => 23, :leap_month => true},
             {:era => :meiji, :e_y => 3, :e_m => 11, :g_y => 1870, :g_m => 12, :g_d => 22},
             {:era => :meiji, :e_y => 3, :e_m => 12, :g_y => 1871, :g_m =>  1, :g_d => 21},

             {:era => :meiji, :e_y => 4, :e_m =>  1, :g_y => 1871, :g_m =>  2, :g_d => 19},
             {:era => :meiji, :e_y => 4, :e_m =>  2, :g_y => 1871, :g_m =>  3, :g_d => 21},
             {:era => :meiji, :e_y => 4, :e_m =>  3, :g_y => 1871, :g_m =>  4, :g_d => 20},
             {:era => :meiji, :e_y => 4, :e_m =>  4, :g_y => 1871, :g_m =>  5, :g_d => 19},
             {:era => :meiji, :e_y => 4, :e_m =>  5, :g_y => 1871, :g_m =>  6, :g_d => 18},
             {:era => :meiji, :e_y => 4, :e_m =>  6, :g_y => 1871, :g_m =>  7, :g_d => 18},
             {:era => :meiji, :e_y => 4, :e_m =>  7, :g_y => 1871, :g_m =>  8, :g_d => 16},
             {:era => :meiji, :e_y => 4, :e_m =>  8, :g_y => 1871, :g_m =>  9, :g_d => 15},
             {:era => :meiji, :e_y => 4, :e_m =>  9, :g_y => 1871, :g_m => 10, :g_d => 14},
             {:era => :meiji, :e_y => 4, :e_m => 10, :g_y => 1871, :g_m => 11, :g_d => 13},
             {:era => :meiji, :e_y => 4, :e_m => 11, :g_y => 1871, :g_m => 12, :g_d => 12},
             {:era => :meiji, :e_y => 4, :e_m => 12, :g_y => 1872, :g_m =>  1, :g_d => 10},
             
             {:era => :meiji, :e_y => 5, :e_m =>  1, :g_y => 1872, :g_m =>  2, :g_d =>  9},
             {:era => :meiji, :e_y => 5, :e_m =>  2, :g_y => 1872, :g_m =>  3, :g_d =>  9},
             {:era => :meiji, :e_y => 5, :e_m =>  3, :g_y => 1872, :g_m =>  4, :g_d =>  8},
             {:era => :meiji, :e_y => 5, :e_m =>  4, :g_y => 1872, :g_m =>  5, :g_d =>  7},
             {:era => :meiji, :e_y => 5, :e_m =>  5, :g_y => 1872, :g_m =>  6, :g_d =>  6},
             {:era => :meiji, :e_y => 5, :e_m =>  6, :g_y => 1872, :g_m =>  7, :g_d =>  6},
             {:era => :meiji, :e_y => 5, :e_m =>  7, :g_y => 1872, :g_m =>  8, :g_d =>  4},
             {:era => :meiji, :e_y => 5, :e_m =>  8, :g_y => 1872, :g_m =>  9, :g_d =>  3},
             {:era => :meiji, :e_y => 5, :e_m =>  9, :g_y => 1872, :g_m => 10, :g_d =>  3},
             {:era => :meiji, :e_y => 5, :e_m => 10, :g_y => 1872, :g_m => 11, :g_d =>  1},
             {:era => :meiji, :e_y => 5, :e_m => 11, :g_y => 1872, :g_m => 12, :g_d =>  1},
             {:era => :meiji, :e_y => 5, :e_m => 12, :g_y => 1872, :g_m => 12, :g_d => 30},
            ]
  end
end # Wareki::Date
