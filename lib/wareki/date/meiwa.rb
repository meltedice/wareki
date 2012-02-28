# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'Meiwa' # 
    # KANJI_ERA_NAME = '明和'

    # 明和
    # http://ja.wikipedia.org/wiki/%E6%98%8E%E5%92%8C
    # | 明和元年 (甲申)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |   閏十二月 |
    # |        グレゴリオ暦 | 1764/02/02 | 1764/03/03 | 1764/04/01 | 1764/05/01 | 1764/05/31 | 1764/06/29 | 1764/07/29 | 1764/08/27 | 1764/09/26 | 1764/10/25 | 1764/11/23 | 1764/12/23 | 1765/01/21 |
    # | 明和二年 (乙酉)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1765/02/20 | 1765/03/21 | 1765/04/20 | 1765/05/20 | 1765/06/18 | 1765/07/18 | 1765/08/17 | 1765/09/15 | 1765/10/15 | 1765/11/13 | 1765/12/13 | 1766/01/11 |
    # | 明和三年 (丙戌)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1766/02/09 | 1766/03/11 | 1766/04/09 | 1766/05/09 | 1766/06/07 | 1766/07/07 | 1766/08/06 | 1766/09/04 | 1766/10/04 | 1766/11/03 | 1766/12/02 | 1767/01/01 |
    # | 明和四年 (丁亥)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |     閏九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1767/01/30 | 1767/02/28 | 1767/03/30 | 1767/04/28 | 1767/05/28 | 1767/06/26 | 1767/07/26 | 1767/08/24 | 1767/09/23 | 1767/10/23 | 1767/11/21 | 1767/12/21 | 1768/01/20 |
    # | 明和五年 (戊子)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1768/02/18 | 1768/03/19 | 1768/04/17 | 1768/05/16 | 1768/06/15 | 1768/07/14 | 1768/08/12 | 1768/09/11 | 1768/10/11 | 1768/11/09 | 1768/12/09 | 1769/01/08 |
    # | 明和六年 (己丑)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1769/02/07 | 1769/03/08 | 1769/04/07 | 1769/05/06 | 1769/06/04 | 1769/07/04 | 1769/08/02 | 1769/08/31 | 1769/09/30 | 1769/10/29 | 1769/11/28 | 1769/12/28 |
    # | 明和七年 (庚寅)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |     閏六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1770/01/27 | 1770/02/26 | 1770/03/27 | 1770/04/26 | 1770/05/25 | 1770/06/23 | 1770/07/23 | 1770/08/21 | 1770/09/19 | 1770/10/19 | 1770/11/17 | 1770/12/17 | 1771/01/16 |
    # | 明和八年 (辛卯)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1771/02/15 | 1771/03/16 | 1771/04/15 | 1771/05/14 | 1771/06/13 | 1771/07/12 | 1771/08/11 | 1771/09/09 | 1771/10/08 | 1771/11/07 | 1771/12/06 | 1772/01/05 |
    # | 明和九年 (壬辰)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1772/02/04 | 1772/03/04 | 1772/04/03 | 1772/05/03 | 1772/06/01 | 1772/07/01 | 1772/07/30 | 1772/08/29 | 1772/09/27 | 1772/10/26 | 1772/11/25 | 1772/12/24 |

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :meiwa, :e_y =>  1, :e_m =>  1, :g_y => 1764, :g_m =>  2, :g_d =>  2},
             {:era => :meiwa, :e_y =>  1, :e_m =>  2, :g_y => 1764, :g_m =>  3, :g_d =>  3},
             {:era => :meiwa, :e_y =>  1, :e_m =>  3, :g_y => 1764, :g_m =>  4, :g_d =>  1},
             {:era => :meiwa, :e_y =>  1, :e_m =>  4, :g_y => 1764, :g_m =>  5, :g_d =>  1},
             {:era => :meiwa, :e_y =>  1, :e_m =>  5, :g_y => 1764, :g_m =>  5, :g_d => 31},
             {:era => :meiwa, :e_y =>  1, :e_m =>  6, :g_y => 1764, :g_m =>  6, :g_d => 29},
             {:era => :meiwa, :e_y =>  1, :e_m =>  7, :g_y => 1764, :g_m =>  7, :g_d => 29},
             {:era => :meiwa, :e_y =>  1, :e_m =>  8, :g_y => 1764, :g_m =>  8, :g_d => 27},
             {:era => :meiwa, :e_y =>  1, :e_m =>  9, :g_y => 1764, :g_m =>  9, :g_d => 26},
             {:era => :meiwa, :e_y =>  1, :e_m => 10, :g_y => 1764, :g_m => 10, :g_d => 25},
             {:era => :meiwa, :e_y =>  1, :e_m => 11, :g_y => 1764, :g_m => 11, :g_d => 23},
             {:era => :meiwa, :e_y =>  1, :e_m => 12, :g_y => 1764, :g_m => 12, :g_d => 23},
             {:era => :meiwa, :e_y =>  1, :e_m => 12, :g_y => 1765, :g_m =>  1, :g_d => 21, :leap_month => true},

             {:era => :meiwa, :e_y =>  2, :e_m =>  1, :g_y => 1765, :g_m =>  2, :g_d => 20},
             {:era => :meiwa, :e_y =>  2, :e_m =>  2, :g_y => 1765, :g_m =>  3, :g_d => 21},
             {:era => :meiwa, :e_y =>  2, :e_m =>  3, :g_y => 1765, :g_m =>  4, :g_d => 20},
             {:era => :meiwa, :e_y =>  2, :e_m =>  4, :g_y => 1765, :g_m =>  5, :g_d => 20},
             {:era => :meiwa, :e_y =>  2, :e_m =>  5, :g_y => 1765, :g_m =>  6, :g_d => 18},
             {:era => :meiwa, :e_y =>  2, :e_m =>  6, :g_y => 1765, :g_m =>  7, :g_d => 18},
             {:era => :meiwa, :e_y =>  2, :e_m =>  7, :g_y => 1765, :g_m =>  8, :g_d => 17},
             {:era => :meiwa, :e_y =>  2, :e_m =>  8, :g_y => 1765, :g_m =>  9, :g_d => 15},
             {:era => :meiwa, :e_y =>  2, :e_m =>  9, :g_y => 1765, :g_m => 10, :g_d => 15},
             {:era => :meiwa, :e_y =>  2, :e_m => 10, :g_y => 1765, :g_m => 11, :g_d => 13},
             {:era => :meiwa, :e_y =>  2, :e_m => 11, :g_y => 1765, :g_m => 12, :g_d => 13},
             {:era => :meiwa, :e_y =>  2, :e_m => 12, :g_y => 1766, :g_m =>  1, :g_d => 11},

             {:era => :meiwa, :e_y =>  3, :e_m =>  1, :g_y => 1766, :g_m =>  2, :g_d =>  9},
             {:era => :meiwa, :e_y =>  3, :e_m =>  2, :g_y => 1766, :g_m =>  3, :g_d => 11},
             {:era => :meiwa, :e_y =>  3, :e_m =>  3, :g_y => 1766, :g_m =>  4, :g_d =>  9},
             {:era => :meiwa, :e_y =>  3, :e_m =>  4, :g_y => 1766, :g_m =>  5, :g_d =>  9},
             {:era => :meiwa, :e_y =>  3, :e_m =>  5, :g_y => 1766, :g_m =>  6, :g_d =>  7},
             {:era => :meiwa, :e_y =>  3, :e_m =>  6, :g_y => 1766, :g_m =>  7, :g_d =>  7},
             {:era => :meiwa, :e_y =>  3, :e_m =>  7, :g_y => 1766, :g_m =>  8, :g_d =>  6},
             {:era => :meiwa, :e_y =>  3, :e_m =>  8, :g_y => 1766, :g_m =>  9, :g_d =>  4},
             {:era => :meiwa, :e_y =>  3, :e_m =>  9, :g_y => 1766, :g_m => 10, :g_d =>  4},
             {:era => :meiwa, :e_y =>  3, :e_m => 10, :g_y => 1766, :g_m => 11, :g_d =>  3},
             {:era => :meiwa, :e_y =>  3, :e_m => 11, :g_y => 1766, :g_m => 12, :g_d =>  2},
             {:era => :meiwa, :e_y =>  3, :e_m => 12, :g_y => 1767, :g_m =>  1, :g_d =>  1},

             {:era => :meiwa, :e_y =>  4, :e_m =>  1, :g_y => 1767, :g_m =>  1, :g_d => 30},
             {:era => :meiwa, :e_y =>  4, :e_m =>  2, :g_y => 1767, :g_m =>  2, :g_d => 28},
             {:era => :meiwa, :e_y =>  4, :e_m =>  3, :g_y => 1767, :g_m =>  3, :g_d => 30},
             {:era => :meiwa, :e_y =>  4, :e_m =>  4, :g_y => 1767, :g_m =>  4, :g_d => 28},
             {:era => :meiwa, :e_y =>  4, :e_m =>  5, :g_y => 1767, :g_m =>  5, :g_d => 28},
             {:era => :meiwa, :e_y =>  4, :e_m =>  6, :g_y => 1767, :g_m =>  6, :g_d => 26},
             {:era => :meiwa, :e_y =>  4, :e_m =>  7, :g_y => 1767, :g_m =>  7, :g_d => 26},
             {:era => :meiwa, :e_y =>  4, :e_m =>  8, :g_y => 1767, :g_m =>  8, :g_d => 24},
             {:era => :meiwa, :e_y =>  4, :e_m =>  9, :g_y => 1767, :g_m =>  9, :g_d => 23},
             {:era => :meiwa, :e_y =>  4, :e_m =>  9, :g_y => 1767, :g_m => 10, :g_d => 23, :leap_month => true},
             {:era => :meiwa, :e_y =>  4, :e_m => 10, :g_y => 1767, :g_m => 11, :g_d => 21},
             {:era => :meiwa, :e_y =>  4, :e_m => 11, :g_y => 1767, :g_m => 12, :g_d => 21},
             {:era => :meiwa, :e_y =>  4, :e_m => 12, :g_y => 1768, :g_m =>  1, :g_d => 20},

             {:era => :meiwa, :e_y =>  5, :e_m =>  1, :g_y => 1768, :g_m =>  2, :g_d => 18},
             {:era => :meiwa, :e_y =>  5, :e_m =>  2, :g_y => 1768, :g_m =>  3, :g_d => 19},
             {:era => :meiwa, :e_y =>  5, :e_m =>  3, :g_y => 1768, :g_m =>  4, :g_d => 17},
             {:era => :meiwa, :e_y =>  5, :e_m =>  4, :g_y => 1768, :g_m =>  5, :g_d => 16},
             {:era => :meiwa, :e_y =>  5, :e_m =>  5, :g_y => 1768, :g_m =>  6, :g_d => 15},
             {:era => :meiwa, :e_y =>  5, :e_m =>  6, :g_y => 1768, :g_m =>  7, :g_d => 14},
             {:era => :meiwa, :e_y =>  5, :e_m =>  7, :g_y => 1768, :g_m =>  8, :g_d => 12},
             {:era => :meiwa, :e_y =>  5, :e_m =>  8, :g_y => 1768, :g_m =>  9, :g_d => 11},
             {:era => :meiwa, :e_y =>  5, :e_m =>  9, :g_y => 1768, :g_m => 10, :g_d => 11},
             {:era => :meiwa, :e_y =>  5, :e_m => 10, :g_y => 1768, :g_m => 11, :g_d =>  9},
             {:era => :meiwa, :e_y =>  5, :e_m => 11, :g_y => 1768, :g_m => 12, :g_d =>  9},
             {:era => :meiwa, :e_y =>  5, :e_m => 12, :g_y => 1769, :g_m =>  1, :g_d =>  8},

             {:era => :meiwa, :e_y =>  6, :e_m =>  1, :g_y => 1769, :g_m =>  2, :g_d =>  7},
             {:era => :meiwa, :e_y =>  6, :e_m =>  2, :g_y => 1769, :g_m =>  3, :g_d =>  8},
             {:era => :meiwa, :e_y =>  6, :e_m =>  3, :g_y => 1769, :g_m =>  4, :g_d =>  7},
             {:era => :meiwa, :e_y =>  6, :e_m =>  4, :g_y => 1769, :g_m =>  5, :g_d =>  6},
             {:era => :meiwa, :e_y =>  6, :e_m =>  5, :g_y => 1769, :g_m =>  6, :g_d =>  4},
             {:era => :meiwa, :e_y =>  6, :e_m =>  6, :g_y => 1769, :g_m =>  7, :g_d =>  4},
             {:era => :meiwa, :e_y =>  6, :e_m =>  7, :g_y => 1769, :g_m =>  8, :g_d =>  2},
             {:era => :meiwa, :e_y =>  6, :e_m =>  8, :g_y => 1769, :g_m =>  8, :g_d => 31},
             {:era => :meiwa, :e_y =>  6, :e_m =>  9, :g_y => 1769, :g_m =>  9, :g_d => 30},
             {:era => :meiwa, :e_y =>  6, :e_m => 10, :g_y => 1769, :g_m => 10, :g_d => 29},
             {:era => :meiwa, :e_y =>  6, :e_m => 11, :g_y => 1769, :g_m => 11, :g_d => 28},
             {:era => :meiwa, :e_y =>  6, :e_m => 12, :g_y => 1769, :g_m => 12, :g_d => 28},

             {:era => :meiwa, :e_y =>  7, :e_m =>  1, :g_y => 1770, :g_m =>  1, :g_d => 27},
             {:era => :meiwa, :e_y =>  7, :e_m =>  2, :g_y => 1770, :g_m =>  2, :g_d => 26},
             {:era => :meiwa, :e_y =>  7, :e_m =>  3, :g_y => 1770, :g_m =>  3, :g_d => 27},
             {:era => :meiwa, :e_y =>  7, :e_m =>  4, :g_y => 1770, :g_m =>  4, :g_d => 26},
             {:era => :meiwa, :e_y =>  7, :e_m =>  5, :g_y => 1770, :g_m =>  5, :g_d => 25},
             {:era => :meiwa, :e_y =>  7, :e_m =>  6, :g_y => 1770, :g_m =>  6, :g_d => 23},
             {:era => :meiwa, :e_y =>  7, :e_m =>  6, :g_y => 1770, :g_m =>  7, :g_d => 23, :leap_month => true},
             {:era => :meiwa, :e_y =>  7, :e_m =>  7, :g_y => 1770, :g_m =>  8, :g_d => 21},
             {:era => :meiwa, :e_y =>  7, :e_m =>  8, :g_y => 1770, :g_m =>  9, :g_d => 19},
             {:era => :meiwa, :e_y =>  7, :e_m =>  9, :g_y => 1770, :g_m => 10, :g_d => 19},
             {:era => :meiwa, :e_y =>  7, :e_m => 10, :g_y => 1770, :g_m => 11, :g_d => 17},
             {:era => :meiwa, :e_y =>  7, :e_m => 11, :g_y => 1770, :g_m => 12, :g_d => 17},
             {:era => :meiwa, :e_y =>  7, :e_m => 12, :g_y => 1771, :g_m =>  1, :g_d => 16},

             {:era => :meiwa, :e_y =>  8, :e_m =>  1, :g_y => 1771, :g_m =>  2, :g_d => 15},
             {:era => :meiwa, :e_y =>  8, :e_m =>  2, :g_y => 1771, :g_m =>  3, :g_d => 16},
             {:era => :meiwa, :e_y =>  8, :e_m =>  3, :g_y => 1771, :g_m =>  4, :g_d => 15},
             {:era => :meiwa, :e_y =>  8, :e_m =>  4, :g_y => 1771, :g_m =>  5, :g_d => 14},
             {:era => :meiwa, :e_y =>  8, :e_m =>  5, :g_y => 1771, :g_m =>  6, :g_d => 13},
             {:era => :meiwa, :e_y =>  8, :e_m =>  6, :g_y => 1771, :g_m =>  7, :g_d => 12},
             {:era => :meiwa, :e_y =>  8, :e_m =>  7, :g_y => 1771, :g_m =>  8, :g_d => 11},
             {:era => :meiwa, :e_y =>  8, :e_m =>  8, :g_y => 1771, :g_m =>  9, :g_d =>  9},
             {:era => :meiwa, :e_y =>  8, :e_m =>  9, :g_y => 1771, :g_m => 10, :g_d =>  8},
             {:era => :meiwa, :e_y =>  8, :e_m => 10, :g_y => 1771, :g_m => 11, :g_d =>  7},
             {:era => :meiwa, :e_y =>  8, :e_m => 11, :g_y => 1771, :g_m => 12, :g_d =>  6},
             {:era => :meiwa, :e_y =>  8, :e_m => 12, :g_y => 1772, :g_m =>  1, :g_d =>  5},

             {:era => :meiwa, :e_y =>  9, :e_m =>  1, :g_y => 1772, :g_m =>  2, :g_d =>  4},
             {:era => :meiwa, :e_y =>  9, :e_m =>  2, :g_y => 1772, :g_m =>  3, :g_d =>  4},
             {:era => :meiwa, :e_y =>  9, :e_m =>  3, :g_y => 1772, :g_m =>  4, :g_d =>  3},
             {:era => :meiwa, :e_y =>  9, :e_m =>  4, :g_y => 1772, :g_m =>  5, :g_d =>  3},
             {:era => :meiwa, :e_y =>  9, :e_m =>  5, :g_y => 1772, :g_m =>  6, :g_d =>  1},
             {:era => :meiwa, :e_y =>  9, :e_m =>  6, :g_y => 1772, :g_m =>  7, :g_d =>  1},
             {:era => :meiwa, :e_y =>  9, :e_m =>  7, :g_y => 1772, :g_m =>  7, :g_d => 30},
             {:era => :meiwa, :e_y =>  9, :e_m =>  8, :g_y => 1772, :g_m =>  8, :g_d => 29},
             {:era => :meiwa, :e_y =>  9, :e_m =>  9, :g_y => 1772, :g_m =>  9, :g_d => 27},
             {:era => :meiwa, :e_y =>  9, :e_m => 10, :g_y => 1772, :g_m => 10, :g_d => 26},
             {:era => :meiwa, :e_y =>  9, :e_m => 11, :g_y => 1772, :g_m => 11, :g_d => 25},
             {:era => :meiwa, :e_y =>  9, :e_m => 12, :g_y => 1772, :g_m => 12, :g_d => 24},

            ]

    add_era_table table
  end # Date
end # Wareki