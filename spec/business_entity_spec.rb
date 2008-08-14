$LOAD_PATH << File.dirname(__FILE__) + "/../lib"

require 'spec'
require 'abn'
require 'api/api'

BusinessEntity = ABN::BusinessEntity
abn = ABN.new("12042168743")

describe BusinessEntity do
  it "should instantiate with a valid ABN string" do
    BusinessEntity.new("12042168743")
  end
  
  it "should instantiate with a valid ABN class" do
    BusinessEntity.new(abn)
  end
  
  it "should have correct business name" do
    biz = BusinessEntity.new(abn)
    biz.name.should eql("The Trustee FOR RAINBOW BOOK AGENCIES TRUST")
  end
  
  it "should have correct business entity type" do
    biz = BusinessEntity.new(abn)
    biz.type.should eql("Discretionary Trading Trust")
  end
  
  it "should have correct ABN #" do
    biz = BusinessEntity.new(abn)
    ABN.new(biz.abn).to_s.should eql(abn.to_s)
  end
  
  it "should have correct ASIC #" do
    biz = BusinessEntity.new(abn)
    biz.asic.should eql("")
  end
  
  it "should have correct state" do
    biz = BusinessEntity.new(abn)
    biz.state.should eql("VIC")
  end
end

# type; 
# abn; 
# asic; 
# state;