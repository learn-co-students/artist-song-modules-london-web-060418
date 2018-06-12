module Findable
  def find_by_name(name)
    self.all.detect do |find|
      find.name == name
    end
  end
end
