class TaggedPost < ActiveRecord::Base
    validates :content, :presence => true
    validates :tag, :presence => true
    validates :category, :presence => true
    
    def self.all_categories
        %w(Observation Challenge Innovation)
    end
    
    
    def self.all_un_goals
        ['No Poverty', 'Zero Hunger', 'Good Health and Well-Being', 'Quality Education', 'Gender Equality', 
        'Clean Water and Sanitation', 'Affordable and Clean Energy', 'Decent Work and Economic Growth', 
        'Industry, Innovation and Infrastructure', 'Reduced Inequalities', 'Sustainable Cities and Communities', 
        'Responsible Consumption and Production', 'Climate Action', 'Life Below Water', 'Life on Land', 
        'Peace, Justice and Strong Institutions', 'Partnerships for the Goals']
    end
end
