class Contest < ActiveRecord::Base
  belongs_to :event
  belongs_to :discipline

  has_and_belongs_to_many :athletes
  has_and_belongs_to_many :event_judges

  has_many :performances, :dependent => :destroy

  validates :slug, :presence => true
  validates :discipline, :presence => true

  def full_name
    self.event.name + ': ' + self.name
  end

  def start
    self.is_started = true
    self.is_ended = false
    self.save!
  end

  def end
    self.is_ended = true
    self.save!
  end

  def is_active
    self.is_started && !self.is_ended
  end
end
