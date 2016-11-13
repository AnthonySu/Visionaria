class Profile < ActiveRecord::Base
    belongs_to :user
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
    
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    
    def check_params
        if self.info.blank?
            self.info = "Click on text to edit user info."
        end
        if self.motivations.blank?
            self.motivations = "Click on text to edit user motivations."
        end
        if self.priorities.blank?
            self.priorities = "Click on text to edit user priorities."
        end
    end
end
