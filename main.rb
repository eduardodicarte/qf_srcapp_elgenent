require_relative 'db/dbconnect'

ip = "192.168.43.10"
port = "5432"
dbname = "impdb"
dbuser = "imprt"
passwd = "AvdWe&sd#"

begin
  puts "Tentando connectar ".concat(ip).concat(":").concat(port)
rescue Exception => e
  puts e
end
