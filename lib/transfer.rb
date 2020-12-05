class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    true if @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction
    if self.status != "complete" && @sender.valid? == true 
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      self.status = "complete"
    elsif @sender.valid? == false 
      self.status = "rejected"
      puts "Transaction rejected. Please check your account balance."
    else
    end 
  end 
end
