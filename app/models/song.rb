class Song < ActiveRecord::Base


    validates :title, presence: true, uniqueness: true
    validates :released, inclusion: { in: [true, false] }
    validates :release_year, presence: true, numericality: {less_than: Time.now.year}, if: :released?
    validates :artist_name, presence: true
    validates :genre, presence: true 


    # validate :release_year_check
    #
    # def release_year_check
    #
    #
    #   if self.released && self.release_year
    #     if self.release_year > Time.now.year
    #       error.add(:release_year, "Invalid year")
    #     end
    #
    #   end
    # end











end
