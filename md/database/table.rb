class Table
  attr_accessor :name
  attr_accessor :columns

  def initialize(name, columns = nil)
    self.name = name
    self.columns = columns
  end
end
