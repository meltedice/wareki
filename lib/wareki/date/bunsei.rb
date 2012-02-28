# -*- coding: utf-8 -*-

module Wareki
  module Date
    # ERA_NAME = 'Bunsei' # 
    # KANJI_ERA_NAME = '文政'

    # 文政
    # http://ja.wikipedia.org/wiki/%E6%96%87%E6%94%BF
    # | 文政元年 (戊寅)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1818/02/05 | 1818/03/07 | 1818/04/06 | 1818/05/05 | 1818/06/04 | 1818/07/03 | 1818/08/02 | 1818/09/01 | 1818/09/30 | 1818/10/30 | 1818/11/28 | 1818/12/27 |
    # | 文政二年 (己卯)     |       一月 |       二月 |       三月 |       四月 |     閏四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1819/01/26 | 1819/02/24 | 1819/03/26 | 1819/04/24 | 1819/05/24 | 1819/06/22 | 1819/07/22 | 1819/08/21 | 1819/09/19 | 1819/10/19 | 1819/11/18 | 1819/12/17 | 1820/01/16 |
    # | 文政三年 (庚辰)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1820/02/14 | 1820/03/14 | 1820/04/13 | 1820/05/12 | 1820/06/11 | 1820/07/10 | 1820/08/09 | 1820/09/07 | 1820/10/07 | 1820/11/06 | 1820/12/06 | 1821/01/04 |
    # | 文政四年 (辛巳)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1821/02/03 | 1821/03/04 | 1821/04/03 | 1821/05/02 | 1821/05/31 | 1821/06/30 | 1821/07/29 | 1821/08/28 | 1821/09/26 | 1821/10/26 | 1821/11/25 | 1821/12/24 |
    # | 文政五年 (壬午)     |       一月 |     閏一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1822/01/23 | 1822/02/22 | 1822/03/23 | 1822/04/22 | 1822/05/21 | 1822/06/19 | 1822/07/18 | 1822/08/17 | 1822/09/15 | 1822/10/15 | 1822/11/14 | 1822/12/13 | 1823/01/12 |
    # | 文政六年 (癸未)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1823/02/11 | 1823/03/13 | 1823/04/11 | 1823/05/11 | 1823/06/09 | 1823/07/08 | 1823/08/06 | 1823/09/05 | 1823/10/04 | 1823/11/03 | 1823/12/02 | 1824/01/01 |
    # | 文政七年 (甲申)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |     閏八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1824/01/31 | 1824/03/01 | 1824/03/31 | 1824/04/29 | 1824/05/28 | 1824/06/27 | 1824/07/26 | 1824/08/24 | 1824/09/23 | 1824/10/22 | 1824/11/21 | 1824/12/20 | 1825/01/19 |
    # | 文政八年 (乙酉)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1825/02/18 | 1825/03/20 | 1825/04/18 | 1825/05/18 | 1825/06/16 | 1825/07/16 | 1825/08/14 | 1825/09/13 | 1825/10/12 | 1825/11/10 | 1825/12/10 | 1826/01/08 |
    # | 文政九年 (丙戌)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1826/02/07 | 1826/03/09 | 1826/04/07 | 1826/05/07 | 1826/06/06 | 1826/07/05 | 1826/08/04 | 1826/09/02 | 1826/10/02 | 1826/10/31 | 1826/11/29 | 1826/12/29 |
    # | 文政十年 (丁亥)     |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |     閏六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1827/01/27 | 1827/02/26 | 1827/03/27 | 1827/04/26 | 1827/05/26 | 1827/06/24 | 1827/07/24 | 1827/08/22 | 1827/09/21 | 1827/10/21 | 1827/11/19 | 1827/12/18 | 1828/01/17 |
    # | 文政十一年 (戊子)   |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1828/02/15 | 1828/03/16 | 1828/04/14 | 1828/05/14 | 1828/06/12 | 1828/07/12 | 1828/08/11 | 1828/09/09 | 1828/10/09 | 1828/11/07 | 1828/12/07 | 1829/01/06 |
    # | 文政十二年 (己丑)   |       一月 |       二月 |       三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1829/02/04 | 1829/03/05 | 1829/04/04 | 1829/05/03 | 1829/06/02 | 1829/07/01 | 1829/07/31 | 1829/08/29 | 1829/09/28 | 1829/10/28 | 1829/11/26 | 1829/12/26 |
    # | 文政十三年 (庚寅)   |       一月 |       二月 |       三月 |     閏三月 |       四月 |       五月 |       六月 |       七月 |       八月 |       九月 |       十月 |     十一月 |     十二月 |
    # |        グレゴリオ暦 | 1830/01/25 | 1830/02/23 | 1830/03/24 | 1830/04/23 | 1830/05/22 | 1830/06/21 | 1830/07/20 | 1830/08/18 | 1830/09/17 | 1830/10/17 | 1830/11/15 | 1830/12/15 | 1831/01/14 |

    # e_y: era_year
    # e_m: era_month
    # g_y: gregorian_year
    # g_m: gregorian_month
    # g_d: gregorian_mday
    table = [
             {:era => :bunsei, :e_y =>  1, :e_m =>  1, :g_y => 1818, :g_m =>  2, :g_d =>  5},
             {:era => :bunsei, :e_y =>  1, :e_m =>  2, :g_y => 1818, :g_m =>  3, :g_d =>  7},
             {:era => :bunsei, :e_y =>  1, :e_m =>  3, :g_y => 1818, :g_m =>  4, :g_d =>  6},
             {:era => :bunsei, :e_y =>  1, :e_m =>  4, :g_y => 1818, :g_m =>  5, :g_d =>  5},
             {:era => :bunsei, :e_y =>  1, :e_m =>  5, :g_y => 1818, :g_m =>  6, :g_d =>  4},
             {:era => :bunsei, :e_y =>  1, :e_m =>  6, :g_y => 1818, :g_m =>  7, :g_d =>  3},
             {:era => :bunsei, :e_y =>  1, :e_m =>  7, :g_y => 1818, :g_m =>  8, :g_d =>  2},
             {:era => :bunsei, :e_y =>  1, :e_m =>  8, :g_y => 1818, :g_m =>  9, :g_d =>  1},
             {:era => :bunsei, :e_y =>  1, :e_m =>  9, :g_y => 1818, :g_m =>  9, :g_d => 30},
             {:era => :bunsei, :e_y =>  1, :e_m => 10, :g_y => 1818, :g_m => 10, :g_d => 30},
             {:era => :bunsei, :e_y =>  1, :e_m => 11, :g_y => 1818, :g_m => 11, :g_d => 28},
             {:era => :bunsei, :e_y =>  1, :e_m => 12, :g_y => 1818, :g_m => 12, :g_d => 27},

             {:era => :bunsei, :e_y =>  2, :e_m =>  1, :g_y => 1819, :g_m =>  1, :g_d => 26},
             {:era => :bunsei, :e_y =>  2, :e_m =>  2, :g_y => 1819, :g_m =>  2, :g_d => 24},
             {:era => :bunsei, :e_y =>  2, :e_m =>  3, :g_y => 1819, :g_m =>  3, :g_d => 26},
             {:era => :bunsei, :e_y =>  2, :e_m =>  4, :g_y => 1819, :g_m =>  4, :g_d => 24},
             {:era => :bunsei, :e_y =>  2, :e_m =>  4, :g_y => 1819, :g_m =>  5, :g_d => 24, :leap_month => true},
             {:era => :bunsei, :e_y =>  2, :e_m =>  5, :g_y => 1819, :g_m =>  6, :g_d => 22},
             {:era => :bunsei, :e_y =>  2, :e_m =>  6, :g_y => 1819, :g_m =>  7, :g_d => 22},
             {:era => :bunsei, :e_y =>  2, :e_m =>  7, :g_y => 1819, :g_m =>  8, :g_d => 21},
             {:era => :bunsei, :e_y =>  2, :e_m =>  8, :g_y => 1819, :g_m =>  9, :g_d => 19},
             {:era => :bunsei, :e_y =>  2, :e_m =>  9, :g_y => 1819, :g_m => 10, :g_d => 19},
             {:era => :bunsei, :e_y =>  2, :e_m => 10, :g_y => 1819, :g_m => 11, :g_d => 18},
             {:era => :bunsei, :e_y =>  2, :e_m => 11, :g_y => 1819, :g_m => 12, :g_d => 17},
             {:era => :bunsei, :e_y =>  2, :e_m => 12, :g_y => 1820, :g_m =>  1, :g_d => 16},

             {:era => :bunsei, :e_y =>  3, :e_m =>  1, :g_y => 1820, :g_m =>  2, :g_d => 14},
             {:era => :bunsei, :e_y =>  3, :e_m =>  2, :g_y => 1820, :g_m =>  3, :g_d => 14},
             {:era => :bunsei, :e_y =>  3, :e_m =>  3, :g_y => 1820, :g_m =>  4, :g_d => 13},
             {:era => :bunsei, :e_y =>  3, :e_m =>  4, :g_y => 1820, :g_m =>  5, :g_d => 12},
             {:era => :bunsei, :e_y =>  3, :e_m =>  5, :g_y => 1820, :g_m =>  6, :g_d => 11},
             {:era => :bunsei, :e_y =>  3, :e_m =>  6, :g_y => 1820, :g_m =>  7, :g_d => 10},
             {:era => :bunsei, :e_y =>  3, :e_m =>  7, :g_y => 1820, :g_m =>  8, :g_d =>  9},
             {:era => :bunsei, :e_y =>  3, :e_m =>  8, :g_y => 1820, :g_m =>  9, :g_d =>  7},
             {:era => :bunsei, :e_y =>  3, :e_m =>  9, :g_y => 1820, :g_m => 10, :g_d =>  7},
             {:era => :bunsei, :e_y =>  3, :e_m => 10, :g_y => 1820, :g_m => 11, :g_d =>  6},
             {:era => :bunsei, :e_y =>  3, :e_m => 11, :g_y => 1820, :g_m => 12, :g_d =>  6},
             {:era => :bunsei, :e_y =>  3, :e_m => 12, :g_y => 1821, :g_m =>  1, :g_d =>  4},

             {:era => :bunsei, :e_y =>  4, :e_m =>  1, :g_y => 1821, :g_m =>  2, :g_d =>  3},
             {:era => :bunsei, :e_y =>  4, :e_m =>  2, :g_y => 1821, :g_m =>  3, :g_d =>  4},
             {:era => :bunsei, :e_y =>  4, :e_m =>  3, :g_y => 1821, :g_m =>  4, :g_d =>  3},
             {:era => :bunsei, :e_y =>  4, :e_m =>  4, :g_y => 1821, :g_m =>  5, :g_d =>  2},
             {:era => :bunsei, :e_y =>  4, :e_m =>  5, :g_y => 1821, :g_m =>  5, :g_d => 31},
             {:era => :bunsei, :e_y =>  4, :e_m =>  6, :g_y => 1821, :g_m =>  6, :g_d => 30},
             {:era => :bunsei, :e_y =>  4, :e_m =>  7, :g_y => 1821, :g_m =>  7, :g_d => 29},
             {:era => :bunsei, :e_y =>  4, :e_m =>  8, :g_y => 1821, :g_m =>  8, :g_d => 28},
             {:era => :bunsei, :e_y =>  4, :e_m =>  9, :g_y => 1821, :g_m =>  9, :g_d => 26},
             {:era => :bunsei, :e_y =>  4, :e_m => 10, :g_y => 1821, :g_m => 10, :g_d => 26},
             {:era => :bunsei, :e_y =>  4, :e_m => 11, :g_y => 1821, :g_m => 11, :g_d => 25},
             {:era => :bunsei, :e_y =>  4, :e_m => 12, :g_y => 1821, :g_m => 12, :g_d => 24},

             {:era => :bunsei, :e_y =>  5, :e_m =>  1, :g_y => 1822, :g_m =>  1, :g_d => 23},
             {:era => :bunsei, :e_y =>  5, :e_m =>  1, :g_y => 1822, :g_m =>  2, :g_d => 22, :leap_month => true},
             {:era => :bunsei, :e_y =>  5, :e_m =>  2, :g_y => 1822, :g_m =>  3, :g_d => 23},
             {:era => :bunsei, :e_y =>  5, :e_m =>  3, :g_y => 1822, :g_m =>  4, :g_d => 22},
             {:era => :bunsei, :e_y =>  5, :e_m =>  4, :g_y => 1822, :g_m =>  5, :g_d => 21},
             {:era => :bunsei, :e_y =>  5, :e_m =>  5, :g_y => 1822, :g_m =>  6, :g_d => 19},
             {:era => :bunsei, :e_y =>  5, :e_m =>  6, :g_y => 1822, :g_m =>  7, :g_d => 18},
             {:era => :bunsei, :e_y =>  5, :e_m =>  7, :g_y => 1822, :g_m =>  8, :g_d => 17},
             {:era => :bunsei, :e_y =>  5, :e_m =>  8, :g_y => 1822, :g_m =>  9, :g_d => 15},
             {:era => :bunsei, :e_y =>  5, :e_m =>  9, :g_y => 1822, :g_m => 10, :g_d => 15},
             {:era => :bunsei, :e_y =>  5, :e_m => 10, :g_y => 1822, :g_m => 11, :g_d => 14},
             {:era => :bunsei, :e_y =>  5, :e_m => 11, :g_y => 1822, :g_m => 12, :g_d => 13},
             {:era => :bunsei, :e_y =>  5, :e_m => 12, :g_y => 1823, :g_m =>  1, :g_d => 12},

             {:era => :bunsei, :e_y =>  6, :e_m =>  1, :g_y => 1823, :g_m =>  2, :g_d => 11},
             {:era => :bunsei, :e_y =>  6, :e_m =>  2, :g_y => 1823, :g_m =>  3, :g_d => 13},
             {:era => :bunsei, :e_y =>  6, :e_m =>  3, :g_y => 1823, :g_m =>  4, :g_d => 11},
             {:era => :bunsei, :e_y =>  6, :e_m =>  4, :g_y => 1823, :g_m =>  5, :g_d => 11},
             {:era => :bunsei, :e_y =>  6, :e_m =>  5, :g_y => 1823, :g_m =>  6, :g_d =>  9},
             {:era => :bunsei, :e_y =>  6, :e_m =>  6, :g_y => 1823, :g_m =>  7, :g_d =>  8},
             {:era => :bunsei, :e_y =>  6, :e_m =>  7, :g_y => 1823, :g_m =>  8, :g_d =>  6},
             {:era => :bunsei, :e_y =>  6, :e_m =>  8, :g_y => 1823, :g_m =>  9, :g_d =>  5},
             {:era => :bunsei, :e_y =>  6, :e_m =>  9, :g_y => 1823, :g_m => 10, :g_d =>  4},
             {:era => :bunsei, :e_y =>  6, :e_m => 10, :g_y => 1823, :g_m => 11, :g_d =>  3},
             {:era => :bunsei, :e_y =>  6, :e_m => 11, :g_y => 1823, :g_m => 12, :g_d =>  2},
             {:era => :bunsei, :e_y =>  6, :e_m => 12, :g_y => 1824, :g_m =>  1, :g_d =>  1},

             {:era => :bunsei, :e_y =>  7, :e_m =>  1, :g_y => 1824, :g_m =>  1, :g_d => 31},
             {:era => :bunsei, :e_y =>  7, :e_m =>  2, :g_y => 1824, :g_m =>  3, :g_d =>  1},
             {:era => :bunsei, :e_y =>  7, :e_m =>  3, :g_y => 1824, :g_m =>  3, :g_d => 31},
             {:era => :bunsei, :e_y =>  7, :e_m =>  4, :g_y => 1824, :g_m =>  4, :g_d => 29},
             {:era => :bunsei, :e_y =>  7, :e_m =>  5, :g_y => 1824, :g_m =>  5, :g_d => 28},
             {:era => :bunsei, :e_y =>  7, :e_m =>  6, :g_y => 1824, :g_m =>  6, :g_d => 27},
             {:era => :bunsei, :e_y =>  7, :e_m =>  7, :g_y => 1824, :g_m =>  7, :g_d => 26},
             {:era => :bunsei, :e_y =>  7, :e_m =>  8, :g_y => 1824, :g_m =>  8, :g_d => 24},
             {:era => :bunsei, :e_y =>  7, :e_m =>  8, :g_y => 1824, :g_m =>  9, :g_d => 23, :leap_month => true},
             {:era => :bunsei, :e_y =>  7, :e_m =>  9, :g_y => 1824, :g_m => 10, :g_d => 22},
             {:era => :bunsei, :e_y =>  7, :e_m => 10, :g_y => 1824, :g_m => 11, :g_d => 21},
             {:era => :bunsei, :e_y =>  7, :e_m => 11, :g_y => 1824, :g_m => 12, :g_d => 20},
             {:era => :bunsei, :e_y =>  7, :e_m => 12, :g_y => 1825, :g_m =>  1, :g_d => 19},

             {:era => :bunsei, :e_y =>  8, :e_m =>  1, :g_y => 1825, :g_m =>  2, :g_d => 18},
             {:era => :bunsei, :e_y =>  8, :e_m =>  2, :g_y => 1825, :g_m =>  3, :g_d => 20},
             {:era => :bunsei, :e_y =>  8, :e_m =>  3, :g_y => 1825, :g_m =>  4, :g_d => 18},
             {:era => :bunsei, :e_y =>  8, :e_m =>  4, :g_y => 1825, :g_m =>  5, :g_d => 18},
             {:era => :bunsei, :e_y =>  8, :e_m =>  5, :g_y => 1825, :g_m =>  6, :g_d => 16},
             {:era => :bunsei, :e_y =>  8, :e_m =>  6, :g_y => 1825, :g_m =>  7, :g_d => 16},
             {:era => :bunsei, :e_y =>  8, :e_m =>  7, :g_y => 1825, :g_m =>  8, :g_d => 14},
             {:era => :bunsei, :e_y =>  8, :e_m =>  8, :g_y => 1825, :g_m =>  9, :g_d => 13},
             {:era => :bunsei, :e_y =>  8, :e_m =>  9, :g_y => 1825, :g_m => 10, :g_d => 12},
             {:era => :bunsei, :e_y =>  8, :e_m => 10, :g_y => 1825, :g_m => 11, :g_d => 10},
             {:era => :bunsei, :e_y =>  8, :e_m => 11, :g_y => 1825, :g_m => 12, :g_d => 10},
             {:era => :bunsei, :e_y =>  8, :e_m => 12, :g_y => 1826, :g_m =>  1, :g_d =>  8},

             {:era => :bunsei, :e_y =>  9, :e_m =>  1, :g_y => 1826, :g_m =>  2, :g_d =>  7},
             {:era => :bunsei, :e_y =>  9, :e_m =>  2, :g_y => 1826, :g_m =>  3, :g_d =>  9},
             {:era => :bunsei, :e_y =>  9, :e_m =>  3, :g_y => 1826, :g_m =>  4, :g_d =>  7},
             {:era => :bunsei, :e_y =>  9, :e_m =>  4, :g_y => 1826, :g_m =>  5, :g_d =>  7},
             {:era => :bunsei, :e_y =>  9, :e_m =>  5, :g_y => 1826, :g_m =>  6, :g_d =>  6},
             {:era => :bunsei, :e_y =>  9, :e_m =>  6, :g_y => 1826, :g_m =>  7, :g_d =>  5},
             {:era => :bunsei, :e_y =>  9, :e_m =>  7, :g_y => 1826, :g_m =>  8, :g_d =>  4},
             {:era => :bunsei, :e_y =>  9, :e_m =>  8, :g_y => 1826, :g_m =>  9, :g_d =>  2},
             {:era => :bunsei, :e_y =>  9, :e_m =>  9, :g_y => 1826, :g_m => 10, :g_d =>  2},
             {:era => :bunsei, :e_y =>  9, :e_m => 10, :g_y => 1826, :g_m => 10, :g_d => 31},
             {:era => :bunsei, :e_y =>  9, :e_m => 11, :g_y => 1826, :g_m => 11, :g_d => 29},
             {:era => :bunsei, :e_y =>  9, :e_m => 12, :g_y => 1826, :g_m => 12, :g_d => 29},

             {:era => :bunsei, :e_y => 10, :e_m =>  1, :g_y => 1827, :g_m =>  1, :g_d => 27},
             {:era => :bunsei, :e_y => 10, :e_m =>  2, :g_y => 1827, :g_m =>  2, :g_d => 26},
             {:era => :bunsei, :e_y => 10, :e_m =>  3, :g_y => 1827, :g_m =>  3, :g_d => 27},
             {:era => :bunsei, :e_y => 10, :e_m =>  4, :g_y => 1827, :g_m =>  4, :g_d => 26},
             {:era => :bunsei, :e_y => 10, :e_m =>  5, :g_y => 1827, :g_m =>  5, :g_d => 26},
             {:era => :bunsei, :e_y => 10, :e_m =>  6, :g_y => 1827, :g_m =>  6, :g_d => 24},
             {:era => :bunsei, :e_y => 10, :e_m =>  6, :g_y => 1827, :g_m =>  7, :g_d => 24, :leap_month => true},
             {:era => :bunsei, :e_y => 10, :e_m =>  7, :g_y => 1827, :g_m =>  8, :g_d => 22},
             {:era => :bunsei, :e_y => 10, :e_m =>  8, :g_y => 1827, :g_m =>  9, :g_d => 21},
             {:era => :bunsei, :e_y => 10, :e_m =>  9, :g_y => 1827, :g_m => 10, :g_d => 21},
             {:era => :bunsei, :e_y => 10, :e_m => 10, :g_y => 1827, :g_m => 11, :g_d => 19},
             {:era => :bunsei, :e_y => 10, :e_m => 11, :g_y => 1827, :g_m => 12, :g_d => 18},
             {:era => :bunsei, :e_y => 10, :e_m => 12, :g_y => 1828, :g_m =>  1, :g_d => 17},

             {:era => :bunsei, :e_y => 11, :e_m =>  1, :g_y => 1828, :g_m =>  2, :g_d => 15},
             {:era => :bunsei, :e_y => 11, :e_m =>  2, :g_y => 1828, :g_m =>  3, :g_d => 16},
             {:era => :bunsei, :e_y => 11, :e_m =>  3, :g_y => 1828, :g_m =>  4, :g_d => 14},
             {:era => :bunsei, :e_y => 11, :e_m =>  4, :g_y => 1828, :g_m =>  5, :g_d => 14},
             {:era => :bunsei, :e_y => 11, :e_m =>  5, :g_y => 1828, :g_m =>  6, :g_d => 12},
             {:era => :bunsei, :e_y => 11, :e_m =>  6, :g_y => 1828, :g_m =>  7, :g_d => 12},
             {:era => :bunsei, :e_y => 11, :e_m =>  7, :g_y => 1828, :g_m =>  8, :g_d => 11},
             {:era => :bunsei, :e_y => 11, :e_m =>  8, :g_y => 1828, :g_m =>  9, :g_d =>  9},
             {:era => :bunsei, :e_y => 11, :e_m =>  9, :g_y => 1828, :g_m => 10, :g_d =>  9},
             {:era => :bunsei, :e_y => 11, :e_m => 10, :g_y => 1828, :g_m => 11, :g_d =>  7},
             {:era => :bunsei, :e_y => 11, :e_m => 11, :g_y => 1828, :g_m => 12, :g_d =>  7},
             {:era => :bunsei, :e_y => 11, :e_m => 12, :g_y => 1829, :g_m =>  1, :g_d =>  6},

             {:era => :bunsei, :e_y => 12, :e_m =>  1, :g_y => 1829, :g_m =>  2, :g_d =>  4},
             {:era => :bunsei, :e_y => 12, :e_m =>  2, :g_y => 1829, :g_m =>  3, :g_d =>  5},
             {:era => :bunsei, :e_y => 12, :e_m =>  3, :g_y => 1829, :g_m =>  4, :g_d =>  4},
             {:era => :bunsei, :e_y => 12, :e_m =>  4, :g_y => 1829, :g_m =>  5, :g_d =>  3},
             {:era => :bunsei, :e_y => 12, :e_m =>  5, :g_y => 1829, :g_m =>  6, :g_d =>  2},
             {:era => :bunsei, :e_y => 12, :e_m =>  6, :g_y => 1829, :g_m =>  7, :g_d =>  1},
             {:era => :bunsei, :e_y => 12, :e_m =>  7, :g_y => 1829, :g_m =>  7, :g_d => 31},
             {:era => :bunsei, :e_y => 12, :e_m =>  8, :g_y => 1829, :g_m =>  8, :g_d => 29},
             {:era => :bunsei, :e_y => 12, :e_m =>  9, :g_y => 1829, :g_m =>  9, :g_d => 28},
             {:era => :bunsei, :e_y => 12, :e_m => 10, :g_y => 1829, :g_m => 10, :g_d => 28},
             {:era => :bunsei, :e_y => 12, :e_m => 11, :g_y => 1829, :g_m => 11, :g_d => 26},
             {:era => :bunsei, :e_y => 12, :e_m => 12, :g_y => 1829, :g_m => 12, :g_d => 26},

             {:era => :bunsei, :e_y => 13, :e_m =>  1, :g_y => 1830, :g_m =>  1, :g_d => 25},
             {:era => :bunsei, :e_y => 13, :e_m =>  2, :g_y => 1830, :g_m =>  2, :g_d => 23},
             {:era => :bunsei, :e_y => 13, :e_m =>  3, :g_y => 1830, :g_m =>  3, :g_d => 24},
             {:era => :bunsei, :e_y => 13, :e_m =>  3, :g_y => 1830, :g_m =>  4, :g_d => 23, :leap_month => true},
             {:era => :bunsei, :e_y => 13, :e_m =>  4, :g_y => 1830, :g_m =>  5, :g_d => 22},
             {:era => :bunsei, :e_y => 13, :e_m =>  5, :g_y => 1830, :g_m =>  6, :g_d => 21},
             {:era => :bunsei, :e_y => 13, :e_m =>  6, :g_y => 1830, :g_m =>  7, :g_d => 20},
             {:era => :bunsei, :e_y => 13, :e_m =>  7, :g_y => 1830, :g_m =>  8, :g_d => 18},
             {:era => :bunsei, :e_y => 13, :e_m =>  8, :g_y => 1830, :g_m =>  9, :g_d => 17},
             {:era => :bunsei, :e_y => 13, :e_m =>  9, :g_y => 1830, :g_m => 10, :g_d => 17},
             {:era => :bunsei, :e_y => 13, :e_m => 10, :g_y => 1830, :g_m => 11, :g_d => 15},
             {:era => :bunsei, :e_y => 13, :e_m => 11, :g_y => 1830, :g_m => 12, :g_d => 15},
             {:era => :bunsei, :e_y => 13, :e_m => 12, :g_y => 1831, :g_m =>  1, :g_d => 14},

            ]

    add_era_table table
  end # Date
end # Wareki
