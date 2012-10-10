class Note < ActiveRecord::Base
  attr_accessible :content, :title

  def self.search(name)
    notes = Note.all(:conditions => ['lower(title) LIKE ?', "%#{name}%"])
  end
end
