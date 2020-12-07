class FruitSerializer < ActiveModel::Serializer
  def extra()
    puts :name
    return "J9uaop"
  end

  type "Fruits"
  attributes :name, :extra
  attribute :extra
end
