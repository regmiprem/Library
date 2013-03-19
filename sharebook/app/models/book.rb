class Book
  include Mongoid::Document
  field :name, type: String
  field :user_id, type: String
  field :status, type: Integer
  #field :_id,type:String, default: ->{ name.to_s.parameterize}
  has_many :users
  has_many :assets
  embeds_many :reviews
  accepts_nested_attributes_for :assets, allow_destroy: true
   def self.search(search)
    if search
       self.or({name: /#{Regexp.escape(search)}/i})
    else
       scoped
    end
  end
  def self.column_names
    self.fields.collect { |field| field[0] }
  end
end
