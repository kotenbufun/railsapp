class Blogpost < ApplicationRecord
  belongs_to :bloggenre

  validates :title, :content, presence: {message:'は、必要項目です。'}


end
