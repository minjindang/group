class Group < ActiveRecord::Base
    validates :title, presence: {message: '此欄位不可空白'}
    has_many :posts, dependent: :destroy
    has_many :group_users
    has_many :members, through: :group_users, source: :user
    
    belongs_to :owner, class_name: "User", foreign_key: :user_id
    
    def editable_by?(user)
        user && user == owner
    end
end
