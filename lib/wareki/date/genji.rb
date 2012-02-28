# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'Genji' # 
    # KANJI_ERA_NAME = '元治'

    # 元治
    # http://ja.wikipedia.org/wiki/%E5%85%83%E6%B2%BB
    # | 元治元年 (甲子)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1864/02/08 | 1864/03/08 | 1864/04/06 | 1864/05/06 | 1864/06/04 | 1864/07/04 | 1864/08/02 | 1864/09/01 | 1864/10/01 | 1864/10/31 | 1864/11/29 | 1864/12/29 |
    # | 元治二年 (乙丑)     |       一月 |       二月 |       三月 |       四月 |       五月 |     閏五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1865/01/27 | 1865/02/26 | 1865/03/27 | 1865/04/25 | 1865/05/25 | 1865/06/23 | 1865/07/23 | 1865/08/21 | 1865/09/20 | 1865/10/20 | 1865/11/18 | 1865/12/18 | 1866/01/17 |

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :genji, :e_y =>  1, :e_m =>  1, :g_y => 1864, :g_m =>  2, :g_d =>  8},
             {:era => :genji, :e_y =>  1, :e_m =>  2, :g_y => 1864, :g_m =>  3, :g_d =>  8},
             {:era => :genji, :e_y =>  1, :e_m =>  3, :g_y => 1864, :g_m =>  4, :g_d =>  6},
             {:era => :genji, :e_y =>  1, :e_m =>  4, :g_y => 1864, :g_m =>  5, :g_d =>  6},
             {:era => :genji, :e_y =>  1, :e_m =>  5, :g_y => 1864, :g_m =>  6, :g_d =>  4},
             {:era => :genji, :e_y =>  1, :e_m =>  6, :g_y => 1864, :g_m =>  7, :g_d =>  4},
             {:era => :genji, :e_y =>  1, :e_m =>  7, :g_y => 1864, :g_m =>  8, :g_d =>  2},
             {:era => :genji, :e_y =>  1, :e_m =>  8, :g_y => 1864, :g_m =>  9, :g_d =>  1},
             {:era => :genji, :e_y =>  1, :e_m =>  9, :g_y => 1864, :g_m => 10, :g_d =>  1},
             {:era => :genji, :e_y =>  1, :e_m => 10, :g_y => 1864, :g_m => 10, :g_d => 31},
             {:era => :genji, :e_y =>  1, :e_m => 11, :g_y => 1864, :g_m => 11, :g_d => 29},
             {:era => :genji, :e_y =>  1, :e_m => 12, :g_y => 1864, :g_m => 12, :g_d => 29},

             {:era => :genji, :e_y =>  2, :e_m =>  1, :g_y => 1865, :g_m =>  1, :g_d => 27},
             {:era => :genji, :e_y =>  2, :e_m =>  2, :g_y => 1865, :g_m =>  2, :g_d => 26},
             {:era => :genji, :e_y =>  2, :e_m =>  3, :g_y => 1865, :g_m =>  3, :g_d => 27},
             {:era => :genji, :e_y =>  2, :e_m =>  4, :g_y => 1865, :g_m =>  4, :g_d => 25},
             {:era => :genji, :e_y =>  2, :e_m =>  5, :g_y => 1865, :g_m =>  5, :g_d => 25},
             {:era => :genji, :e_y =>  2, :e_m =>  5, :g_y => 1865, :g_m =>  6, :g_d => 23, :leap_month => true},
             {:era => :genji, :e_y =>  2, :e_m =>  6, :g_y => 1865, :g_m =>  7, :g_d => 23},
             {:era => :genji, :e_y =>  2, :e_m =>  7, :g_y => 1865, :g_m =>  8, :g_d => 21},
             {:era => :genji, :e_y =>  2, :e_m =>  8, :g_y => 1865, :g_m =>  9, :g_d => 20},
             {:era => :genji, :e_y =>  2, :e_m =>  9, :g_y => 1865, :g_m => 10, :g_d => 20},
             {:era => :genji, :e_y =>  2, :e_m => 10, :g_y => 1865, :g_m => 11, :g_d => 18},
             {:era => :genji, :e_y =>  2, :e_m => 11, :g_y => 1865, :g_m => 12, :g_d => 18},
             {:era => :genji, :e_y =>  2, :e_m => 12, :g_y => 1866, :g_m =>  1, :g_d => 17},

            ]

    add_era_table table
  end # Date
end # Wareki
