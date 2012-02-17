# -*- coding: utf-8 -*-

$:.unshift(File.dirname(__FILE__) + '/../lib')
$:.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'bundler'
Bundler.setup

RSpec::Matchers.define :be_date do |date_str|
  match do |wareki_date|
    wareki_date.strftime("%Y-%m-%d") == Date.parse(date_str).strftime("%Y-%m-%d")
  end
end
