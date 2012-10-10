class Note < ActiveRecord::Base
  attr_accessible :content, :title

  def self.search(name)
    notes = Note.all(:conditions => ['lower(title) LIKE ? OR lower(content) LIKE ?', "%#{name}%", "%#{name}%"])
  end
end

WillPaginate.per_page = 3
