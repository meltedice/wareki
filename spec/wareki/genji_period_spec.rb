# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  def date(str) Date.parse(str) end

  describe "Genji period" do
    it "should treat Genji date as Lunisolar calendar" do
      # http://ja.wikipedia.org/wiki/%E5%85%83%E6%B2%BB
      # 元治元年（甲子）     一月     二月     三月     四月     五月     六月     七月     八月     九月      十月     十一月     十二月     
      # グレゴリオ暦     1864/2/8      3/8      4/6      5/6      6/4      7/4      8/2      9/1     10/1     10/31      11/29      12/29     
      # 元治二年（乙丑）     一月     二月     三月     四月     五月   閏五月     六月     七月     八月      九月       十月     十一月     十二月
      # グレゴリオ暦    1865/1/27     2/26     3/27     4/25     5/25     6/23     7/23     8/21     9/20     10/20      11/18      12/18     1866/1/17

      Wareki::Date.parse("genji01.01.01").should be_date("1864-02-08")
      Wareki::Date.parse("genji01.02.01").should be_date("1864-03-08")
      Wareki::Date.parse("genji01.03.01").should be_date("1864-04-06")
      Wareki::Date.parse("genji02.04.01").should be_date("1865-04-25")
      Wareki::Date.parse("genji02.12.01").should be_date("1866-01-17")
    end
  end
end
