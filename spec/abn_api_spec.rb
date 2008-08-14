$LOAD_PATH << File.dirname(__FILE__) + "/../lib"

require 'spec'
require 'abn'
require 'api/defaultDriver'

describe "The ABN API" do
  it "should connect to server" do
    api = ABRXMLSearchSoap.new
  end
  
  it "should get a result" do
    api = ABRXMLSearchSoap.new
    param = ABRSearchByABN.new("12042168743", "N", "055a1100-a84d-4064-84d7-bce46f7b80c8")
    api.aBRSearchByABN(param)
  end
  
end
