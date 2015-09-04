class PostSerializer < ActiveModel::Serializer
  attributes  :link, :vote, :url

  has_many :comments

  def url
  	post_url(object)
  end


end

