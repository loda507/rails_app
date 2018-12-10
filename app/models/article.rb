class Article < ApplicationRecord
    has_many :comments,
    dependent: :destroy
    validates :title, presence: true, length: {minimum:3, maximum:50}
    # validates :title, presence: true,
                    # length: { minimum: 5 }
end