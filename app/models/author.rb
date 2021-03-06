class Author < ActiveRecord::Base
  has_and_belongs_to_many :ruby_gems

  def releases
    @releases ||= ruby_gems.map { |rg| rg.releases }.flatten
  end
end
