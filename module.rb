module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    myArray = []
    list.each do |element|
      myArray.push(element) if yield(element)
    end
    p myArray.length == list.length
  end

  def any?
    myArray = []
    list.each do |element|
      myArray.push(element) if yield(element)
    end
    puts !myArray.empty?
  end

  def filter?
    myArray = []
    list.each do |element|
      myArray.push(element) if yield(element)
    end
    p myArray
  end
end
