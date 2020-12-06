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
    if @status == "pending" && @sender.balance > @amount && self.valid? 
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end 
      
      
      
    #if !@sender.valid? && @sender.status != "closed" && @receiver.status != "closed"
      ##@status = "rejected"
      #return "Transaction rejected. Please check your account balance."
    #elsif @status == "pending"
  end 
end
