class ABN::BusinessEntity
  attr_accessor :abn
  
  def initialize(abn)
    self.abn = abn
  end
  
  def name
    if obj.mainTradingName.nil?
      obj.mainName.first.organisationName
    else
      obj.mainTradingName.first.organisationName
    end
  end
  
  def type; obj.entityType.entityDescription; end
  def abn; obj.aBN.first.identifierValue; end
  def asic; obj.aSICNumber; end
  def state; obj.mainBusinessPhysicalAddress.first.stateCode; end
  def status; obj.entityStatus.first.entityStatusCode; end

  private
  def obj
    @fetched_data ||= begin
      param = ABRSearchByABN.new("12042168743", "N", api_key)
      result = ABRXMLSearchSoap.new.aBRSearchByABN(param)
      result.aBRPayloadSearchResults.response.businessEntity
    end
  end
  
  def abn=(abn)
    abn = abn.is_a?(::ABN) ? abn : ABN.new(abn)
    @abn = abn if abn.valid?

    # Don't want the ABN object to re-create the BusinessEntity
    # object if the BusinessEntity was created first...
    @abn.instance_variable_set(:@business, self)
  end
end
