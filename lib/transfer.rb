class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount = 1000)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if valid? && sender.balance >= @amount
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "completed"
    else
      @status = "rejected"
    end
  end

  def reverse_transfer
    if @status = "completed"
    sender.balance += @amount
    receiver.balance -= @amount
    @status = "reversed"
    end
  end
end
