require_relative 'db/dbconnect'

ip = "192.168.43.10"
port = "5432"
dbname = "impdb"
dbuser = "imprt"
passwd = "AvdWe&sd#"

begin
  puts "Tentando connectar ".concat(ip).concat(":").concat(port)
  db = DB.new(ip, port, dbname, dbuser, passwd)

  params = Array.new
  params.push("table_schema")

  values = Array.new
  values.push("'el'")

  table = "information_schema.tables"

  fields = Array.new
  fields.push("table_name")

  tables = db.selectData(table, fields, params, values)

  db.close
rescue Exception => e
  puts e
end
