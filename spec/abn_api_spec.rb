$LOAD_PATH << File.dirname(__FILE__) + "/../lib"

require 'spec'
require 'abn'
require 'api/api'

describe ABRXMLSearchSoap do
  it "should connect to server" do
    api = ABRXMLSearchSoap.new
  end

  it "should get a result" do
    api = ABRXMLSearchSoap.new
    param = ABRSearchByABN.new("12042168743", "N", api_key)
    api.aBRSearchByABN(param)
  end
  
end
