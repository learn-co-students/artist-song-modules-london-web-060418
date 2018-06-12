module Memorable

  module InstanceMethods
    
    def initialize
      self.class.all << self
    end
  end

  module ClassMethods

    def reset_all    #no self here
      all.clear
    end

    def count
      all.count
    end

  end

end
