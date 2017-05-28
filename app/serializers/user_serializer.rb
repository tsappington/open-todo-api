class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at, :updated_at

  # Delegate the practical definition of `full_name` to
  # the User model, where it belongs, rather than
  # (re)defining it here.
  # def name
  #   object.name
  # end

  def created_at
    object.created_at.strftime('%B %d, %Y %H:%M:%S')
  end

  def updated_at
    object.updated_at.strftime('%B %d, %Y %H:%M:%S')
  end


end
