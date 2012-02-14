class ExerciseSession
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  
  
  belongs_to :exercise
  belongs_to :user
  
  field :reps, :type => Integer
  
  validates :user_id, :exercise_id, :presence => true
  validates :reps, :numericality => true
  
  
end
