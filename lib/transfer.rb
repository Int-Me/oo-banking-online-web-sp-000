class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount = 1000)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
end
