#crear de forma dinamica metodos
class Category < ActiveRecord::Base
  uniq.map{|c| c.name}.each do |v| 
    self.class.class_eval do
      define_method v.downcase do 
        find_by_name(v)
      end
    end
  end
  has_many :products
end