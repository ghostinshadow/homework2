# frozen_string_literal: true

# exercise object model
module ObjectModel
  # parent
  class Comp
    def fork_process
      'Parent: allocate memory'
    end

    def mine_bitcoins
      inspect
    end
  end
  # module
  module LinuxFriendly
    def fork_process
      super
    end
  end
  # main
  class Laptop < Comp
    prepend LinuxFriendly
  end
end
