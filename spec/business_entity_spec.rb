$LOAD_PATH << File.dirname(__FILE__) + "/../lib"

require 'spec'
require 'abn'
require 'api/api'

describe BusinessEntity do
  it "should instantiate with a valid ABN string" do
    api = BusinessEntity.new("12042168743")
  end
  
  it "should instantiate with a valid ABN class" do
    api = BusinessEntity.new(ABN.new("12042168743"))
  end  
end
