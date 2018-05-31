class Person < ApplicationRecord
  # validates :name, presence: true     when there is no option
  # validates :age, numericality: true
  has_many :message
  validates :name, presence: {message: 'は、必須項目です。'}
  validates :age, numericality: {message: 'は、数字で入力してください。'}
  validates :mail, email: {message: 'はメールアドレスではありません。'}
end
