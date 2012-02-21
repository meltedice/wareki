# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  def date(str) Date.parse(str) end

  describe "Manen period" do
    it "should treat Manen date as Lunisolar calendar" do
      # http://ja.wikipedia.org/wiki/%E4%B8%87%E5%BB%B6
      # 万延元年（庚申）      一月     二月     三月     閏三月     四月     五月     六月     七月     八月      九月       十月     十一月        十二月
      # グレゴリオ暦     1860/1/23     2/22     3/22       4/21     5/21     6/19     7/18     8/17     9/15     10/14      11/13      12/12     1861/1/11 
      # 万延二年（辛酉）      一月     二月     三月       四月     五月     六月     七月     八月     九月      十月     十一月     十二月     
      # グレゴリオ暦     1861/2/10     3/11     4/10       5/10      6/8      7/8      8/6      9/5     10/4      11/3       12/2      12/31     

      Wareki::Date.parse("manen01.01.01").should be_date("1860-01-23")
      Wareki::Date.parse("manen01.02.01").should be_date("1860-02-22")
      Wareki::Date.parse("manen01.03.01").should be_date("1860-03-22")
      Wareki::Date.parse("manen01.12.01").should be_date("1861-01-11")
      Wareki::Date.parse("manen02.04.01").should be_date("1861-05-10")
      Wareki::Date.parse("manen02.12.01").should be_date("1861-12-31")
    end
  end
end
