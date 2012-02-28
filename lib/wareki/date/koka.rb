# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'K%C5%8Dka'
    # KANJI_ERA_NAME = '弘化'

    # 弘化
    # http://ja.wikipedia.org/wiki/%E5%BC%98%E5%8C%96
    # | 弘化元年 (甲辰)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1844/02/18 | 1844/03/19 | 1844/04/18 | 1844/05/17 | 1844/06/16 | 1844/07/15 | 1844/08/14 | 1844/09/12 | 1844/10/12 | 1844/11/10 | 1844/12/10 | 1845/01/08 |
    # | 弘化二年 (乙巳)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1845/02/07 | 1845/03/08 | 1845/04/07 | 1845/05/06 | 1845/06/05 | 1845/07/05 | 1845/08/03 | 1845/09/02 | 1845/10/01 | 1845/10/31 | 1845/11/29 | 1845/12/29 |
    # | 弘化三年 (丙午)     |       一月 |       二月 |       三月 |       四月 |       五月 |     閏五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1846/01/27 | 1846/02/26 | 1846/03/27 | 1846/04/26 | 1846/05/25 | 1846/06/24 | 1846/07/23 | 1846/08/22 | 1846/09/21 | 1846/10/20 | 1846/11/19 | 1846/12/18 | 1847/01/17 |
    # | 弘化四年 (丁未)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1847/02/15 | 1847/03/17 | 1847/04/15 | 1847/05/15 | 1847/06/13 | 1847/07/12 | 1847/08/11 | 1847/09/10 | 1847/10/09 | 1847/11/08 | 1847/12/08 | 1848/01/06 |
    # | 弘化五年 (戊申)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1848/02/05 | 1848/03/05 | 1848/04/04 | 1848/05/03 | 1848/06/01 | 1848/07/01 | 1848/07/30 | 1848/08/29 | 1848/09/27 | 1848/10/27 | 1848/11/26 | 1848/12/26 |

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :koka, :e_y =>  1, :e_m =>  1, :g_y => 1844, :g_m =>  2, :g_d => 18},
             {:era => :koka, :e_y =>  1, :e_m =>  2, :g_y => 1844, :g_m =>  3, :g_d => 19},
             {:era => :koka, :e_y =>  1, :e_m =>  3, :g_y => 1844, :g_m =>  4, :g_d => 18},
             {:era => :koka, :e_y =>  1, :e_m =>  4, :g_y => 1844, :g_m =>  5, :g_d => 17},
             {:era => :koka, :e_y =>  1, :e_m =>  5, :g_y => 1844, :g_m =>  6, :g_d => 16},
             {:era => :koka, :e_y =>  1, :e_m =>  6, :g_y => 1844, :g_m =>  7, :g_d => 15},
             {:era => :koka, :e_y =>  1, :e_m =>  7, :g_y => 1844, :g_m =>  8, :g_d => 14},
             {:era => :koka, :e_y =>  1, :e_m =>  8, :g_y => 1844, :g_m =>  9, :g_d => 12},
             {:era => :koka, :e_y =>  1, :e_m =>  9, :g_y => 1844, :g_m => 10, :g_d => 12},
             {:era => :koka, :e_y =>  1, :e_m => 10, :g_y => 1844, :g_m => 11, :g_d => 10},
             {:era => :koka, :e_y =>  1, :e_m => 11, :g_y => 1844, :g_m => 12, :g_d => 10},
             {:era => :koka, :e_y =>  1, :e_m => 12, :g_y => 1845, :g_m =>  1, :g_d =>  8},

             {:era => :koka, :e_y =>  2, :e_m =>  1, :g_y => 1845, :g_m =>  2, :g_d =>  7},
             {:era => :koka, :e_y =>  2, :e_m =>  2, :g_y => 1845, :g_m =>  3, :g_d =>  8},
             {:era => :koka, :e_y =>  2, :e_m =>  3, :g_y => 1845, :g_m =>  4, :g_d =>  7},
             {:era => :koka, :e_y =>  2, :e_m =>  4, :g_y => 1845, :g_m =>  5, :g_d =>  6},
             {:era => :koka, :e_y =>  2, :e_m =>  5, :g_y => 1845, :g_m =>  6, :g_d =>  5},
             {:era => :koka, :e_y =>  2, :e_m =>  6, :g_y => 1845, :g_m =>  7, :g_d =>  5},
             {:era => :koka, :e_y =>  2, :e_m =>  7, :g_y => 1845, :g_m =>  8, :g_d =>  3},
             {:era => :koka, :e_y =>  2, :e_m =>  8, :g_y => 1845, :g_m =>  9, :g_d =>  2},
             {:era => :koka, :e_y =>  2, :e_m =>  9, :g_y => 1845, :g_m => 10, :g_d =>  1},
             {:era => :koka, :e_y =>  2, :e_m => 10, :g_y => 1845, :g_m => 10, :g_d => 31},
             {:era => :koka, :e_y =>  2, :e_m => 11, :g_y => 1845, :g_m => 11, :g_d => 29},
             {:era => :koka, :e_y =>  2, :e_m => 12, :g_y => 1845, :g_m => 12, :g_d => 29},

             {:era => :koka, :e_y =>  3, :e_m =>  1, :g_y => 1846, :g_m =>  1, :g_d => 27},
             {:era => :koka, :e_y =>  3, :e_m =>  2, :g_y => 1846, :g_m =>  2, :g_d => 26},
             {:era => :koka, :e_y =>  3, :e_m =>  3, :g_y => 1846, :g_m =>  3, :g_d => 27},
             {:era => :koka, :e_y =>  3, :e_m =>  4, :g_y => 1846, :g_m =>  4, :g_d => 26},
             {:era => :koka, :e_y =>  3, :e_m =>  5, :g_y => 1846, :g_m =>  5, :g_d => 25},
             {:era => :koka, :e_y =>  3, :e_m =>  5, :g_y => 1846, :g_m =>  6, :g_d => 24, :leap_month => true},
             {:era => :koka, :e_y =>  3, :e_m =>  6, :g_y => 1846, :g_m =>  7, :g_d => 23},
             {:era => :koka, :e_y =>  3, :e_m =>  7, :g_y => 1846, :g_m =>  8, :g_d => 22},
             {:era => :koka, :e_y =>  3, :e_m =>  8, :g_y => 1846, :g_m =>  9, :g_d => 21},
             {:era => :koka, :e_y =>  3, :e_m =>  9, :g_y => 1846, :g_m => 10, :g_d => 20},
             {:era => :koka, :e_y =>  3, :e_m => 10, :g_y => 1846, :g_m => 11, :g_d => 19},
             {:era => :koka, :e_y =>  3, :e_m => 11, :g_y => 1846, :g_m => 12, :g_d => 18},
             {:era => :koka, :e_y =>  3, :e_m => 12, :g_y => 1847, :g_m =>  1, :g_d => 17},

             {:era => :koka, :e_y =>  4, :e_m =>  1, :g_y => 1847, :g_m =>  2, :g_d => 15},
             {:era => :koka, :e_y =>  4, :e_m =>  2, :g_y => 1847, :g_m =>  3, :g_d => 17},
             {:era => :koka, :e_y =>  4, :e_m =>  3, :g_y => 1847, :g_m =>  4, :g_d => 15},
             {:era => :koka, :e_y =>  4, :e_m =>  4, :g_y => 1847, :g_m =>  5, :g_d => 15},
             {:era => :koka, :e_y =>  4, :e_m =>  5, :g_y => 1847, :g_m =>  6, :g_d => 13},
             {:era => :koka, :e_y =>  4, :e_m =>  6, :g_y => 1847, :g_m =>  7, :g_d => 12},
             {:era => :koka, :e_y =>  4, :e_m =>  7, :g_y => 1847, :g_m =>  8, :g_d => 11},
             {:era => :koka, :e_y =>  4, :e_m =>  8, :g_y => 1847, :g_m =>  9, :g_d => 10},
             {:era => :koka, :e_y =>  4, :e_m =>  9, :g_y => 1847, :g_m => 10, :g_d =>  9},
             {:era => :koka, :e_y =>  4, :e_m => 10, :g_y => 1847, :g_m => 11, :g_d =>  8},
             {:era => :koka, :e_y =>  4, :e_m => 11, :g_y => 1847, :g_m => 12, :g_d =>  8},
             {:era => :koka, :e_y =>  4, :e_m => 12, :g_y => 1848, :g_m =>  1, :g_d =>  6},

             {:era => :koka, :e_y =>  5, :e_m =>  1, :g_y => 1848, :g_m =>  2, :g_d =>  5},
             {:era => :koka, :e_y =>  5, :e_m =>  2, :g_y => 1848, :g_m =>  3, :g_d =>  5},
             {:era => :koka, :e_y =>  5, :e_m =>  3, :g_y => 1848, :g_m =>  4, :g_d =>  4},
             {:era => :koka, :e_y =>  5, :e_m =>  4, :g_y => 1848, :g_m =>  5, :g_d =>  3},
             {:era => :koka, :e_y =>  5, :e_m =>  5, :g_y => 1848, :g_m =>  6, :g_d =>  1},
             {:era => :koka, :e_y =>  5, :e_m =>  6, :g_y => 1848, :g_m =>  7, :g_d =>  1},
             {:era => :koka, :e_y =>  5, :e_m =>  7, :g_y => 1848, :g_m =>  7, :g_d => 30},
             {:era => :koka, :e_y =>  5, :e_m =>  8, :g_y => 1848, :g_m =>  8, :g_d => 29},
             {:era => :koka, :e_y =>  5, :e_m =>  9, :g_y => 1848, :g_m =>  9, :g_d => 27},
             {:era => :koka, :e_y =>  5, :e_m => 10, :g_y => 1848, :g_m => 10, :g_d => 27},
             {:era => :koka, :e_y =>  5, :e_m => 11, :g_y => 1848, :g_m => 11, :g_d => 26},
             {:era => :koka, :e_y =>  5, :e_m => 12, :g_y => 1848, :g_m => 12, :g_d => 26},

            ]

    add_era_table table
  end # Date
end # Wareki
