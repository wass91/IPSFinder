class Servicio < ActiveRecord::Base
    has_and_belongs_to_many :ips, join_table: "servicios_ips"
    accepts_nested_attributes_for :ips
    
    def to_label
        "#{nombre}"
    end
end
