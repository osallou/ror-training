class Note < ActiveRecord::Base
  attr_accessible :content, :user

  def self.search(name)
    notes = Note.all(:conditions => ['lower(user) LIKE ?', "%#{name}%"])
  end
end
