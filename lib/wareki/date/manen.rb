# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'Man%27en' # 
    # KANJI_ERA_NAME = '万延'

    # 万延
    # http://ja.wikipedia.org/wiki/%E4%B8%87%E5%BB%B6
    # | 万延元年 (庚申)     |       一月 |       二月 |       三月 |     閏三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1860/01/23 | 1860/02/22 | 1860/03/22 | 1860/04/21 | 1860/05/21 | 1860/06/19 | 1860/07/18 | 1860/08/17 | 1860/09/15 | 1860/10/14 | 1860/11/13 | 1860/12/12 | 1861/01/11 |
    # | 万延二年 (辛酉)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1861/02/10 | 1861/03/11 | 1861/04/10 | 1861/05/10 | 1861/06/08 | 1861/07/08 | 1861/08/06 | 1861/09/05 | 1861/10/04 | 1861/11/03 | 1861/12/02 | 1861/12/31 |

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :manen, :e_y =>  1, :e_m =>  1, :g_y => 1860, :g_m =>  1, :g_d => 23},
             {:era => :manen, :e_y =>  1, :e_m =>  2, :g_y => 1860, :g_m =>  2, :g_d => 22},
             {:era => :manen, :e_y =>  1, :e_m =>  3, :g_y => 1860, :g_m =>  3, :g_d => 22},
             {:era => :manen, :e_y =>  1, :e_m =>  3, :g_y => 1860, :g_m =>  4, :g_d => 21, :leap_month => true},
             {:era => :manen, :e_y =>  1, :e_m =>  4, :g_y => 1860, :g_m =>  5, :g_d => 21},
             {:era => :manen, :e_y =>  1, :e_m =>  5, :g_y => 1860, :g_m =>  6, :g_d => 19},
             {:era => :manen, :e_y =>  1, :e_m =>  6, :g_y => 1860, :g_m =>  7, :g_d => 18},
             {:era => :manen, :e_y =>  1, :e_m =>  7, :g_y => 1860, :g_m =>  8, :g_d => 17},
             {:era => :manen, :e_y =>  1, :e_m =>  8, :g_y => 1860, :g_m =>  9, :g_d => 15},
             {:era => :manen, :e_y =>  1, :e_m =>  9, :g_y => 1860, :g_m => 10, :g_d => 14},
             {:era => :manen, :e_y =>  1, :e_m => 10, :g_y => 1860, :g_m => 11, :g_d => 13},
             {:era => :manen, :e_y =>  1, :e_m => 11, :g_y => 1860, :g_m => 12, :g_d => 12},
             {:era => :manen, :e_y =>  1, :e_m => 12, :g_y => 1861, :g_m =>  1, :g_d => 11},

             {:era => :manen, :e_y =>  2, :e_m =>  1, :g_y => 1861, :g_m =>  2, :g_d => 10},
             {:era => :manen, :e_y =>  2, :e_m =>  2, :g_y => 1861, :g_m =>  3, :g_d => 11},
             {:era => :manen, :e_y =>  2, :e_m =>  3, :g_y => 1861, :g_m =>  4, :g_d => 10},
             {:era => :manen, :e_y =>  2, :e_m =>  4, :g_y => 1861, :g_m =>  5, :g_d => 10},
             {:era => :manen, :e_y =>  2, :e_m =>  5, :g_y => 1861, :g_m =>  6, :g_d =>  8},
             {:era => :manen, :e_y =>  2, :e_m =>  6, :g_y => 1861, :g_m =>  7, :g_d =>  8},
             {:era => :manen, :e_y =>  2, :e_m =>  7, :g_y => 1861, :g_m =>  8, :g_d =>  6},
             {:era => :manen, :e_y =>  2, :e_m =>  8, :g_y => 1861, :g_m =>  9, :g_d =>  5},
             {:era => :manen, :e_y =>  2, :e_m =>  9, :g_y => 1861, :g_m => 10, :g_d =>  4},
             {:era => :manen, :e_y =>  2, :e_m => 10, :g_y => 1861, :g_m => 11, :g_d =>  3},
             {:era => :manen, :e_y =>  2, :e_m => 11, :g_y => 1861, :g_m => 12, :g_d =>  2},
             {:era => :manen, :e_y =>  2, :e_m => 12, :g_y => 1861, :g_m => 12, :g_d => 31},

            ]

    add_era_table table
  end # Date
end # Wareki
