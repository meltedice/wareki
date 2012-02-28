# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  describe "parse kanji numbers" do
    it "should translate kanji date format with kanji numbers" do
      Wareki::Kanji.parse_number("〇").should == 0
      Wareki::Kanji.parse_number("一").should == 1
      Wareki::Kanji.parse_number("二").should == 2
      Wareki::Kanji.parse_number("三").should == 3
      Wareki::Kanji.parse_number("四").should == 4
      Wareki::Kanji.parse_number("五").should == 5
      Wareki::Kanji.parse_number("六").should == 6
      Wareki::Kanji.parse_number("七").should == 7
      Wareki::Kanji.parse_number("八").should == 8
      Wareki::Kanji.parse_number("九").should == 9
      Wareki::Kanji.parse_number("一〇").should == 10
      Wareki::Kanji.parse_number("一一").should == 11
      Wareki::Kanji.parse_number("一二").should == 12

      Wareki::Kanji.parse_number("十").should == 10

      Wareki::Kanji.parse_number("十一").should == 11
      Wareki::Kanji.parse_number("十三").should == 13
      Wareki::Kanji.parse_number("三十").should == 30
      Wareki::Kanji.parse_number("九十").should == 90
      Wareki::Kanji.parse_number("九十七").should == 97

      # Wareki::Kanji.parse_number("昭和十一年十二月二十五日").should == "s11.12.25"
    end
  end
end
