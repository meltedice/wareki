# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'Kaei'
    # KANJI_ERA_NAME = '嘉永'

    # 嘉永
    # http://ja.wikipedia.org/wiki/%E5%98%89%E6%B0%B8
    # | 嘉永元年 (戊申)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1848/02/05 | 1848/03/05 | 1848/04/04 | 1848/05/03 | 1848/06/01 | 1848/07/01 | 1848/07/30 | 1848/08/29 | 1848/09/27 | 1848/10/27 | 1848/11/26 | 1848/12/26 |
    # | 嘉永二年 (己酉)     |       一月 |       二月 |       三月 |       四月 |     閏四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1849/01/24 | 1849/02/23 | 1849/03/24 | 1849/04/23 | 1849/05/22 | 1849/06/20 | 1849/07/20 | 1849/08/18 | 1849/09/17 | 1849/10/16 | 1849/11/15 | 1849/12/15 | 1850/01/13 |
    # | 嘉永三年 (庚戌)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1850/02/12 | 1850/03/14 | 1850/04/12 | 1850/05/12 | 1850/06/10 | 1850/07/09 | 1850/08/08 | 1850/09/06 | 1850/10/06 | 1850/11/04 | 1850/12/04 | 1851/01/02 |
    # | 嘉永四年 (辛亥)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1851/02/01 | 1851/03/03 | 1851/04/02 | 1851/05/01 | 1851/05/31 | 1851/06/29 | 1851/07/28 | 1851/08/27 | 1851/09/25 | 1851/10/25 | 1851/11/23 | 1851/12/23 |
    # | 嘉永五年 (壬子)     |       一月 |       二月 |     閏二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1852/01/21 | 1852/02/20 | 1852/03/21 | 1852/04/19 | 1852/05/19 | 1852/06/18 | 1852/07/17 | 1852/08/15 | 1852/09/14 | 1852/10/13 | 1852/11/12 | 1852/12/11 | 1853/01/10 |
    # | 嘉永六年 (癸丑)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1853/02/08 | 1853/03/10 | 1853/04/08 | 1853/05/08 | 1853/06/07 | 1853/07/06 | 1853/08/05 | 1853/09/03 | 1853/10/03 | 1853/11/01 | 1853/12/01 | 1853/12/30 |
    # | 嘉永七年 (甲寅)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |     閏七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1854/01/29 | 1854/02/27 | 1854/03/29 | 1854/04/27 | 1854/05/27 | 1854/06/25 | 1854/07/25 | 1854/08/24 | 1854/09/22 | 1854/10/22 | 1854/11/20 | 1854/12/20 | 1855/01/18 |

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :kaei, :e_y =>  1, :e_m =>  1, :g_y => 1848, :g_m =>  2, :g_d =>  5},
             {:era => :kaei, :e_y =>  1, :e_m =>  2, :g_y => 1848, :g_m =>  3, :g_d =>  5},
             {:era => :kaei, :e_y =>  1, :e_m =>  3, :g_y => 1848, :g_m =>  4, :g_d =>  4},
             {:era => :kaei, :e_y =>  1, :e_m =>  4, :g_y => 1848, :g_m =>  5, :g_d =>  3},
             {:era => :kaei, :e_y =>  1, :e_m =>  5, :g_y => 1848, :g_m =>  6, :g_d =>  1},
             {:era => :kaei, :e_y =>  1, :e_m =>  6, :g_y => 1848, :g_m =>  7, :g_d =>  1},
             {:era => :kaei, :e_y =>  1, :e_m =>  7, :g_y => 1848, :g_m =>  7, :g_d => 30},
             {:era => :kaei, :e_y =>  1, :e_m =>  8, :g_y => 1848, :g_m =>  8, :g_d => 29},
             {:era => :kaei, :e_y =>  1, :e_m =>  9, :g_y => 1848, :g_m =>  9, :g_d => 27},
             {:era => :kaei, :e_y =>  1, :e_m => 10, :g_y => 1848, :g_m => 10, :g_d => 27},
             {:era => :kaei, :e_y =>  1, :e_m => 11, :g_y => 1848, :g_m => 11, :g_d => 26},
             {:era => :kaei, :e_y =>  1, :e_m => 12, :g_y => 1848, :g_m => 12, :g_d => 26},

             {:era => :kaei, :e_y =>  2, :e_m =>  1, :g_y => 1849, :g_m =>  1, :g_d => 24},
             {:era => :kaei, :e_y =>  2, :e_m =>  2, :g_y => 1849, :g_m =>  2, :g_d => 23},
             {:era => :kaei, :e_y =>  2, :e_m =>  3, :g_y => 1849, :g_m =>  3, :g_d => 24},
             {:era => :kaei, :e_y =>  2, :e_m =>  4, :g_y => 1849, :g_m =>  4, :g_d => 23},
             {:era => :kaei, :e_y =>  2, :e_m =>  4, :g_y => 1849, :g_m =>  5, :g_d => 22, :leap_month => true},
             {:era => :kaei, :e_y =>  2, :e_m =>  5, :g_y => 1849, :g_m =>  6, :g_d => 20},
             {:era => :kaei, :e_y =>  2, :e_m =>  6, :g_y => 1849, :g_m =>  7, :g_d => 20},
             {:era => :kaei, :e_y =>  2, :e_m =>  7, :g_y => 1849, :g_m =>  8, :g_d => 18},
             {:era => :kaei, :e_y =>  2, :e_m =>  8, :g_y => 1849, :g_m =>  9, :g_d => 17},
             {:era => :kaei, :e_y =>  2, :e_m =>  9, :g_y => 1849, :g_m => 10, :g_d => 16},
             {:era => :kaei, :e_y =>  2, :e_m => 10, :g_y => 1849, :g_m => 11, :g_d => 15},
             {:era => :kaei, :e_y =>  2, :e_m => 11, :g_y => 1849, :g_m => 12, :g_d => 15},
             {:era => :kaei, :e_y =>  2, :e_m => 12, :g_y => 1850, :g_m =>  1, :g_d => 13},

             {:era => :kaei, :e_y =>  3, :e_m =>  1, :g_y => 1850, :g_m =>  2, :g_d => 12},
             {:era => :kaei, :e_y =>  3, :e_m =>  2, :g_y => 1850, :g_m =>  3, :g_d => 14},
             {:era => :kaei, :e_y =>  3, :e_m =>  3, :g_y => 1850, :g_m =>  4, :g_d => 12},
             {:era => :kaei, :e_y =>  3, :e_m =>  4, :g_y => 1850, :g_m =>  5, :g_d => 12},
             {:era => :kaei, :e_y =>  3, :e_m =>  5, :g_y => 1850, :g_m =>  6, :g_d => 10},
             {:era => :kaei, :e_y =>  3, :e_m =>  6, :g_y => 1850, :g_m =>  7, :g_d =>  9},
             {:era => :kaei, :e_y =>  3, :e_m =>  7, :g_y => 1850, :g_m =>  8, :g_d =>  8},
             {:era => :kaei, :e_y =>  3, :e_m =>  8, :g_y => 1850, :g_m =>  9, :g_d =>  6},
             {:era => :kaei, :e_y =>  3, :e_m =>  9, :g_y => 1850, :g_m => 10, :g_d =>  6},
             {:era => :kaei, :e_y =>  3, :e_m => 10, :g_y => 1850, :g_m => 11, :g_d =>  4},
             {:era => :kaei, :e_y =>  3, :e_m => 11, :g_y => 1850, :g_m => 12, :g_d =>  4},
             {:era => :kaei, :e_y =>  3, :e_m => 12, :g_y => 1851, :g_m =>  1, :g_d =>  2},

             {:era => :kaei, :e_y =>  4, :e_m =>  1, :g_y => 1851, :g_m =>  2, :g_d =>  1},
             {:era => :kaei, :e_y =>  4, :e_m =>  2, :g_y => 1851, :g_m =>  3, :g_d =>  3},
             {:era => :kaei, :e_y =>  4, :e_m =>  3, :g_y => 1851, :g_m =>  4, :g_d =>  2},
             {:era => :kaei, :e_y =>  4, :e_m =>  4, :g_y => 1851, :g_m =>  5, :g_d =>  1},
             {:era => :kaei, :e_y =>  4, :e_m =>  5, :g_y => 1851, :g_m =>  5, :g_d => 31},
             {:era => :kaei, :e_y =>  4, :e_m =>  6, :g_y => 1851, :g_m =>  6, :g_d => 29},
             {:era => :kaei, :e_y =>  4, :e_m =>  7, :g_y => 1851, :g_m =>  7, :g_d => 28},
             {:era => :kaei, :e_y =>  4, :e_m =>  8, :g_y => 1851, :g_m =>  8, :g_d => 27},
             {:era => :kaei, :e_y =>  4, :e_m =>  9, :g_y => 1851, :g_m =>  9, :g_d => 25},
             {:era => :kaei, :e_y =>  4, :e_m => 10, :g_y => 1851, :g_m => 10, :g_d => 25},
             {:era => :kaei, :e_y =>  4, :e_m => 11, :g_y => 1851, :g_m => 11, :g_d => 23},
             {:era => :kaei, :e_y =>  4, :e_m => 12, :g_y => 1851, :g_m => 12, :g_d => 23},

             {:era => :kaei, :e_y =>  5, :e_m =>  1, :g_y => 1852, :g_m =>  1, :g_d => 21},
             {:era => :kaei, :e_y =>  5, :e_m =>  2, :g_y => 1852, :g_m =>  2, :g_d => 20},
             {:era => :kaei, :e_y =>  5, :e_m =>  2, :g_y => 1852, :g_m =>  3, :g_d => 21, :leap_month => true},
             {:era => :kaei, :e_y =>  5, :e_m =>  3, :g_y => 1852, :g_m =>  4, :g_d => 19},
             {:era => :kaei, :e_y =>  5, :e_m =>  4, :g_y => 1852, :g_m =>  5, :g_d => 19},
             {:era => :kaei, :e_y =>  5, :e_m =>  5, :g_y => 1852, :g_m =>  6, :g_d => 18},
             {:era => :kaei, :e_y =>  5, :e_m =>  6, :g_y => 1852, :g_m =>  7, :g_d => 17},
             {:era => :kaei, :e_y =>  5, :e_m =>  7, :g_y => 1852, :g_m =>  8, :g_d => 15},
             {:era => :kaei, :e_y =>  5, :e_m =>  8, :g_y => 1852, :g_m =>  9, :g_d => 14},
             {:era => :kaei, :e_y =>  5, :e_m =>  9, :g_y => 1852, :g_m => 10, :g_d => 13},
             {:era => :kaei, :e_y =>  5, :e_m => 10, :g_y => 1852, :g_m => 11, :g_d => 12},
             {:era => :kaei, :e_y =>  5, :e_m => 11, :g_y => 1852, :g_m => 12, :g_d => 11},
             {:era => :kaei, :e_y =>  5, :e_m => 12, :g_y => 1853, :g_m =>  1, :g_d => 10},

             {:era => :kaei, :e_y =>  6, :e_m =>  1, :g_y => 1853, :g_m =>  2, :g_d =>  8},
             {:era => :kaei, :e_y =>  6, :e_m =>  2, :g_y => 1853, :g_m =>  3, :g_d => 10},
             {:era => :kaei, :e_y =>  6, :e_m =>  3, :g_y => 1853, :g_m =>  4, :g_d =>  8},
             {:era => :kaei, :e_y =>  6, :e_m =>  4, :g_y => 1853, :g_m =>  5, :g_d =>  8},
             {:era => :kaei, :e_y =>  6, :e_m =>  5, :g_y => 1853, :g_m =>  6, :g_d =>  7},
             {:era => :kaei, :e_y =>  6, :e_m =>  6, :g_y => 1853, :g_m =>  7, :g_d =>  6},
             {:era => :kaei, :e_y =>  6, :e_m =>  7, :g_y => 1853, :g_m =>  8, :g_d =>  5},
             {:era => :kaei, :e_y =>  6, :e_m =>  8, :g_y => 1853, :g_m =>  9, :g_d =>  3},
             {:era => :kaei, :e_y =>  6, :e_m =>  9, :g_y => 1853, :g_m => 10, :g_d =>  3},
             {:era => :kaei, :e_y =>  6, :e_m => 10, :g_y => 1853, :g_m => 11, :g_d =>  1},
             {:era => :kaei, :e_y =>  6, :e_m => 11, :g_y => 1853, :g_m => 12, :g_d =>  1},
             {:era => :kaei, :e_y =>  6, :e_m => 12, :g_y => 1853, :g_m => 12, :g_d => 30},

             {:era => :kaei, :e_y =>  7, :e_m =>  1, :g_y => 1854, :g_m =>  1, :g_d => 29},
             {:era => :kaei, :e_y =>  7, :e_m =>  2, :g_y => 1854, :g_m =>  2, :g_d => 27},
             {:era => :kaei, :e_y =>  7, :e_m =>  3, :g_y => 1854, :g_m =>  3, :g_d => 29},
             {:era => :kaei, :e_y =>  7, :e_m =>  4, :g_y => 1854, :g_m =>  4, :g_d => 27},
             {:era => :kaei, :e_y =>  7, :e_m =>  5, :g_y => 1854, :g_m =>  5, :g_d => 27},
             {:era => :kaei, :e_y =>  7, :e_m =>  6, :g_y => 1854, :g_m =>  6, :g_d => 25},
             {:era => :kaei, :e_y =>  7, :e_m =>  7, :g_y => 1854, :g_m =>  7, :g_d => 25},
             {:era => :kaei, :e_y =>  7, :e_m =>  7, :g_y => 1854, :g_m =>  8, :g_d => 24, :leap_month => true},
             {:era => :kaei, :e_y =>  7, :e_m =>  8, :g_y => 1854, :g_m =>  9, :g_d => 22},
             {:era => :kaei, :e_y =>  7, :e_m =>  9, :g_y => 1854, :g_m => 10, :g_d => 22},
             {:era => :kaei, :e_y =>  7, :e_m => 10, :g_y => 1854, :g_m => 11, :g_d => 20},
             {:era => :kaei, :e_y =>  7, :e_m => 11, :g_y => 1854, :g_m => 12, :g_d => 20},
             {:era => :kaei, :e_y =>  7, :e_m => 12, :g_y => 1855, :g_m =>  1, :g_d => 18},

            ]

    add_era_table table
  end # Date
end # Wareki
