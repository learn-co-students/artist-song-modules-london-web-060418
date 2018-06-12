module Memorable
  module ClassMod
    def count
      self.all.count
    end

    def reset_all
      self.all.clear
    end
  end

  module InstanceMod
    def initialize
      self.class.all << self
    end
  end
end
