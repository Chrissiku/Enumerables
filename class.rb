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

# Test any? method

list_test.any? {|e| e == 2} # => true
list_test.any? {|e| e == 5} # => false