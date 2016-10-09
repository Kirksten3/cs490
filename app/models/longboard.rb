class Longboard
  include Mongoid::Document
  field :name, type: String
  field :length, type: String
  field :style, type: String
  field :manufacturer, type: String
  field :purpose, type: String
  field :is_available, type: Mongoid::Boolean
end
