class IndexPostSerializer < ActiveModel::Serializer
  attributes :id, :link, :vote, :url, :comments

  def comments
  	comments = object.comments.to_a
  	{count: comments.length}
  end

  def url
  	post_url(object)
  end

end
