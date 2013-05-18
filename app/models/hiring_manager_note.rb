class HiringManagerNote < ActiveRecord::Base
  belongs_to :note
  belongs_to :hiring_manager
end
