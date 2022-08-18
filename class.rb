require_relative 'module'
class Mylist
    include MyEnumerable

    def initialize(*list)
        @list = list
    end
end

# Create instance of MyList

list_test = Mylist.new(1, 2, 3, 4)

# Test all? method

list_test.all? {|e| e < 5} # => true