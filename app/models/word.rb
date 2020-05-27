class Word < ApplicationRecord
    validates :question, presence:true, length: { maximum: 100 }
    validates :answer, presence:true, length: { maximum: 100 }
end
