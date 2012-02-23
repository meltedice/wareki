# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  describe "parse kanji date format" do
    it "should translate kanji era name to alphabetic" do
      Wareki::Date.parse_kanji("明01.02.02").should == "m01.02.02"
      Wareki::Date.parse_kanji("大01.02.02").should == "t01.02.02"
      Wareki::Date.parse_kanji("昭01.02.02").should == "s01.02.02"
      Wareki::Date.parse_kanji("平01.02.02").should == "h01.02.02"

      Wareki::Date.parse_kanji("元治01.01.01").should == "genji01.01.01"
      Wareki::Date.parse_kanji("慶応01.01.01").should == "keio01.01.01"
      Wareki::Date.parse_kanji("明治01.01.01").should == "m01.01.01"
      Wareki::Date.parse_kanji("大正01.01.01").should == "t01.01.01"
      Wareki::Date.parse_kanji("昭和01.01.01").should == "s01.01.01"
      Wareki::Date.parse_kanji("平成01.01.01").should == "h01.01.01"
    end

    it "should translate kanji date format" do
      Wareki::Date.parse_kanji("昭和01年01月01日").should == "s01.01.01"
      Wareki::Date.parse_kanji("平成01年01月01日").should == "h01.01.01"
    end

    it "should translate kanji date format with kanji numbers" do
      Wareki::Date.parse_kanji("昭和元年一月一日").should == "s01.01.01"
      Wareki::Date.parse_kanji("平成元年一月一日").should == "h01.01.01"

      Wareki::Date.parse_kanji("平成一年一月一日").should == "h01.01.01"
      Wareki::Date.parse_kanji("昭和二年三月四日").should == "s02.03.04"
      Wareki::Date.parse_kanji("昭和五年六月七日").should == "s05.06.07"
      Wareki::Date.parse_kanji("昭和八年九月十日").should == "s08.09.10"
      Wareki::Date.parse_kanji("昭和十一年十二月二十五日").should == "s11.12.25"
    end
  end
end
