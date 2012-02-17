# -*- coding: utf-8 -*-

module Wareki::Date
  module Keio
    include Era

    # http://ja.wikipedia.org/wiki/%E6%85%B6%E5%BF%9C
    # 慶応元年（乙丑）      一月     二月     三月     四月     五月     閏五月   六月     七月     八月     九月       十月     十一月     十二月
    # グレゴリオ暦     1865/1/27     2/26     3/27     4/25     5/25     6/23     7/23     8/21     9/20    10/20      11/18      12/18     1866/1/17
    # 慶応二年（丙寅）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
    # グレゴリオ暦     1866/2/15     3/17     4/15     5/15     6/13     7/12     8/10      9/9     10/9     11/7       12/7   1867/1/6     
    # 慶応三年（丁卯）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
    # グレゴリオ暦     1867/2/5       3/6      4/5      5/4      6/3     7/2      7/31     8/29     9/28    10/27      11/26      12/26     
    # 慶応四年（戊辰）      一月     二月     三月     四月   閏四月     五月     六月     七月     八月     九月       十月     十一月     十二月
    # グレゴリオ暦     1868/1/25     2/23     3/24     4/23     5/22     6/20     7/20     8/18     9/16    10/16      11/14      12/14     1869/1/13

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    TABLE = [{:era => :keio, :e_y => 1, :e_m =>  1, :g_y => 1865, :g_m =>  1, :g_d => 27},
             {:era => :keio, :e_y => 1, :e_m =>  2, :g_y => 1865, :g_m =>  2, :g_d => 26},
             {:era => :keio, :e_y => 1, :e_m =>  3, :g_y => 1865, :g_m =>  3, :g_d => 27},
             {:era => :keio, :e_y => 1, :e_m =>  4, :g_y => 1865, :g_m =>  4, :g_d => 25},
             {:era => :keio, :e_y => 1, :e_m =>  5, :g_y => 1865, :g_m =>  5, :g_d => 25},
             {:era => :keio, :e_y => 1, :e_m =>  5, :g_y => 1865, :g_m =>  6, :g_d => 23, :leap_month => true},
             {:era => :keio, :e_y => 1, :e_m =>  6, :g_y => 1865, :g_m =>  7, :g_d => 23},
             {:era => :keio, :e_y => 1, :e_m =>  7, :g_y => 1865, :g_m =>  8, :g_d => 21},
             {:era => :keio, :e_y => 1, :e_m =>  8, :g_y => 1865, :g_m =>  9, :g_d => 20},
             {:era => :keio, :e_y => 1, :e_m =>  9, :g_y => 1865, :g_m => 10, :g_d => 20},
             {:era => :keio, :e_y => 1, :e_m => 10, :g_y => 1865, :g_m => 11, :g_d => 18},
             {:era => :keio, :e_y => 1, :e_m => 11, :g_y => 1865, :g_m => 12, :g_d => 18},
             {:era => :keio, :e_y => 1, :e_m => 12, :g_y => 1866, :g_m =>  1, :g_d => 17},

             {:era => :keio, :e_y => 2, :e_m =>  1, :g_y => 1866, :g_m =>  2, :g_d => 15},
             {:era => :keio, :e_y => 2, :e_m =>  2, :g_y => 1866, :g_m =>  3, :g_d => 17},
             {:era => :keio, :e_y => 2, :e_m =>  3, :g_y => 1866, :g_m =>  4, :g_d => 15},
             {:era => :keio, :e_y => 2, :e_m =>  4, :g_y => 1866, :g_m =>  5, :g_d => 15},
             {:era => :keio, :e_y => 2, :e_m =>  5, :g_y => 1866, :g_m =>  6, :g_d => 13},
             {:era => :keio, :e_y => 2, :e_m =>  6, :g_y => 1866, :g_m =>  7, :g_d => 12},
             {:era => :keio, :e_y => 2, :e_m =>  7, :g_y => 1866, :g_m =>  8, :g_d => 10},
             {:era => :keio, :e_y => 2, :e_m =>  8, :g_y => 1866, :g_m =>  9, :g_d =>  9},
             {:era => :keio, :e_y => 2, :e_m =>  9, :g_y => 1866, :g_m => 10, :g_d =>  9},
             {:era => :keio, :e_y => 2, :e_m => 10, :g_y => 1866, :g_m => 11, :g_d =>  7},
             {:era => :keio, :e_y => 2, :e_m => 11, :g_y => 1866, :g_m => 12, :g_d =>  7},
             {:era => :keio, :e_y => 2, :e_m => 12, :g_y => 1867, :g_m =>  1, :g_d =>  6},

             {:era => :keio, :e_y => 3, :e_m =>  1, :g_y => 1867, :g_m =>  2, :g_d =>  5},
             {:era => :keio, :e_y => 3, :e_m =>  2, :g_y => 1867, :g_m =>  3, :g_d =>  6},
             {:era => :keio, :e_y => 3, :e_m =>  3, :g_y => 1867, :g_m =>  4, :g_d =>  5},
             {:era => :keio, :e_y => 3, :e_m =>  4, :g_y => 1867, :g_m =>  5, :g_d =>  4},
             {:era => :keio, :e_y => 3, :e_m =>  5, :g_y => 1867, :g_m =>  6, :g_d =>  3},
             {:era => :keio, :e_y => 3, :e_m =>  6, :g_y => 1867, :g_m =>  7, :g_d =>  2},
             {:era => :keio, :e_y => 3, :e_m =>  7, :g_y => 1867, :g_m =>  7, :g_d => 31},
             {:era => :keio, :e_y => 3, :e_m =>  8, :g_y => 1867, :g_m =>  8, :g_d => 29},
             {:era => :keio, :e_y => 3, :e_m =>  9, :g_y => 1867, :g_m =>  9, :g_d => 28},
             {:era => :keio, :e_y => 3, :e_m => 10, :g_y => 1867, :g_m => 10, :g_d => 27},
             {:era => :keio, :e_y => 3, :e_m => 11, :g_y => 1867, :g_m => 11, :g_d => 26},
             {:era => :keio, :e_y => 3, :e_m => 12, :g_y => 1867, :g_m => 12, :g_d => 26},

             {:era => :keio, :e_y => 4, :e_m =>  1, :g_y => 1868, :g_m =>  1, :g_d => 25},
             {:era => :keio, :e_y => 4, :e_m =>  2, :g_y => 1868, :g_m =>  2, :g_d => 23},
             {:era => :keio, :e_y => 4, :e_m =>  3, :g_y => 1868, :g_m =>  3, :g_d => 24},
             {:era => :keio, :e_y => 4, :e_m =>  4, :g_y => 1868, :g_m =>  4, :g_d => 23},
             {:era => :keio, :e_y => 4, :e_m =>  4, :g_y => 1868, :g_m =>  5, :g_d => 22, :leap_month => true},
             {:era => :keio, :e_y => 4, :e_m =>  5, :g_y => 1868, :g_m =>  6, :g_d => 20},
             {:era => :keio, :e_y => 4, :e_m =>  6, :g_y => 1868, :g_m =>  7, :g_d => 20},
             {:era => :keio, :e_y => 4, :e_m =>  7, :g_y => 1868, :g_m =>  8, :g_d => 18},
             {:era => :keio, :e_y => 4, :e_m =>  8, :g_y => 1868, :g_m =>  9, :g_d => 16},
             {:era => :keio, :e_y => 4, :e_m =>  9, :g_y => 1868, :g_m => 10, :g_d => 16},
             {:era => :keio, :e_y => 4, :e_m => 10, :g_y => 1868, :g_m => 11, :g_d => 14},
             {:era => :keio, :e_y => 4, :e_m => 11, :g_y => 1868, :g_m => 12, :g_d => 14},
             {:era => :keio, :e_y => 4, :e_m => 12, :g_y => 1868, :g_m =>  1, :g_d => 13},
             ]
  end
end # Wareki::Date
