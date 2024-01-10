class Video < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_one_attached :uploaded, dependent: :destroy

end
