# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  def date(str) Date.parse(str) end

  describe "Bunkyu period" do
    it "should treat Bunkyu date as Lunisolar calendar" do
      # http://ja.wikipedia.org/wiki/%E6%96%87%E4%B9%85
      # 文久元年（辛酉）      一月     二月     三月     四月     五月     六月     七月     八月       九月      十月     十一月     十二月     
      # グレゴリオ暦     1861/2/10     3/11     4/10     5/10      6/8      7/8      8/6      9/5       10/4      11/3       12/2      12/31     
      # 文久二年（壬戌）      一月     二月     三月     四月     五月     六月     七月     八月     閏八月      九月       十月     十一月        十二月
      # グレゴリオ暦     1862/1/30      3/1     3/30     4/29     5/29     6/27     7/27     8/25       9/24     10/23      11/22      12/21     1863/1/20
      # 文久三年（癸亥）      一月     二月     三月     四月     五月     六月     七月     八月       九月      十月     十一月     十二月     
      # グレゴリオ暦     1863/2/18     3/19     4/18     5/18     6/16     7/16     8/14     9/13      10/13     11/11      12/11   1864/1/9     
      # 文久四年（甲子）      一月     二月     三月     四月     五月     六月     七月     八月       九月      十月     十一月     十二月     
      # グレゴリオ暦      1864/2/8      3/8      4/6      5/6      6/4      7/4      8/2      9/1       10/1     10/31      11/29      12/29     

      Wareki::Date.parse("b01.01.01").should be_date("1861-02-10")
      Wareki::Date.parse("b01.02.01").should be_date("1861-03-11")
      Wareki::Date.parse("b01.03.01").should be_date("1861-04-10")
      Wareki::Date.parse("b02.04.01").should be_date("1862-04-29")
      Wareki::Date.parse("b02.12.01").should be_date("1863-01-20")
      Wareki::Date.parse("b04.01.01").should be_date("1864-02-08")
      Wareki::Date.parse("b04.12.01").should be_date("1864-12-29")
    end
  end
end
