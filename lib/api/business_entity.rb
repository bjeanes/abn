class BusinessEntity
  attr_accessor :abn
  
  def initialize(abn)
    self.abn = abn
  end
  
  def abn=(abn)
    abn = abn.is_a?(String) ? abn : ABN.new(abn)
    @abn = abn if abn.valid?
  end
end