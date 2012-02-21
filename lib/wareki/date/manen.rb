# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'manen' # まんえん
    # KANJI_ERA_NAME = '万延'

    # http://ja.wikipedia.org/wiki/%E4%B8%87%E5%BB%B6
    # 万延元年（庚申）      一月     二月     三月     閏三月     四月     五月     六月     七月     八月      九月       十月     十一月        十二月
    # グレゴリオ暦     1860/1/23     2/22     3/22       4/21     5/21     6/19     7/18     8/17     9/15     10/14      11/13      12/12     1861/1/11 
    # 万延二年（辛酉）      一月     二月     三月       四月     五月     六月     七月     八月     九月      十月     十一月     十二月     
    # グレゴリオ暦     1861/2/10     3/11     4/10       5/10      6/8      7/8      8/6      9/5     10/4      11/3       12/2      12/31     

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :manen, :e_y => 1, :e_m => 1, :g_y => 1860, :g_m => 1, :g_d => 23},
             {:era => :manen, :e_y => 1, :e_m => 2, :g_y => 1860, :g_m => 2, :g_d => 22},
             {:era => :manen, :e_y => 1, :e_m => 3, :g_y => 1860, :g_m => 3, :g_d => 22},
             {:era => :manen, :e_y => 1, :e_m => 3, :g_y => 1860, :g_m => 4, :g_d => 21, :leap_month => true},
             {:era => :manen, :e_y => 1, :e_m => 4, :g_y => 1860, :g_m => 5, :g_d => 21},
             {:era => :manen, :e_y => 1, :e_m => 5, :g_y => 1860, :g_m => 6, :g_d => 19},
             {:era => :manen, :e_y => 1, :e_m => 6, :g_y => 1860, :g_m => 7, :g_d => 18},
             {:era => :manen, :e_y => 1, :e_m => 7, :g_y => 1860, :g_m => 8, :g_d => 17},
             {:era => :manen, :e_y => 1, :e_m => 8, :g_y => 1860, :g_m => 9, :g_d => 15},
             {:era => :manen, :e_y => 1, :e_m => 9,  :g_y => 1860, :g_m => 10, :g_d => 14},
             {:era => :manen, :e_y => 1, :e_m => 10, :g_y => 1860, :g_m => 11, :g_d => 13},
             {:era => :manen, :e_y => 1, :e_m => 11, :g_y => 1860, :g_m => 12, :g_d => 12},
             {:era => :manen, :e_y => 1, :e_m => 12, :g_y => 1861, :g_m => 1, :g_d => 11},

             {:era => :manen, :e_y => 2, :e_m => 1, :g_y => 1861, :g_m => 2, :g_d => 10},
             {:era => :manen, :e_y => 2, :e_m => 2, :g_y => 1861, :g_m => 3, :g_d => 11},
             {:era => :manen, :e_y => 2, :e_m => 3, :g_y => 1861, :g_m => 4, :g_d => 10},
             {:era => :manen, :e_y => 2, :e_m => 4, :g_y => 1861, :g_m => 5, :g_d => 10},
             {:era => :manen, :e_y => 2, :e_m => 5, :g_y => 1861, :g_m => 6, :g_d => 8},
             {:era => :manen, :e_y => 2, :e_m => 6, :g_y => 1861, :g_m => 7, :g_d => 8},
             {:era => :manen, :e_y => 2, :e_m => 7, :g_y => 1861, :g_m => 8, :g_d => 6},
             {:era => :manen, :e_y => 2, :e_m => 8, :g_y => 1861, :g_m => 9, :g_d => 5},
             {:era => :manen, :e_y => 2, :e_m => 9, :g_y => 1861, :g_m => 10, :g_d => 4},
             {:era => :manen, :e_y => 2, :e_m => 10, :g_y => 1861, :g_m => 11, :g_d => 3},
             {:era => :manen, :e_y => 2, :e_m => 11, :g_y => 1861, :g_m => 12, :g_d => 2},
             {:era => :manen, :e_y => 2, :e_m => 12, :g_y => 1861, :g_m => 12, :g_d => 31},
            ]
    add_era_table table
  end # Date
end # Wareki
