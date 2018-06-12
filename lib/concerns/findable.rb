module Findable

  module InstanceMethods

  end

  module ClassMethods

    def find_by_name(name)     #no self here
      self.all.detect{|a| a.name == name}     #but self here 
    end

  end

end
