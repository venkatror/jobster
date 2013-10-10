class Job < ActiveRecord::Base
  validates :title, :description, :presence => true

def self.search(search)
    if search
      where('LOWER(title) LIKE ? OR LOWER(location) LIKE ? OR LOWER(salary) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%") if search.present?
    else
      all
    end
  end
end
