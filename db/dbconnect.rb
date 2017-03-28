require "pg"

class DB
  def initialize(ip, port, dbname, dbuser, passwd)
    @connection = PG::Connection.new(ip, port, nil, nil, dbname, dbuser, passwd)
  end

  def selectData(instruction)
    fieldsStr = instruction.fields != nil ? getFields(instruction.fields) : " * "
    whereStr  = (params != nil && params.keys.length > 0) ? "WHERE ".concat(params.keys[0]).concat("=").concat(params[params.keys[0]]) : ""

    puts whereStr
    #andStr = getWhere(params)

    #params.each do |(i, k)|
    #  puts "#{i}: #{k}"
    #end


    #whereStr  = (params != nil && params.length > 0) ? "WHERE ".concat(params[0]).concat("=").concat(values[0]) : ""
    #andStr    = (params != nil && params.length > 1) ? getParamsAnd(params, values)  : ""

    #sql = "SELECT #{fieldsStr} FROM #{table} #{whereStr} #{andStr}"

    #return @connection.exec(sql)
  end

  def getParamsAnd(params, values)
    andStr = ""

    for param, val in [params, values]
      andStr.concat(param.concat("=").concat(val))
    end

    return andStr
  end

  def getFields(fields)
    ret = ""

    for field in fields
        ret.concat(",") if ret.length > 0
        ret.concat(field.name)
    end

    return ret
  end

  def getWhere(params)
    ret = ""

    param.each do |(i, k)|

    end
  end

  def close
    @connection.close if @connection
  end
end
