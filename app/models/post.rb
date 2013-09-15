class Post < ActiveRecord::Base
  validates_presence_of :name, :raw_content
  before_validation     :prepare_content

  private

  def prepare_content
    html         = self.raw_content
    self.content = Sanitize.clean(html, Sanitize::Config::BASIC)
  end
end
