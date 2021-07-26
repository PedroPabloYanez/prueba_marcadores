class Type < ApplicationRecord
  has_many :markers, dependent: :destroy

  def self.marker_type
    types = Type.all
    result = {}
    types.each do |type|
      result[type.name] = type.markers.count
    end
    result
  end

end
