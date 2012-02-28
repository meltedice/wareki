# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'J%C5%8D%C5%8D_(Edo_period)' # 
    # KANJI_ERA_NAME = '承応'

    # 承応
    # http://ja.wikipedia.org/wiki/%E6%89%BF%E5%BF%9C
    # | 承応元年 (壬辰)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1652/02/10 | 1652/03/10 | 1652/04/09 | 1652/05/08 | 1652/06/06 | 1652/07/06 | 1652/08/04 | 1652/09/03 | 1652/10/03 | 1652/11/01 | 1652/12/01 | 1652/12/31 |
    # | 承応二年 (癸巳)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |     閏六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1653/01/29 | 1653/02/28 | 1653/03/29 | 1653/04/28 | 1653/05/27 | 1653/06/25 | 1653/07/25 | 1653/08/23 | 1653/09/22 | 1653/10/22 | 1653/11/20 | 1653/12/20 | 1654/01/19 |
    # | 承応三年 (甲午)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1654/02/17 | 1654/03/19 | 1654/04/17 | 1654/05/17 | 1654/06/15 | 1654/07/14 | 1654/08/13 | 1654/09/11 | 1654/10/11 | 1654/11/09 | 1654/12/09 | 1655/01/08 |
    # | 承応四年 (乙未)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1655/02/07 | 1655/03/08 | 1655/04/07 | 1655/05/06 | 1655/06/05 | 1655/07/04 | 1655/08/02 | 1655/08/31 | 1655/09/30 | 1655/10/29 | 1655/11/28 | 1655/12/28 |

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :joo, :e_y =>  1, :e_m =>  1, :g_y => 1652, :g_m =>  2, :g_d => 10},
             {:era => :joo, :e_y =>  1, :e_m =>  2, :g_y => 1652, :g_m =>  3, :g_d => 10},
             {:era => :joo, :e_y =>  1, :e_m =>  3, :g_y => 1652, :g_m =>  4, :g_d =>  9},
             {:era => :joo, :e_y =>  1, :e_m =>  4, :g_y => 1652, :g_m =>  5, :g_d =>  8},
             {:era => :joo, :e_y =>  1, :e_m =>  5, :g_y => 1652, :g_m =>  6, :g_d =>  6},
             {:era => :joo, :e_y =>  1, :e_m =>  6, :g_y => 1652, :g_m =>  7, :g_d =>  6},
             {:era => :joo, :e_y =>  1, :e_m =>  7, :g_y => 1652, :g_m =>  8, :g_d =>  4},
             {:era => :joo, :e_y =>  1, :e_m =>  8, :g_y => 1652, :g_m =>  9, :g_d =>  3},
             {:era => :joo, :e_y =>  1, :e_m =>  9, :g_y => 1652, :g_m => 10, :g_d =>  3},
             {:era => :joo, :e_y =>  1, :e_m => 10, :g_y => 1652, :g_m => 11, :g_d =>  1},
             {:era => :joo, :e_y =>  1, :e_m => 11, :g_y => 1652, :g_m => 12, :g_d =>  1},
             {:era => :joo, :e_y =>  1, :e_m => 12, :g_y => 1652, :g_m => 12, :g_d => 31},

             {:era => :joo, :e_y =>  2, :e_m =>  1, :g_y => 1653, :g_m =>  1, :g_d => 29},
             {:era => :joo, :e_y =>  2, :e_m =>  2, :g_y => 1653, :g_m =>  2, :g_d => 28},
             {:era => :joo, :e_y =>  2, :e_m =>  3, :g_y => 1653, :g_m =>  3, :g_d => 29},
             {:era => :joo, :e_y =>  2, :e_m =>  4, :g_y => 1653, :g_m =>  4, :g_d => 28},
             {:era => :joo, :e_y =>  2, :e_m =>  5, :g_y => 1653, :g_m =>  5, :g_d => 27},
             {:era => :joo, :e_y =>  2, :e_m =>  6, :g_y => 1653, :g_m =>  6, :g_d => 25},
             {:era => :joo, :e_y =>  2, :e_m =>  6, :g_y => 1653, :g_m =>  7, :g_d => 25, :leap_month => true},
             {:era => :joo, :e_y =>  2, :e_m =>  7, :g_y => 1653, :g_m =>  8, :g_d => 23},
             {:era => :joo, :e_y =>  2, :e_m =>  8, :g_y => 1653, :g_m =>  9, :g_d => 22},
             {:era => :joo, :e_y =>  2, :e_m =>  9, :g_y => 1653, :g_m => 10, :g_d => 22},
             {:era => :joo, :e_y =>  2, :e_m => 10, :g_y => 1653, :g_m => 11, :g_d => 20},
             {:era => :joo, :e_y =>  2, :e_m => 11, :g_y => 1653, :g_m => 12, :g_d => 20},
             {:era => :joo, :e_y =>  2, :e_m => 12, :g_y => 1654, :g_m =>  1, :g_d => 19},

             {:era => :joo, :e_y =>  3, :e_m =>  1, :g_y => 1654, :g_m =>  2, :g_d => 17},
             {:era => :joo, :e_y =>  3, :e_m =>  2, :g_y => 1654, :g_m =>  3, :g_d => 19},
             {:era => :joo, :e_y =>  3, :e_m =>  3, :g_y => 1654, :g_m =>  4, :g_d => 17},
             {:era => :joo, :e_y =>  3, :e_m =>  4, :g_y => 1654, :g_m =>  5, :g_d => 17},
             {:era => :joo, :e_y =>  3, :e_m =>  5, :g_y => 1654, :g_m =>  6, :g_d => 15},
             {:era => :joo, :e_y =>  3, :e_m =>  6, :g_y => 1654, :g_m =>  7, :g_d => 14},
             {:era => :joo, :e_y =>  3, :e_m =>  7, :g_y => 1654, :g_m =>  8, :g_d => 13},
             {:era => :joo, :e_y =>  3, :e_m =>  8, :g_y => 1654, :g_m =>  9, :g_d => 11},
             {:era => :joo, :e_y =>  3, :e_m =>  9, :g_y => 1654, :g_m => 10, :g_d => 11},
             {:era => :joo, :e_y =>  3, :e_m => 10, :g_y => 1654, :g_m => 11, :g_d =>  9},
             {:era => :joo, :e_y =>  3, :e_m => 11, :g_y => 1654, :g_m => 12, :g_d =>  9},
             {:era => :joo, :e_y =>  3, :e_m => 12, :g_y => 1655, :g_m =>  1, :g_d =>  8},

             {:era => :joo, :e_y =>  4, :e_m =>  1, :g_y => 1655, :g_m =>  2, :g_d =>  7},
             {:era => :joo, :e_y =>  4, :e_m =>  2, :g_y => 1655, :g_m =>  3, :g_d =>  8},
             {:era => :joo, :e_y =>  4, :e_m =>  3, :g_y => 1655, :g_m =>  4, :g_d =>  7},
             {:era => :joo, :e_y =>  4, :e_m =>  4, :g_y => 1655, :g_m =>  5, :g_d =>  6},
             {:era => :joo, :e_y =>  4, :e_m =>  5, :g_y => 1655, :g_m =>  6, :g_d =>  5},
             {:era => :joo, :e_y =>  4, :e_m =>  6, :g_y => 1655, :g_m =>  7, :g_d =>  4},
             {:era => :joo, :e_y =>  4, :e_m =>  7, :g_y => 1655, :g_m =>  8, :g_d =>  2},
             {:era => :joo, :e_y =>  4, :e_m =>  8, :g_y => 1655, :g_m =>  8, :g_d => 31},
             {:era => :joo, :e_y =>  4, :e_m =>  9, :g_y => 1655, :g_m =>  9, :g_d => 30},
             {:era => :joo, :e_y =>  4, :e_m => 10, :g_y => 1655, :g_m => 10, :g_d => 29},
             {:era => :joo, :e_y =>  4, :e_m => 11, :g_y => 1655, :g_m => 11, :g_d => 28},
             {:era => :joo, :e_y =>  4, :e_m => 12, :g_y => 1655, :g_m => 12, :g_d => 28},

            ]

    add_era_table table
  end # Date
end # Wareki