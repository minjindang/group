class Post < ActiveRecord::Base
    validates :content, presence: {message: '此欄位不可空白'}
    belongs_to :group
end
