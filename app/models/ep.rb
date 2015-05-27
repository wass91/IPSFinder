class Ep < ActiveRecord::Base
    has_and_belongs_to_many :ips
    accepts_nested_attributes_for :ips
    
    def self.options_for_select
      order('LOWER(nombre)').map { |e| [e.nombre, e.id] }
    end
    
    def to_label
        "#{nombre}"
    end
    
end
