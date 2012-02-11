class ExerciseSession
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  
  
  # belongs_to :exercise
  belongs_to :user
  
  field :reps, :type => Integer
  
  
end
