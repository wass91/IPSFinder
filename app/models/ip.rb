class Ip < ActiveRecord::Base
    has_and_belongs_to_many :eps, join_table: "eps_ips"
    has_and_belongs_to_many :servicios, join_table: "servicios_ips"
    accepts_nested_attributes_for :eps, :servicios
    filterrific(
      default_filter_params: { sorted_by: 'created_at_desc' },
      available_filters: [
      :sorted_by,
      :eps_x,
      :search_query
        ]
     )
   

    scope :sorted_by, lambda { |sort_option|
      direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
      case sort_option.to_s
      when /^created_at_/
        order("ips.created_at #{ direction }")
      else
        raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
      end
    }
  scope :search_query, lambda { |query|
    where("id LIKE ?", "%#{query}%")
  }

 scope :eps_x , lambda { |ep| joins(:eps).where("eps.id = ?", ep) }    

 def self.options_for_sorted_by
    [
     
      ['Registration date (newest first)', 'created_at_desc'],
      ['Registration date (oldest first)', 'created_at_asc'],
     ]
  end
    def to_label
        "#{nombre}"
    end
    
end
