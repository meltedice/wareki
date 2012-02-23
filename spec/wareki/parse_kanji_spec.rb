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
  end
end
