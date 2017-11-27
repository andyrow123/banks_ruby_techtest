class Transaction
  attr_reader :date, :type

  def initialize(type)
    @date = Date.new
    @type = type
  end
end