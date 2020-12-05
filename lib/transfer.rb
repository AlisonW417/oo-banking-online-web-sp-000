class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount, :account
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
  
  def account=(account)
    @account = account 
  end 
  
  
  def valid?
    true if @sender.account.valid? && @receiver.account.valid?
  end 
end
