class HiringManagerNote < ActiveRecord::Base
  attr_accessible :note_id, :hiring_manager_id, :candidate_id
  belongs_to :note
  belongs_to :hiring_manager
  belongs_to :candidate

  validates :note, presence: :true
  validates :hiring_manager, presence: :true
  validates :candidate, presence: :true
end
