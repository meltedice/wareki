# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'genji'
    # KANJI_ERA_NAME = '慶応'

    # http://ja.wikipedia.org/wiki/%E5%85%83%E6%B2%BB
    # 元治元年（甲子）     一月     二月     三月     四月     五月     六月     七月     八月     九月      十月     十一月     十二月     
    # グレゴリオ暦     1864/2/8      3/8      4/6      5/6      6/4      7/4      8/2      9/1     10/1     10/31      11/29      12/29     
    # 元治二年（乙丑）     一月     二月     三月     四月     五月   閏五月     六月     七月     八月      九月       十月     十一月     十二月
    # グレゴリオ暦    1865/1/27     2/26     3/27     4/25     5/25     6/23     7/23     8/21     9/20     10/20      11/18      12/18     1866/1/17

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [{:era => :keio, :e_y => 1, :e_m =>  1, :g_y => 1864, :g_m =>  2, :g_d =>  8},
             {:era => :keio, :e_y => 1, :e_m =>  2, :g_y => 1864, :g_m =>  3, :g_d =>  8},
             {:era => :keio, :e_y => 1, :e_m =>  3, :g_y => 1864, :g_m =>  4, :g_d =>  6},
             {:era => :keio, :e_y => 1, :e_m =>  4, :g_y => 1864, :g_m =>  5, :g_d =>  6},
             {:era => :keio, :e_y => 1, :e_m =>  5, :g_y => 1864, :g_m =>  6, :g_d =>  4},
             {:era => :keio, :e_y => 1, :e_m =>  6, :g_y => 1864, :g_m =>  7, :g_d =>  4},
             {:era => :keio, :e_y => 1, :e_m =>  7, :g_y => 1864, :g_m =>  8, :g_d =>  2},
             {:era => :keio, :e_y => 1, :e_m =>  8, :g_y => 1864, :g_m =>  9, :g_d =>  1},
             {:era => :keio, :e_y => 1, :e_m =>  9, :g_y => 1864, :g_m => 10, :g_d =>  1},
             {:era => :keio, :e_y => 1, :e_m => 10, :g_y => 1864, :g_m => 10, :g_d => 31},
             {:era => :keio, :e_y => 1, :e_m => 11, :g_y => 1864, :g_m => 11, :g_d => 29},
             {:era => :keio, :e_y => 1, :e_m => 12, :g_y => 1864, :g_m => 12, :g_d => 29},

             {:era => :keio, :e_y => 2, :e_m =>  1, :g_y => 1865, :g_m =>  1, :g_d => 27},
             {:era => :keio, :e_y => 2, :e_m =>  2, :g_y => 1865, :g_m =>  2, :g_d => 26},
             {:era => :keio, :e_y => 2, :e_m =>  3, :g_y => 1865, :g_m =>  3, :g_d => 27},
             {:era => :keio, :e_y => 2, :e_m =>  4, :g_y => 1865, :g_m =>  4, :g_d => 25},
             {:era => :keio, :e_y => 2, :e_m =>  5, :g_y => 1865, :g_m =>  5, :g_d => 25},
             {:era => :keio, :e_y => 2, :e_m =>  5, :g_y => 1865, :g_m =>  6, :g_d => 23, :leap_month => true},
             {:era => :keio, :e_y => 2, :e_m =>  6, :g_y => 1865, :g_m =>  7, :g_d => 23},
             {:era => :keio, :e_y => 2, :e_m =>  7, :g_y => 1865, :g_m =>  8, :g_d => 21},
             {:era => :keio, :e_y => 2, :e_m =>  8, :g_y => 1865, :g_m =>  9, :g_d => 20},
             {:era => :keio, :e_y => 2, :e_m =>  9, :g_y => 1865, :g_m => 10, :g_d => 20},
             {:era => :keio, :e_y => 2, :e_m => 10, :g_y => 1865, :g_m => 11, :g_d => 18},
             {:era => :keio, :e_y => 2, :e_m => 11, :g_y => 1865, :g_m => 12, :g_d => 18},
             {:era => :keio, :e_y => 2, :e_m => 12, :g_y => 1866, :g_m =>  1, :g_d => 17},
            ]
    add_era_table table
  end # Date
end # Wareki
