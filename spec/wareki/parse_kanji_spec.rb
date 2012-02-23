# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  describe "parse kanji date format" do
    it "should treat Meiji date as Lunisolar calendar" do
      # 明治元年（戊辰）      一月     二月     三月     四月     閏四月   五月     六月     七月     八月     九月     十月       十一月     十二月
      # グレゴリオ暦     1868/1/25     2/23     3/24     4/23     5/22     6/20     7/20     8/18     9/16     10/16    11/14      12/14      1869/1/13
      # 明治二年（己巳）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
      # グレゴリオ暦     1869/2/11     3/13     4/12     5/12     6/10     7/9      8/8      9/6      10/5     11/4     12/3       1870/1/2     
      # 明治三年（庚午）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     閏十月     十一月     十二月
      # グレゴリオ暦     1870/2/1      3/2      4/1      5/1      5/30     6/29     7/28     8/27     9/25     10/25    11/23      12/22      1871/1/21
      # 明治四年（辛未）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
      # グレゴリオ暦     1871/2/19     3/21     4/20     5/19     6/18     7/18     8/16     9/15     10/14    11/13    12/12      1872/1/10     
      # 明治五年（壬申）      一月     二月     三月     四月     五月     六月     七月     八月     九月     十月     十一月     十二月     
      # グレゴリオ暦     1872/2/9      3/9      4/8      5/7      6/6      7/6      8/4      9/3      10/3     11/1     12/1       12/30

      Wareki::Date.parse_kanji("平01.02.02").should == "h01.02.02"
      Wareki::Date.parse_kanji("昭01.02.02").should == "s01.02.02"
      Wareki::Date.parse_kanji("大01.02.02").should == "t01.02.02"
      Wareki::Date.parse_kanji("明01.02.02").should == "m01.02.02"

      Wareki::Date.parse_kanji("平成01.01.01").should == "h01.01.01"
      Wareki::Date.parse_kanji("昭和01.01.01").should == "s01.01.01"
      Wareki::Date.parse_kanji("大正01.01.01").should == "t01.01.01"
      Wareki::Date.parse_kanji("明治01.01.01").should == "m01.01.01"
    end
  end
end
