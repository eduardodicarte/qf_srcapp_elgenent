require_relative 'md/database/enumeration'

class Column
  def initialize(name, value = nil, type = nil)
    @name = name
    @value = value
    @type = type
  end
end
