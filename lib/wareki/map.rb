# -*- coding: utf-8 -*-

module Wareki
  module Map
    WAREKI_SHORT_ERA_NAME_TABLE = {'明' => 'm', '大' => 't', '昭' => 's', '平' => 'h'}
    WAREKI_LONG_ERA_NAME_TABLE = {
      # 江戸時代
      '元和' => 'genna',   # 1615年 げんな Genna
      '寛永' => 'kanei',   # 1624年 かんえい Kan'ei
      '正保' => 'shoho',   # 1644年 しょうほう Shōhō
      '慶安' => 'keian',   # 1648年 けいあん Keian
      '承応' => 'joo',     # 1652年 じょうおう Jōō
      '明暦' => 'meireki', # 1655年 めいれき Meireki
      '万治' => 'manji',   # 1658年 まんじ Manji
      '寛文' => 'kanbun',  # 1661年 かんぶん Kanbun
      '延宝' => 'enpo',    # 1673年 えんぽう Enpō
      '天和' => 'tenna',   # 1681年 てんな Tenna
      '貞享' => 'jokyo',   # 1684年 じょうきょう Jōkyō
      '元禄' => 'genroku', # 1688年 げんろく Genroku
      '宝永' => 'hoei',    # 1704年 ほうえい Hōei
      '正徳' => 'shotoku', # 1711年 しょうとく Shōtoku
      '享保' => 'kyoho',   # 1716年 きょうほう Kyōhō
      '元文' => 'genbun',  # 1736年 げんぶん Genbun
      '寛保' => 'kanpo',   # 1741年 かんぽう Kanpō
      '延享' => 'enkyo',   # 1744年 えんきょう Enkyō
      '寛延' => 'kanen',   # 1748年 かんえん Kan'en
      '宝暦' => 'horeki',  # 1751年 ほうれき Hōreki
      '明和' => 'meiwa',   # 1764年 めいわ Meiwa
      '安永' => 'anei',    # 1772年 あんえい An'ei
      '天明' => 'tenmei',  # 1781年 てんめい Tenmei
      '寛政' => 'kansei',  # 1789年 かんせい Kansei
      '享和' => 'kyowa',   # 1801年 きょうわ Kyōwa
      '文化' => 'bunka',   # 1804年 ぶんか Bunka
      '文政' => 'bunsei',  # 1818年 ぶんせい Bunsei
      '天保' => 'tenpo',   # 1830年 てんぽう Tenpō
      '弘化' => 'koka',    # 1844年 こうか Kōka
      '嘉永' => 'kaei',    # 1848年 かえい Kaei
      '安政' => 'ansei',   # 1854年 あんせい Ansei
      '万延' => 'manen',   # 1860年 まんえん Man'en
      '文久' => 'bunkyu',  # 1861年 ぶんきゅう Bunkyū
      '元治' => 'genji',   # 1864年 げんじ Genji
      '慶応' => 'keio',    # 1865年 けいおう Keiō
      # 明治時代以降
      '明治' => 'm',       # 1912/07/30 めいじ
      '大正' => 't',       # 1912/07/30 たいしょう
      '昭和' => 's',       # 1926/12/25 しょうわ
      '平成' => 'h',       # 1989/01/08 へいせい
      # '明治' => 'meiji',   # 1912/07/30 めいじ
      # '大正' => 'taisho',  # 1912/07/30 たいしょう
      # '昭和' => 'showa',   # 1926/12/25 しょうわ
      # '平成' => 'heisei',  # 1989/01/08 へいせい
    }
    KNOWN_WAREKI_SHORT_ERA_MAP = Hash[*WAREKI_SHORT_ERA_NAME_TABLE.map {|k, v| [v, v, k, v]}.flatten]
    KNOWN_WAREKI_LONG_ERA_MAP  = Hash[*WAREKI_LONG_ERA_NAME_TABLE.map  {|k, v| [v, v, k, v]}.flatten]
  end
end
