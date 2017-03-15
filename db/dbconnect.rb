require "pg"

class DB
  #def initialize(ip, port, dbname, dbuser, passwd)
    #connect(ip, port, dbname, dbuser, passwd)
  #end

  def connect(ip, port, dbname, dbuser, passwd)
    @conn = PG::Connection.new(ip, port, nil, nil, dbname, dbuser, passwd)
  end

  def close
    @conn.close if @conn
  end
end
