class Update < ActiveRecord::Base
  enum status: {
    unverified: 'unverified',
    accepted:   'accepted',
    rejected:   'rejected',
  }
  belongs_to :updatable, polymorphic: true

  def resolve!
    if status == 'accepted'
      updatable.update_attributes(field => newvalue)
    end
  end
end