class Post < ActiveRecord::Base
    validates :content, presence: {message: '此欄位不可空白'}
    belongs_to :group, counter_cache: :posts_count
    
    belongs_to :author, class_name: "User", foreign_key: :user_id
    
    def editable_by?(user)
        user && user == author
    end
end
