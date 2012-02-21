# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'bunkyu'
    # KANJI_ERA_NAME = '文久'

    # http://ja.wikipedia.org/wiki/%E6%96%87%E4%B9%85
    # 文久元年（辛酉）      一月     二月     三月     四月     五月     六月     七月     八月       九月      十月     十一月     十二月     
    # グレゴリオ暦     1861/2/10     3/11     4/10     5/10      6/8      7/8      8/6      9/5       10/4      11/3       12/2      12/31     
    # 文久二年（壬戌）      一月     二月     三月     四月     五月     六月     七月     八月     閏八月      九月       十月     十一月        十二月
    # グレゴリオ暦     1862/1/30      3/1     3/30     4/29     5/29     6/27     7/27     8/25       9/24     10/23      11/22      12/21     1863/1/20
    # 文久三年（癸亥）      一月     二月     三月     四月     五月     六月     七月     八月       九月      十月     十一月     十二月     
    # グレゴリオ暦     1863/2/18     3/19     4/18     5/18     6/16     7/16     8/14     9/13      10/13     11/11      12/11   1864/1/9     
    # 文久四年（甲子）      一月     二月     三月     四月     五月     六月     七月     八月       九月      十月     十一月     十二月     
    # グレゴリオ暦      1864/2/8      3/8      4/6      5/6      6/4      7/4      8/2      9/1       10/1     10/31      11/29      12/29     

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [{:era => :bunkyu, :e_y => 1, :e_m => 1, :g_y => 1861, :g_m => 2, :g_d => 10},
             {:era => :bunkyu, :e_y => 1, :e_m => 2, :g_y => 1861, :g_m => 3, :g_d => 11},
             {:era => :bunkyu, :e_y => 1, :e_m => 3, :g_y => 1861, :g_m => 4, :g_d => 10},
             {:era => :bunkyu, :e_y => 1, :e_m => 4, :g_y => 1861, :g_m => 5, :g_d => 10},
             {:era => :bunkyu, :e_y => 1, :e_m => 5, :g_y => 1861, :g_m => 6, :g_d => 8},
             {:era => :bunkyu, :e_y => 1, :e_m => 6, :g_y => 1861, :g_m => 7, :g_d => 8},
             {:era => :bunkyu, :e_y => 1, :e_m => 7, :g_y => 1861, :g_m => 8, :g_d => 6},
             {:era => :bunkyu, :e_y => 1, :e_m => 8, :g_y => 1861, :g_m => 9, :g_d => 5},
             {:era => :bunkyu, :e_y => 1, :e_m => 9, :g_y => 1861, :g_m => 10, :g_d => 4},
             {:era => :bunkyu, :e_y => 1, :e_m => 10, :g_y => 1861, :g_m => 11, :g_d => 3},
             {:era => :bunkyu, :e_y => 1, :e_m => 11, :g_y => 1861, :g_m => 12, :g_d => 2},
             {:era => :bunkyu, :e_y => 1, :e_m => 12, :g_y => 1861, :g_m => 12, :g_d => 31},

             {:era => :bunkyu, :e_y => 2, :e_m => 1, :g_y => 1862, :g_m => 1, :g_d => 30},
             {:era => :bunkyu, :e_y => 2, :e_m => 2, :g_y => 1862, :g_m => 3, :g_d => 1},
             {:era => :bunkyu, :e_y => 2, :e_m => 3, :g_y => 1862, :g_m => 3, :g_d => 30},
             {:era => :bunkyu, :e_y => 2, :e_m => 4, :g_y => 1862, :g_m => 4, :g_d => 29},
             {:era => :bunkyu, :e_y => 2, :e_m => 5, :g_y => 1862, :g_m => 5, :g_d => 29},
             {:era => :bunkyu, :e_y => 2, :e_m => 6, :g_y => 1862, :g_m => 6, :g_d => 27},
             {:era => :bunkyu, :e_y => 2, :e_m => 7, :g_y => 1862, :g_m => 7, :g_d => 27},
             {:era => :bunkyu, :e_y => 2, :e_m => 8, :g_y => 1862, :g_m => 8, :g_d => 25},
             {:era => :bunkyu, :e_y => 2, :e_m => 8, :g_y => 1862, :g_m => 9, :g_d => 24, :leap_month => true},
             {:era => :bunkyu, :e_y => 2, :e_m => 9, :g_y => 1862, :g_m => 10, :g_d => 23},
             {:era => :bunkyu, :e_y => 2, :e_m => 10, :g_y => 1862, :g_m => 11, :g_d => 22},
             {:era => :bunkyu, :e_y => 2, :e_m => 11, :g_y => 1862, :g_m => 12, :g_d => 21},
             {:era => :bunkyu, :e_y => 2, :e_m => 12, :g_y => 1863, :g_m => 1, :g_d => 20},

             {:era => :bunkyu, :e_y => 3, :e_m => 1, :g_y => 1863, :g_m => 2, :g_d => 18},
             {:era => :bunkyu, :e_y => 3, :e_m => 2, :g_y => 1863, :g_m => 3, :g_d => 19},
             {:era => :bunkyu, :e_y => 3, :e_m => 3, :g_y => 1863, :g_m => 4, :g_d => 18},
             {:era => :bunkyu, :e_y => 3, :e_m => 4, :g_y => 1863, :g_m => 5, :g_d => 18},
             {:era => :bunkyu, :e_y => 3, :e_m => 5, :g_y => 1863, :g_m => 6, :g_d => 16},
             {:era => :bunkyu, :e_y => 3, :e_m => 6, :g_y => 1863, :g_m => 7, :g_d => 16},
             {:era => :bunkyu, :e_y => 3, :e_m => 7, :g_y => 1863, :g_m => 8, :g_d => 14},
             {:era => :bunkyu, :e_y => 3, :e_m => 8, :g_y => 1863, :g_m => 9, :g_d => 13},
             {:era => :bunkyu, :e_y => 3, :e_m => 9, :g_y => 1863, :g_m => 10, :g_d => 13},
             {:era => :bunkyu, :e_y => 3, :e_m => 10, :g_y => 1863, :g_m => 11, :g_d => 11},
             {:era => :bunkyu, :e_y => 3, :e_m => 11, :g_y => 1863, :g_m => 12, :g_d => 11},
             {:era => :bunkyu, :e_y => 3, :e_m => 12, :g_y => 1864, :g_m => 1, :g_d => 9},

             {:era => :bunkyu, :e_y => 4, :e_m => 1, :g_y => 1864, :g_m => 2, :g_d => 8},
             {:era => :bunkyu, :e_y => 4, :e_m => 2, :g_y => 1864, :g_m => 3, :g_d => 8},
             {:era => :bunkyu, :e_y => 4, :e_m => 3, :g_y => 1864, :g_m => 4, :g_d => 6},
             {:era => :bunkyu, :e_y => 4, :e_m => 4, :g_y => 1864, :g_m => 5, :g_d => 6},
             {:era => :bunkyu, :e_y => 4, :e_m => 5, :g_y => 1864, :g_m => 6, :g_d => 4},
             {:era => :bunkyu, :e_y => 4, :e_m => 6, :g_y => 1864, :g_m => 7, :g_d => 4},
             {:era => :bunkyu, :e_y => 4, :e_m => 7, :g_y => 1864, :g_m => 8, :g_d => 2},
             {:era => :bunkyu, :e_y => 4, :e_m => 8, :g_y => 1864, :g_m => 9, :g_d => 1},
             {:era => :bunkyu, :e_y => 4, :e_m => 9, :g_y => 1864, :g_m => 10, :g_d => 1},
             {:era => :bunkyu, :e_y => 4, :e_m => 10, :g_y => 1864, :g_m => 10, :g_d => 31},
             {:era => :bunkyu, :e_y => 4, :e_m => 11, :g_y => 1864, :g_m => 11, :g_d => 29},
             {:era => :bunkyu, :e_y => 4, :e_m => 12, :g_y => 1864, :g_m => 12, :g_d => 29},
            ]
    add_era_table table
  end # Date
end # Wareki
