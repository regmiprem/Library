class Review
  include Mongoid::Document
  field :name
  field :content
 embedded_in :book, :inverse_of => :reviews
end
