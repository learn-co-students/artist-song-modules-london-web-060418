module Paramable

    module InstanceMethods

      def to_param
        name.downcase.gsub(' ', '-')   #turns name into a slug param
      end

    end

    module ClassMethods

    end


end
