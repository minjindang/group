class Group < ActiveRecord::Base
    validates :title, presence: {message: '此欄位不可空白'}
    # validates :title, presence: true
    # validates :title, presence: flase
    has_many :posts
end
