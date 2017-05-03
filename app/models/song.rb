class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :release_year, uniqueness: true
  # validate  :release_check
  validates :genre, presence: true
  validates_presence_of :release_year, :if => :released?
  validates_numericality_of :release_year, less_than: 2018, :if => :released?





  # def release_check
  # # self.released == true && self.release_year != nil
  #   # validate :release_year, presence: true
  #   if self.released == true
  #     validate :release_year, presence: true
  #   end
  #
  # end

  def released?
    released == true
  end




end
# self.released == false ||
