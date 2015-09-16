class Athlete < ActiveRecord::Base
  belongs_to :discipline
  has_and_belongs_to_many :events
  has_and_belongs_to_many :contests
  has_and_belongs_to_many :organizations
  has_many :performances

  # has_attached_file :avatar,
  #                   :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  #                   :url => "/system/:attachment/:id/:style/:filename",
  #                   :default_url => Proc.new { ActionController::Base.helpers.asset_path('missing.jpg') }

  # as_enum :gender, :female => 0, :male => 1

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :discipline, :presence => true

  # validates_attachment :avatar,
  #                      :content_type => {:content_type => ['image/jpeg', 'image/png']},
  #                      :size => {:less_than => 1.megabytes}

  # after_save :update_external_csv

  def country_iso_code
    return '' if !country || country == ''
    Country.find_country_by_name(country).alpha3
  end

  def final_score(contest)
    performances_for_contest = self.performances(:contest_id => contest.id).includes(:attempts => [:scores])

    if performances_for_contest.empty?
      return nil
    end

    performances_for_contest.max_by { |p| p.total_score || 0 }.total_score
  end

  def full_name=(name)
    name ||= ''
    self.first_name, self.last_name = name.split ' '
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.bulk_create(event, discipline_id, contest, names)
    super(event, discipline_id, contest, names) do |a|
      a.country = 'Russia'
    end
  end

  def country_city
    result = []

    if !self.country.blank?
      result.push self.country
    end

    if !self.city.blank?
      result.push self.city
    end

    result.join ', '
  end
end
