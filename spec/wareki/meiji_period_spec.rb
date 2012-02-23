# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  def date(str) Date.parse(str) end

  describe "Meiji period" do
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

      Wareki::Date.parse("meiji01.01.01").should be_date("1868-01-25")
      Wareki::Date.parse("Meiji01.01.02").should be_date("1868-01-26")

      Wareki::Date.parse("m01.01.01").should be_date("1868-01-25")
      Wareki::Date.parse("m01.01.02").should be_date("1868-01-26")

      Wareki::Date.parse("m01.01.03").should be_date("1868-01-27")
      Wareki::Date.parse("m01.01.04").should be_date("1868-01-28")
      Wareki::Date.parse("m01.01.05").should be_date("1868-01-29")
      Wareki::Date.parse("m01.01.06").should be_date("1868-01-30")
      Wareki::Date.parse("m01.01.07").should be_date("1868-01-31")
      Wareki::Date.parse("m01.01.08").should be_date("1868-02-01")
      Wareki::Date.parse("m01.01.09").should be_date("1868-02-02")
      Wareki::Date.parse("m01.01.10").should be_date("1868-02-03")
      Wareki::Date.parse("m01.01.20").should be_date("1868-02-13")
      Wareki::Date.parse("m01.01.29").should be_date("1868-02-22")
      Wareki::Date.parse("m01.02.01").should be_date("1868-02-23")
      Wareki::Date.parse("m02.07.07").should be_date("1869-08-14")
      Wareki::Date.parse("m02.04.09").should be_date("1869-05-20") # 明治2年4月9日（1869年5月20日）
      Wareki::Date.parse("m04.07.14").should be_date("1871-08-29") # 明治4年7月14日（1871年8月29日）
      Wareki::Date.parse("m05.01.28").should be_date("1872-03-07") # 明治5年1月28日（1872年3月7日）
    end
  end
end
