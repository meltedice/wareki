# -*- coding: utf-8 -*-

require "spec_helper"
require 'wareki'

describe Date do
  def date(str) Date.parse(str) end

  describe "Edo period" do
    it "should treat Edo date as Lunisolar calendar" do
      Wareki::Date.parse("元和元年一月一日").should be_date("1615/01/29")
      Wareki::Date.parse("genna01.01.01").should be_date("1615/01/29")
      Wareki::Date.parse("genna10.12.01").should be_date("1625/01/09")

      Wareki::Date.parse("寛永元年一月一日").should be_date("1624/02/19")
      Wareki::Date.parse("kanei01.01.01").should be_date("1624/02/19")
      Wareki::Date.parse("kanei21.12.01").should be_date("1644/12/29")

      Wareki::Date.parse("正保元年一月一日").should be_date("1644/02/08")
      Wareki::Date.parse("shoho01.01.01").should be_date("1644/02/08")
      Wareki::Date.parse("shoho05.12.01").should be_date("1649/01/13")

      Wareki::Date.parse("慶安元年一月一日").should be_date("1648/01/25")
      Wareki::Date.parse("keian01.01.01").should be_date("1648/01/25")
      Wareki::Date.parse("keian05.12.01").should be_date("1652/12/31")

      Wareki::Date.parse("承応元年一月一日").should be_date("1652/02/10")
      Wareki::Date.parse("joo01.01.01").should be_date("1652/02/10")
      Wareki::Date.parse("joo04.12.01").should be_date("1655/12/28")

      Wareki::Date.parse("明暦元年一月一日").should be_date("1655/02/07")
      Wareki::Date.parse("meireki01.01.01").should be_date("1655/02/07")
      Wareki::Date.parse("meireki04.12.01").should be_date("1658/12/24")
      Wareki::Date.parse("meireki04.12*.01").should be_date("1659/1/23") # 閏月

      Wareki::Date.parse("万治元年一月一日").should be_date("1658/02/03")
      Wareki::Date.parse("manji01.01.01").should be_date("1658/02/03")
      Wareki::Date.parse("manji04.12.01").should be_date("1662/01/20")

      Wareki::Date.parse("寛文元年一月一日").should be_date("1661/01/31")
      Wareki::Date.parse("kanbun01.01.01").should be_date("1661/01/31")
      Wareki::Date.parse("kanbun13.12.01").should be_date("1674/01/07")

      Wareki::Date.parse("延宝元年一月一日").should be_date("1673/02/17")
      Wareki::Date.parse("enpo01.01.01").should be_date("1673/02/17")
      Wareki::Date.parse("enpo09.12.01").should be_date("1682/01/09")

      # Wareki::Date.parse("天和元年一月一日").should be_date("")
      # Wareki::Date.parse("tenna01.01.01").should be_date("")
      # Wareki::Date.parse("tenna00.12.01").should be_date("")

      # Wareki::Date.parse("貞享元年一月一日").should be_date("")
      # Wareki::Date.parse("jokyo01.01.01").should be_date("")
      # Wareki::Date.parse("jokyo00.12.01").should be_date("")

      # Wareki::Date.parse("元禄元年一月一日").should be_date("")
      # Wareki::Date.parse("genroku01.01.01").should be_date("")
      # Wareki::Date.parse("genroku00.12.01").should be_date("")

      # Wareki::Date.parse("宝永元年一月一日").should be_date("")
      # Wareki::Date.parse("hoei01.01.01").should be_date("")
      # Wareki::Date.parse("hoei00.12.01").should be_date("")

      # Wareki::Date.parse("正徳元年一月一日").should be_date("")
      # Wareki::Date.parse("shotoku01.01.01").should be_date("")
      # Wareki::Date.parse("shotoku00.12.01").should be_date("")

      # Wareki::Date.parse("享保元年一月一日").should be_date("")
      # Wareki::Date.parse("kyoho01.01.01").should be_date("")
      # Wareki::Date.parse("kyoho00.12.01").should be_date("")

      # Wareki::Date.parse("元文元年一月一日").should be_date("")
      # Wareki::Date.parse("genbun01.01.01").should be_date("")
      # Wareki::Date.parse("genbun00.12.01").should be_date("")

      # Wareki::Date.parse("寛保元年一月一日").should be_date("")
      # Wareki::Date.parse("kanpo01.01.01").should be_date("")
      # Wareki::Date.parse("kanpo00.12.01").should be_date("")

      # Wareki::Date.parse("延享元年一月一日").should be_date("")
      # Wareki::Date.parse("enkyo01.01.01").should be_date("")
      # Wareki::Date.parse("enkyo00.12.01").should be_date("")

      # Wareki::Date.parse("寛延元年一月一日").should be_date("")
      # Wareki::Date.parse("kanen01.01.01").should be_date("")
      # Wareki::Date.parse("kanen00.12.01").should be_date("")

      # Wareki::Date.parse("宝暦元年一月一日").should be_date("")
      # Wareki::Date.parse("horeki01.01.01").should be_date("")
      # Wareki::Date.parse("horeki00.12.01").should be_date("")

      # Wareki::Date.parse("明和元年一月一日").should be_date("")
      # Wareki::Date.parse("meiwa01.01.01").should be_date("")
      # Wareki::Date.parse("meiwa00.12.01").should be_date("")

      Wareki::Date.parse("安永元年一月一日").should be_date("1772/02/04")
      Wareki::Date.parse("anei01.01.01").should be_date("1772/02/04")
      Wareki::Date.parse("anei10.12.01").should be_date("1782/01/14")

      Wareki::Date.parse("天明元年一月一日").should be_date("1781/01/24")
      Wareki::Date.parse("tenmei01.01.01").should be_date("1781/01/24")
      Wareki::Date.parse("tenmei09.12.01").should be_date("1790/01/15")

      Wareki::Date.parse("寛政元年一月一日").should be_date("1789/01/26")
      Wareki::Date.parse("kansei01.01.01").should be_date("1789/01/26")
      Wareki::Date.parse("kansei13.12.01").should be_date("1802/01/04")

      Wareki::Date.parse("享和元年一月一日").should be_date("1801/02/13")
      Wareki::Date.parse("kyowa01.01.01").should be_date("1801/02/13")
      Wareki::Date.parse("kyowa04.12.01").should be_date("1805/01/01")

      # Wareki::Date.parse("文化元年一月一日").should be_date("")
      # Wareki::Date.parse("bunka01.01.01").should be_date("")
      # Wareki::Date.parse("bunka00.12.01").should be_date("")

      # Wareki::Date.parse("文政元年一月一日").should be_date("")
      # Wareki::Date.parse("bunsei01.01.01").should be_date("")
      # Wareki::Date.parse("bunsei00.12.01").should be_date("")

      # Wareki::Date.parse("天保元年一月一日").should be_date("")
      # Wareki::Date.parse("tenpo01.01.01").should be_date("")
      # Wareki::Date.parse("tenpo00.12.01").should be_date("")

      # Wareki::Date.parse("弘化元年一月一日").should be_date("")
      # Wareki::Date.parse("koka01.01.01").should be_date("")
      # Wareki::Date.parse("koka00.12.01").should be_date("")

      # Wareki::Date.parse("嘉永元年一月一日").should be_date("")
      # Wareki::Date.parse("kaei01.01.01").should be_date("")
      # Wareki::Date.parse("kaei00.12.01").should be_date("")

      # Wareki::Date.parse("安政元年一月一日").should be_date("")
      # Wareki::Date.parse("ansei01.01.01").should be_date("")
      # Wareki::Date.parse("ansei00.12.01").should be_date("")

      # Wareki::Date.parse("万延元年一月一日").should be_date("")
      # Wareki::Date.parse("manen01.01.01").should be_date("")
      # Wareki::Date.parse("manen00.12.01").should be_date("")

      # Wareki::Date.parse("文久元年一月一日").should be_date("")
      # Wareki::Date.parse("bunkyu01.01.01").should be_date("")
      # Wareki::Date.parse("bunkyu00.12.01").should be_date("")

      # Wareki::Date.parse("元治元年一月一日").should be_date("")
      # Wareki::Date.parse("genji01.01.01").should be_date("")
      # Wareki::Date.parse("genji00.12.01").should be_date("")

      # Wareki::Date.parse("慶応元年一月一日").should be_date("")
      # Wareki::Date.parse("keio01.01.01").should be_date("")
      # Wareki::Date.parse("keio00.12.01").should be_date("")
    end
  end
end
