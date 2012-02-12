class Exercise
  include Mongoid::Document
  
  field :name, :type => String
  has_many :exercise_sessions
  
end
