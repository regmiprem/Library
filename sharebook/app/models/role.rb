class Role
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String
  field :access, type: String
  field :resources, type: Array
  validates_presence_of :name
  validates_uniqueness_of :name

end
