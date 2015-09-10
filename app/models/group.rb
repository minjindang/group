class Group < ActiveRecord::Base
    validates :title, presence: {message: '此欄位不可空白'}
    # validates :title, presence: true
    # validates :title, presence: flase
    has_many :posts
    
    belongs_to :users, class_name: "User", foreign_key: :user_id
    
    # def editable_by?(user)
    #     user && user == :user
    # end
end
