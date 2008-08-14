class BusinessEntity
  attr_accessor :abn
  
  def initialize(abn)
    self.abn = abn
  end
  
  def name
    
  end

  private
  def obj
    @fetched_data ||= begin
      
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
