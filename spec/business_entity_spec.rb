$LOAD_PATH << File.dirname(__FILE__) + "/../lib"

require 'spec'
require 'abn'
require 'api/api'

# API Key for Bodaniel Jeanes (me:at:bjeanes:dot:com)
#   used here for *testing* purposes only
api_key = "055a1100-a84d-4064-84d7-bce46f7b80c8"

describe BusinessEntity do
  it "should connect to server" do
    api = ABRXMLSearchSoap.new
  end
  
  it "should get a result" do
    api = ABRXMLSearchSoap.new
    param = ABRSearchByABN.new("12042168743", "N", api_key)
    api.aBRSearchByABN(param)
  end
  
end
