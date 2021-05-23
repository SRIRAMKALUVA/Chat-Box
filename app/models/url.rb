class Url < ApplicationRecord
  validates :long_url, presence: true, length: { minimum: 20}
  before_create :generate_short_url, :sanitize

  def generate_short_url
    str = "www.srklink/"
    str = str + rand(36**8).to_s(36)
  end
  def sanitize
    long_url.strip!
    sanitize_url = self.long_url.downcase.gsub(/(https?:\/\/)|(www\.)/,"")
    "http://#{sanitize_url}"
  end
end
