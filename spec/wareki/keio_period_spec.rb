# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  def date(str) Date.parse(str) end

  describe "Keio period" do
    it "should treat Keio date as Lunisolar calendar" do
      # 慶応元年（乙丑）      一月     二月     三月     四月     五月     閏五月   六月     七月     八月     九月       十月     十一月     十二月
      # グレゴリオ暦     1865/1/27     2/26     3/27     4/25     5/25     6/23     7/23     8/21     9/20    10/20      11/18      12/18     1866/1/17
      # 慶応二年（丙寅）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
      # グレゴリオ暦     1866/2/15     3/17     4/15     5/15     6/13     7/12     8/10      9/9     10/9     11/7       12/7   1867/1/6     
      # 慶応三年（丁卯）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
      # グレゴリオ暦     1867/2/5       3/6      4/5      5/4      6/3     7/2      7/31     8/29     9/28    10/27      11/26      12/26     
      # 慶応四年（戊辰）      一月     二月     三月     四月   閏四月     五月     六月     七月     八月     九月       十月     十一月     十二月
      # グレゴリオ暦     1868/1/25     2/23     3/24     4/23     5/22     6/20     7/20     8/18     9/16    10/16      11/14      12/14     1869/1/13

      Wareki::Date.parse("k01.01.01").should be_date("1865-01-27")
      Wareki::Date.parse("k01.02.01").should be_date("1865-02-26")
      Wareki::Date.parse("k01.03.01").should be_date("1865-03-27")
      Wareki::Date.parse("k02.04.01").should be_date("1866-05-15")
      Wareki::Date.parse("k03.05.01").should be_date("1867-06-03")
      Wareki::Date.parse("k04.06.01").should be_date("1868-07-20")
    end
  end
end
