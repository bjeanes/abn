class BusinessEntity
  def initialize(abn)
    @abn = abn.is_a?(String) ? abn : ABN.new(abn)
  end
end