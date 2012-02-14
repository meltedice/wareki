# -*- coding: utf-8 -*-

require "spec_helper"
require "date"

describe Date do
  describe "Meiji period to Heisei period" do
    it "should parse gregorian calendar date correctly" do
      Date.parse("2012-02-15").should == Date.new(2012, 2, 15)
      Date.parse("2012/02/15").should == Date.new(2012, 2, 15)
    end

    it "should parse Meiji period but uses Gregorian calendar" do
      # 明治元(1)年〜明治5年は太陰太陽暦
      # 明治6年〜はグレゴリオ歴
      # Ruby の Date class は明治元年〜明治6年にもグレゴリオ歴を使っているので正しくない
      # From Meiji 1st to Meiji 5th uses Lunisolar calendar
      # From Meiji 6th uses Gregorian calendar
      # Meiji 1st to 5th uses Lunisolar calendar, but Ruby Date class uses Gregorian calendar

      # 明治:  慶応4年9月8日（1868年10月23日）- 1912年7月30日
      # Meiji: Keio 4, 9th month, 8th day (1868-10-23) - 1912-07-30
      Date.parse("m01.01.01").should == Date.parse("1868-01-01") # This is *NOT* correct
      Date.parse("m05.12.31").should == Date.parse("1872-12-31") # This is *NOT* correct
    end

    it "should parse Meiji period correctly" do
      # 明治:  慶応4年9月8日（1868年10月23日）- 1912年7月30日
      # Meiji: Keio 4, 9th month, 8th day (1868-10-23) - 1912-07-30
      # Meiji started to use Gregorian calendar
      Date.parse("m06.01.01").should == Date.parse("1873-01-01")
      Date.parse("m44.12.31").should == Date.parse("1911-12-31")
      Date.parse("m45.07.30").should == Date.parse("1912-07-30")
    end

    it "should parse Taisho period correctly" do
      # 大正:  1912年7月30日 - 1926年12月25日
      # Taisho:  1912-07-30  - 1926/12/25
      Date.parse("t01.07.30").should == Date.parse("1912-07-30")
      Date.parse("t02.01.01").should == Date.parse("1913-01-01")
      Date.parse("t15.12.25").should == Date.parse("1926-12-25")
    end

    it "should parse Showa period correctly" do
      # 昭和:  1926年12月25日 - 1989年1月7日
      # Showa: 1926/12/25     - 1989/01/07
      Date.parse("s01.12.25").should == Date.parse("1926-12-25")
      Date.parse("s02.01.01").should == Date.parse("1927-01-01")
      Date.parse("s64.01.07").should == Date.parse("1989-01-07")
    end

    it "should parse Heisei period correctly" do
      # 平成:   1989年1月8日
      # Heisei: 1989/01/08
      Date.parse("h01.01.08").should == Date.parse("1989-01-08")
      Date.parse("h24.01.01").should == Date.parse("2012-01-01")
    end
  end
end
