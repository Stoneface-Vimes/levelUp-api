class Node < ApplicationRecord

  belongs_to :quest
  has_many :posts
  VALIDATABLE_ATTRS = Quest.attribute_names - %w(id created_at updated_at date_finished)
  validates_presence_of VALIDATABLE_ATTRS

end
