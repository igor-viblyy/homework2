# frozen_string_literal: true

# exercise object model
module ObjectModel
  # module LinuxFriendly
  module LinuxFriendly
    def fork_process
      super
    end
  end

  # class Computer it`s a parent class
  class Computer
    def mine_bitcoins
      inspect
    end

    def fork_process
      'Parent: allocate memory'
    end
  end

  # class Laptop it`s a child class
  class Laptop < Computer
    prepend LinuxFriendly
  end
end
