class Person < ApplicationRecord
  # name :string,
  # phone :string,
  # user_id :integer,
  # gender :string,

  belongs_to :user
end
