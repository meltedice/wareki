# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  def date(str) Date.parse(str) end

  describe "Ansei period" do
    it "should treat Ansei date as Lunisolar calendar" do
      # http://ja.wikipedia.org/wiki/%E5%AE%89%E6%94%BF
      # 安政元年（甲寅）      一月     二月     三月       四月     五月     六月     七月   閏七月     八月      九月      十月       十一月        十二月 
      # グレゴリオ暦     1854/1/29     2/27     3/29       4/27     5/27     6/25     7/25     8/24     9/22     10/22     11/20        12/20     1855/1/18 
      # 安政二年（乙卯）      一月     二月     三月       四月     五月     六月     七月     八月     九月      十月    十一月       十二月     
      # グレゴリオ暦     1855/2/17     3/18     4/17       5/16     6/14     7/14     8/13     9/11    10/11     11/10      12/9     1856/1/8     
      # 安政三年（丙辰）      一月     二月     三月       四月     五月     六月     七月     八月     九月      十月    十一月       十二月     
      # グレゴリオ暦     1856/2/6       3/7      4/5        5/4      6/3      7/2      8/1     8/30     9/29     10/29     11/28        12/27     
      # 安政四年（丁巳）      一月     二月     三月       四月     五月   閏五月     六月     七月     八月      九月      十月       十一月        十二月 
      # グレゴリオ暦     1857/1/26     2/24     3/26       4/24     5/23     6/22     7/21     8/20     9/18     10/18     11/17        12/16     1858/1/15 
      # 安政五年（戊午）      一月     二月     三月       四月     五月     六月     七月     八月     九月      十月    十一月       十二月     
      # グレゴリオ暦     1858/2/14     3/15     4/14       5/13     6/11     7/11      8/9      9/7     10/7      11/6      12/5     1859/1/4     
      # 安政六年（己未）      一月     二月     三月       四月     五月     六月     七月     八月     九月      十月    十一月       十二月     
      # グレゴリオ暦     1859/2/3       3/5      4/3        5/3      6/1     6/30     7/30     8/28     9/26     10/26     11/24        12/24     
      # 安政七年（庚申）      一月     二月     三月     閏三月     四月     五月     六月     七月     八月      九月      十月       十一月        十二月 
      # グレゴリオ暦     1860/1/23     2/22     3/22       4/21     5/21     6/19     7/18     8/17     9/15     10/14     11/13        12/12     1861/1/11 

      Wareki::Date.parse("ansei01.01.01").should be_date("1854-01-29")
      Wareki::Date.parse("ansei01.02.01").should be_date("1854-02-27")
      Wareki::Date.parse("ansei01.03.01").should be_date("1854-03-29")
      Wareki::Date.parse("ansei01.12.01").should be_date("1855-01-18")
      Wareki::Date.parse("ansei02.04.01").should be_date("1855-05-16")
      Wareki::Date.parse("ansei02.12.01").should be_date("1856-01-08")
      Wareki::Date.parse("ansei07.12.01").should be_date("1861-01-11")
    end
  end
end
