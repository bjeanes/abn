class BusinessEntity
  attr_accessor :abn
  
  def initialize(abn)
    self.abn = abn
  end
  
  def name
    obj.mainName.first.organisationName
  end

  private
  def obj
    @fetched_data ||= begin
      param = ABRSearchByABN.new("12042168743", "N", api_key)
      result = ABRXMLSearchSoap.new.aBRSearchByABN(param)
      result.aBRPayloadSearchResults.response.businessEntity
    end
  end
  
  def abn=(abn)
    abn = abn.is_a?(String) ? ABN.new(abn) : abn
    @abn = abn if abn.valid?

    # Don't want the ABN object to re-create the BusinessEntity
    # object if the BusinessEntity was created first...
    @abn.instance_variable_set(:@business, self)
  end
end
