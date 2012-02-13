class WelcomeMessage
  include Mongoid::Document
  field :text, :type => String
  
  def self.for(user)
    r = self.random
    r.nil? ? "It's a good thing you're here, because now you can get really buff!" : r.text
  end
  
  def self.random
    self.skip(rand(self.count)).first
  end
  
end
