class Ep < ActiveRecord::Base
    has_and_belongs_to_many :ips
    accepts_nested_attributes_for :ips
    
    def to_label
        "#{nombre}"
    end
    
end
