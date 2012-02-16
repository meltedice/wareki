# -*- coding: utf-8 -*-

module Wareki
  module Wareki
    def self.included(base)
      base.extend ClassMethods
      base.__send__ :include, InstanceMethods
    end

    module ClassMethods
    end

    module InstanceMethods
    end
  end
end
