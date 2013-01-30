Spree::Order.class_eval do
  Spree::Order.state_machine.after_transition :to => :address, :do => :print_something

  def print_something
    puts "------------- search me into the rails log ------------"
  end
end
