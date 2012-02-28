# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  def date(str) Date.parse(str) end

  describe "Bunka period" do
    it "should treat Bunka date as Lunisolar calendar" do
      Wareki::Date.parse("bunka01.01.01").should be_date("1804-02-11")
      Wareki::Date.parse("bunka15.12.01").should be_date("1818-12-27")
    end
  end
end
