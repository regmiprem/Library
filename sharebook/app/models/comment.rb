class Comment
  include Mongoid::Document
  field :comment, type: String
  field :name, type: String
  belongs_to :asset
end
