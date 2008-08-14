$LOAD_PATH << File.dirname(__FILE__) + "/../lib"

require 'spec'
require 'abn'
require 'api/api'

describe BusinessEntity do
  it "should instantiate with a valid ABN string" do
    BusinessEntity.new("12042168743")
  end
  
  it "should instantiate with a valid ABN class" do
    BusinessEntity.new(ABN.new("12042168743"))
  end
  
  it "should have correct business name" do
    be = BusinessEntity.new(ABN.new("12042168743"))
    be.name.should eql("The Trustee FOR RAINBOW BOOK AGENCIES TRUST")
  end
end
