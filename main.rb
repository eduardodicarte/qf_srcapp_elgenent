require_relative 'db/dbconnect'
require_relative 'md/database/enumeration'
require_relative 'md/database/instruction'

ip = "192.168.43.10"
port = "5432"
dbname = "impdb"
dbuser = "imprt"
passwd = "AvdWe&sd#"

def getTables

  instruction = Instruction.new
  instruction.type = Enumeration::InstructionType::SELECT

  table = Table.new("information_schema.tables", nil)
  instruction.from = From.new(table)

  instruction.where = Column.new("table_schema", "'el'")
  instruction.field = Column.new(Array.new("table_name"))

  return @db.selectData(instruction)
end

def getFields(table_name)
  table = "information_schema.columns"

  params = Array.new
  params.push("table_catalog")

  fields = Array.new
  fields.add("column_name")
  fields.add("data_type")
end

begin
  puts "Try connect at ".concat(ip).concat(":").concat(port)
  @db = DB.new(ip, port, dbname, dbuser, passwd)

  data = getTables

  #for table in data
    #puts table['table_name']
  #end

rescue Exception => e
  puts e
end
