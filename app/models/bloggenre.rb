class Bloggenre < ApplicationRecord

  has_many :Blogpost

  validates :name, presence: {message: 'は、必須項目です。'}
end
