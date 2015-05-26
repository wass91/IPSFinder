class Ip < ActiveRecord::Base
    has_and_belongs_to_many :eps, join_table: "eps_ips"
    accepts_nested_attributes_for :eps
    
    def to_label
        "#{nombre}"
    end
end
