class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook, :google_oauth2], 
         :authentication_keys => [:email]
  
  has_many :posts
  has_many :tagged_posts
  has_many :comments
  has_many :taggedcomments
  has_many :likes, :source => :posts
  has_one :profile, :dependent => :destroy
 
  has_attached_file :avatar, :styles => { :medium => "400x400>", :thumb => "100x100#" }, :default_url => ":style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
 
  validates_presence_of :username
  validates :username, uniqueness: true
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.username = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.name = auth.info.name
        user.avatar = auth.info.image # assuming the user model has an image
    end
  end
  
  def liked?(post)
    if post.classname == 'post'
      Like.find_by(:post_id => post.id, :user_id => self.id)
    else
      Like.find_by(:tagged_post_id => post.id, :user_id => self.id)
    end
  end

end
