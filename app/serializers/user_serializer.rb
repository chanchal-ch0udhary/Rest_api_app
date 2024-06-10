class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :details

  def details
    "UserId:#{object.id} and UserName: #{object.username}"
  end
end
