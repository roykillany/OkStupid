class Profile < ActiveRecord::Base
  validates :user_id, presence: true, uniqueness: true

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )
end
