class Credit < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  
  def has_current_user
    
  end
end
