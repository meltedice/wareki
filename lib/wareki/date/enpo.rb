# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'Enp%C5%8D' # 
    # KANJI_ERA_NAME = '延宝'

    # 延宝
    # http://ja.wikipedia.org/wiki/%E5%BB%B6%E5%AE%9D
    # | 延宝元年 (癸丑)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1673/02/17 | 1673/03/19 | 1673/04/17 | 1673/05/17 | 1673/06/15 | 1673/07/14 | 1673/08/12 | 1673/09/11 | 1673/10/10 | 1673/11/09 | 1673/12/08 | 1674/01/07 |
    # | 延宝二年 (甲寅)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1674/02/06 | 1674/03/08 | 1674/04/06 | 1674/05/06 | 1674/06/04 | 1674/07/04 | 1674/08/02 | 1674/08/31 | 1674/09/30 | 1674/10/29 | 1674/11/28 | 1674/12/27 |
    # | 延宝三年 (乙卯)     |       一月 |       二月 |       三月 |       四月 |     閏四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1675/01/26 | 1675/02/25 | 1675/03/26 | 1675/04/25 | 1675/05/25 | 1675/06/23 | 1675/07/23 | 1675/08/21 | 1675/09/20 | 1675/10/19 | 1675/11/17 | 1675/12/17 | 1676/01/15 |
    # | 延宝四年 (丙辰)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1676/02/14 | 1676/03/15 | 1676/04/13 | 1676/05/13 | 1676/06/12 | 1676/07/11 | 1676/08/10 | 1676/09/08 | 1676/10/08 | 1676/11/06 | 1676/12/05 | 1677/01/04 |
    # | 延宝五年 (丁巳)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |   閏十二月 |
    # |        グレゴリオ暦 | 1677/02/02 | 1677/03/04 | 1677/04/02 | 1677/05/02 | 1677/06/01 | 1677/06/30 | 1677/07/30 | 1677/08/28 | 1677/09/27 | 1677/10/27 | 1677/11/25 | 1677/12/25 | 1678/01/23 |
    # | 延宝六年 (戊午)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1678/02/21 | 1678/03/23 | 1678/04/21 | 1678/05/21 | 1678/06/19 | 1678/07/19 | 1678/08/17 | 1678/09/16 | 1678/10/16 | 1678/11/14 | 1678/12/14 | 1679/01/13 |
    # | 延宝七年 (己未)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1679/02/11 | 1679/03/12 | 1679/04/11 | 1679/05/10 | 1679/06/09 | 1679/07/08 | 1679/08/07 | 1679/09/05 | 1679/10/05 | 1679/11/04 | 1679/12/03 | 1680/01/02 |
    # | 延宝八年 (庚申)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |     閏八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1680/02/01 | 1680/03/01 | 1680/03/31 | 1680/04/29 | 1680/05/28 | 1680/06/26 | 1680/07/26 | 1680/08/24 | 1680/09/23 | 1680/10/23 | 1680/11/21 | 1680/12/21 | 1681/01/20 |
    # | 延宝九年 (辛酉)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1681/02/19 | 1681/03/20 | 1681/04/19 | 1681/05/18 | 1681/06/16 | 1681/07/15 | 1681/08/14 | 1681/09/12 | 1681/10/12 | 1681/11/10 | 1681/12/10 | 1682/01/09 |

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :enpo, :e_y =>  1, :e_m =>  1, :g_y => 1673, :g_m =>  2, :g_d => 17},
             {:era => :enpo, :e_y =>  1, :e_m =>  2, :g_y => 1673, :g_m =>  3, :g_d => 19},
             {:era => :enpo, :e_y =>  1, :e_m =>  3, :g_y => 1673, :g_m =>  4, :g_d => 17},
             {:era => :enpo, :e_y =>  1, :e_m =>  4, :g_y => 1673, :g_m =>  5, :g_d => 17},
             {:era => :enpo, :e_y =>  1, :e_m =>  5, :g_y => 1673, :g_m =>  6, :g_d => 15},
             {:era => :enpo, :e_y =>  1, :e_m =>  6, :g_y => 1673, :g_m =>  7, :g_d => 14},
             {:era => :enpo, :e_y =>  1, :e_m =>  7, :g_y => 1673, :g_m =>  8, :g_d => 12},
             {:era => :enpo, :e_y =>  1, :e_m =>  8, :g_y => 1673, :g_m =>  9, :g_d => 11},
             {:era => :enpo, :e_y =>  1, :e_m =>  9, :g_y => 1673, :g_m => 10, :g_d => 10},
             {:era => :enpo, :e_y =>  1, :e_m => 10, :g_y => 1673, :g_m => 11, :g_d =>  9},
             {:era => :enpo, :e_y =>  1, :e_m => 11, :g_y => 1673, :g_m => 12, :g_d =>  8},
             {:era => :enpo, :e_y =>  1, :e_m => 12, :g_y => 1674, :g_m =>  1, :g_d =>  7},

             {:era => :enpo, :e_y =>  2, :e_m =>  1, :g_y => 1674, :g_m =>  2, :g_d =>  6},
             {:era => :enpo, :e_y =>  2, :e_m =>  2, :g_y => 1674, :g_m =>  3, :g_d =>  8},
             {:era => :enpo, :e_y =>  2, :e_m =>  3, :g_y => 1674, :g_m =>  4, :g_d =>  6},
             {:era => :enpo, :e_y =>  2, :e_m =>  4, :g_y => 1674, :g_m =>  5, :g_d =>  6},
             {:era => :enpo, :e_y =>  2, :e_m =>  5, :g_y => 1674, :g_m =>  6, :g_d =>  4},
             {:era => :enpo, :e_y =>  2, :e_m =>  6, :g_y => 1674, :g_m =>  7, :g_d =>  4},
             {:era => :enpo, :e_y =>  2, :e_m =>  7, :g_y => 1674, :g_m =>  8, :g_d =>  2},
             {:era => :enpo, :e_y =>  2, :e_m =>  8, :g_y => 1674, :g_m =>  8, :g_d => 31},
             {:era => :enpo, :e_y =>  2, :e_m =>  9, :g_y => 1674, :g_m =>  9, :g_d => 30},
             {:era => :enpo, :e_y =>  2, :e_m => 10, :g_y => 1674, :g_m => 10, :g_d => 29},
             {:era => :enpo, :e_y =>  2, :e_m => 11, :g_y => 1674, :g_m => 11, :g_d => 28},
             {:era => :enpo, :e_y =>  2, :e_m => 12, :g_y => 1674, :g_m => 12, :g_d => 27},

             {:era => :enpo, :e_y =>  3, :e_m =>  1, :g_y => 1675, :g_m =>  1, :g_d => 26},
             {:era => :enpo, :e_y =>  3, :e_m =>  2, :g_y => 1675, :g_m =>  2, :g_d => 25},
             {:era => :enpo, :e_y =>  3, :e_m =>  3, :g_y => 1675, :g_m =>  3, :g_d => 26},
             {:era => :enpo, :e_y =>  3, :e_m =>  4, :g_y => 1675, :g_m =>  4, :g_d => 25},
             {:era => :enpo, :e_y =>  3, :e_m =>  4, :g_y => 1675, :g_m =>  5, :g_d => 25, :leap_month => true},
             {:era => :enpo, :e_y =>  3, :e_m =>  5, :g_y => 1675, :g_m =>  6, :g_d => 23},
             {:era => :enpo, :e_y =>  3, :e_m =>  6, :g_y => 1675, :g_m =>  7, :g_d => 23},
             {:era => :enpo, :e_y =>  3, :e_m =>  7, :g_y => 1675, :g_m =>  8, :g_d => 21},
             {:era => :enpo, :e_y =>  3, :e_m =>  8, :g_y => 1675, :g_m =>  9, :g_d => 20},
             {:era => :enpo, :e_y =>  3, :e_m =>  9, :g_y => 1675, :g_m => 10, :g_d => 19},
             {:era => :enpo, :e_y =>  3, :e_m => 10, :g_y => 1675, :g_m => 11, :g_d => 17},
             {:era => :enpo, :e_y =>  3, :e_m => 11, :g_y => 1675, :g_m => 12, :g_d => 17},
             {:era => :enpo, :e_y =>  3, :e_m => 12, :g_y => 1676, :g_m =>  1, :g_d => 15},

             {:era => :enpo, :e_y =>  4, :e_m =>  1, :g_y => 1676, :g_m =>  2, :g_d => 14},
             {:era => :enpo, :e_y =>  4, :e_m =>  2, :g_y => 1676, :g_m =>  3, :g_d => 15},
             {:era => :enpo, :e_y =>  4, :e_m =>  3, :g_y => 1676, :g_m =>  4, :g_d => 13},
             {:era => :enpo, :e_y =>  4, :e_m =>  4, :g_y => 1676, :g_m =>  5, :g_d => 13},
             {:era => :enpo, :e_y =>  4, :e_m =>  5, :g_y => 1676, :g_m =>  6, :g_d => 12},
             {:era => :enpo, :e_y =>  4, :e_m =>  6, :g_y => 1676, :g_m =>  7, :g_d => 11},
             {:era => :enpo, :e_y =>  4, :e_m =>  7, :g_y => 1676, :g_m =>  8, :g_d => 10},
             {:era => :enpo, :e_y =>  4, :e_m =>  8, :g_y => 1676, :g_m =>  9, :g_d =>  8},
             {:era => :enpo, :e_y =>  4, :e_m =>  9, :g_y => 1676, :g_m => 10, :g_d =>  8},
             {:era => :enpo, :e_y =>  4, :e_m => 10, :g_y => 1676, :g_m => 11, :g_d =>  6},
             {:era => :enpo, :e_y =>  4, :e_m => 11, :g_y => 1676, :g_m => 12, :g_d =>  5},
             {:era => :enpo, :e_y =>  4, :e_m => 12, :g_y => 1677, :g_m =>  1, :g_d =>  4},

             {:era => :enpo, :e_y =>  5, :e_m =>  1, :g_y => 1677, :g_m =>  2, :g_d =>  2},
             {:era => :enpo, :e_y =>  5, :e_m =>  2, :g_y => 1677, :g_m =>  3, :g_d =>  4},
             {:era => :enpo, :e_y =>  5, :e_m =>  3, :g_y => 1677, :g_m =>  4, :g_d =>  2},
             {:era => :enpo, :e_y =>  5, :e_m =>  4, :g_y => 1677, :g_m =>  5, :g_d =>  2},
             {:era => :enpo, :e_y =>  5, :e_m =>  5, :g_y => 1677, :g_m =>  6, :g_d =>  1},
             {:era => :enpo, :e_y =>  5, :e_m =>  6, :g_y => 1677, :g_m =>  6, :g_d => 30},
             {:era => :enpo, :e_y =>  5, :e_m =>  7, :g_y => 1677, :g_m =>  7, :g_d => 30},
             {:era => :enpo, :e_y =>  5, :e_m =>  8, :g_y => 1677, :g_m =>  8, :g_d => 28},
             {:era => :enpo, :e_y =>  5, :e_m =>  9, :g_y => 1677, :g_m =>  9, :g_d => 27},
             {:era => :enpo, :e_y =>  5, :e_m => 10, :g_y => 1677, :g_m => 10, :g_d => 27},
             {:era => :enpo, :e_y =>  5, :e_m => 11, :g_y => 1677, :g_m => 11, :g_d => 25},
             {:era => :enpo, :e_y =>  5, :e_m => 12, :g_y => 1677, :g_m => 12, :g_d => 25},
             {:era => :enpo, :e_y =>  5, :e_m => 12, :g_y => 1678, :g_m =>  1, :g_d => 23, :leap_month => true},

             {:era => :enpo, :e_y =>  6, :e_m =>  1, :g_y => 1678, :g_m =>  2, :g_d => 21},
             {:era => :enpo, :e_y =>  6, :e_m =>  2, :g_y => 1678, :g_m =>  3, :g_d => 23},
             {:era => :enpo, :e_y =>  6, :e_m =>  3, :g_y => 1678, :g_m =>  4, :g_d => 21},
             {:era => :enpo, :e_y =>  6, :e_m =>  4, :g_y => 1678, :g_m =>  5, :g_d => 21},
             {:era => :enpo, :e_y =>  6, :e_m =>  5, :g_y => 1678, :g_m =>  6, :g_d => 19},
             {:era => :enpo, :e_y =>  6, :e_m =>  6, :g_y => 1678, :g_m =>  7, :g_d => 19},
             {:era => :enpo, :e_y =>  6, :e_m =>  7, :g_y => 1678, :g_m =>  8, :g_d => 17},
             {:era => :enpo, :e_y =>  6, :e_m =>  8, :g_y => 1678, :g_m =>  9, :g_d => 16},
             {:era => :enpo, :e_y =>  6, :e_m =>  9, :g_y => 1678, :g_m => 10, :g_d => 16},
             {:era => :enpo, :e_y =>  6, :e_m => 10, :g_y => 1678, :g_m => 11, :g_d => 14},
             {:era => :enpo, :e_y =>  6, :e_m => 11, :g_y => 1678, :g_m => 12, :g_d => 14},
             {:era => :enpo, :e_y =>  6, :e_m => 12, :g_y => 1679, :g_m =>  1, :g_d => 13},

             {:era => :enpo, :e_y =>  7, :e_m =>  1, :g_y => 1679, :g_m =>  2, :g_d => 11},
             {:era => :enpo, :e_y =>  7, :e_m =>  2, :g_y => 1679, :g_m =>  3, :g_d => 12},
             {:era => :enpo, :e_y =>  7, :e_m =>  3, :g_y => 1679, :g_m =>  4, :g_d => 11},
             {:era => :enpo, :e_y =>  7, :e_m =>  4, :g_y => 1679, :g_m =>  5, :g_d => 10},
             {:era => :enpo, :e_y =>  7, :e_m =>  5, :g_y => 1679, :g_m =>  6, :g_d =>  9},
             {:era => :enpo, :e_y =>  7, :e_m =>  6, :g_y => 1679, :g_m =>  7, :g_d =>  8},
             {:era => :enpo, :e_y =>  7, :e_m =>  7, :g_y => 1679, :g_m =>  8, :g_d =>  7},
             {:era => :enpo, :e_y =>  7, :e_m =>  8, :g_y => 1679, :g_m =>  9, :g_d =>  5},
             {:era => :enpo, :e_y =>  7, :e_m =>  9, :g_y => 1679, :g_m => 10, :g_d =>  5},
             {:era => :enpo, :e_y =>  7, :e_m => 10, :g_y => 1679, :g_m => 11, :g_d =>  4},
             {:era => :enpo, :e_y =>  7, :e_m => 11, :g_y => 1679, :g_m => 12, :g_d =>  3},
             {:era => :enpo, :e_y =>  7, :e_m => 12, :g_y => 1680, :g_m =>  1, :g_d =>  2},

             {:era => :enpo, :e_y =>  8, :e_m =>  1, :g_y => 1680, :g_m =>  2, :g_d =>  1},
             {:era => :enpo, :e_y =>  8, :e_m =>  2, :g_y => 1680, :g_m =>  3, :g_d =>  1},
             {:era => :enpo, :e_y =>  8, :e_m =>  3, :g_y => 1680, :g_m =>  3, :g_d => 31},
             {:era => :enpo, :e_y =>  8, :e_m =>  4, :g_y => 1680, :g_m =>  4, :g_d => 29},
             {:era => :enpo, :e_y =>  8, :e_m =>  5, :g_y => 1680, :g_m =>  5, :g_d => 28},
             {:era => :enpo, :e_y =>  8, :e_m =>  6, :g_y => 1680, :g_m =>  6, :g_d => 26},
             {:era => :enpo, :e_y =>  8, :e_m =>  7, :g_y => 1680, :g_m =>  7, :g_d => 26},
             {:era => :enpo, :e_y =>  8, :e_m =>  8, :g_y => 1680, :g_m =>  8, :g_d => 24},
             {:era => :enpo, :e_y =>  8, :e_m =>  8, :g_y => 1680, :g_m =>  9, :g_d => 23, :leap_month => true},
             {:era => :enpo, :e_y =>  8, :e_m =>  9, :g_y => 1680, :g_m => 10, :g_d => 23},
             {:era => :enpo, :e_y =>  8, :e_m => 10, :g_y => 1680, :g_m => 11, :g_d => 21},
             {:era => :enpo, :e_y =>  8, :e_m => 11, :g_y => 1680, :g_m => 12, :g_d => 21},
             {:era => :enpo, :e_y =>  8, :e_m => 12, :g_y => 1681, :g_m =>  1, :g_d => 20},

             {:era => :enpo, :e_y =>  9, :e_m =>  1, :g_y => 1681, :g_m =>  2, :g_d => 19},
             {:era => :enpo, :e_y =>  9, :e_m =>  2, :g_y => 1681, :g_m =>  3, :g_d => 20},
             {:era => :enpo, :e_y =>  9, :e_m =>  3, :g_y => 1681, :g_m =>  4, :g_d => 19},
             {:era => :enpo, :e_y =>  9, :e_m =>  4, :g_y => 1681, :g_m =>  5, :g_d => 18},
             {:era => :enpo, :e_y =>  9, :e_m =>  5, :g_y => 1681, :g_m =>  6, :g_d => 16},
             {:era => :enpo, :e_y =>  9, :e_m =>  6, :g_y => 1681, :g_m =>  7, :g_d => 15},
             {:era => :enpo, :e_y =>  9, :e_m =>  7, :g_y => 1681, :g_m =>  8, :g_d => 14},
             {:era => :enpo, :e_y =>  9, :e_m =>  8, :g_y => 1681, :g_m =>  9, :g_d => 12},
             {:era => :enpo, :e_y =>  9, :e_m =>  9, :g_y => 1681, :g_m => 10, :g_d => 12},
             {:era => :enpo, :e_y =>  9, :e_m => 10, :g_y => 1681, :g_m => 11, :g_d => 10},
             {:era => :enpo, :e_y =>  9, :e_m => 11, :g_y => 1681, :g_m => 12, :g_d => 10},
             {:era => :enpo, :e_y =>  9, :e_m => 12, :g_y => 1682, :g_m =>  1, :g_d =>  9},

            ]

    add_era_table table
  end # Date
end # Wareki