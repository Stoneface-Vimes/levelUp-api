class Quest < ApplicationRecord

  has_many: :items

  VALIDATABLE_ATTRS = Quest.attribute_names - %w(id created_at modified_at)
  validates: VALIDATABLE_ATTRS, presence: true
  

end
