class BookSerializer 
  include JSONAPI::Serializer
  attributes :id, :title, :author, :description, :image
  
end
