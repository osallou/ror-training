class Note < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  scope :recent, order("created_at desc")

  belongs_to :user

  validates_presence_of :title
  validates_length_of :title, :minimum => 10, :too_short => "please enter a singnificative title (>=10 characters)"

  def self.search(name)
    notes = Note.all(:conditions => ['lower(title) LIKE ? OR lower(content) LIKE ?', "%#{name}%", "%#{name}%"])
  end
end

WillPaginate.per_page = 3
