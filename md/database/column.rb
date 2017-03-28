class Column
  attr_accessor :name, :value, :type

  def initialize(name, value = nil, type = nil)
    self.name = name
    self.value = value
    self.type = type
  end
end
