class CommentResource
  include Alba::Resource
  root_key!

  attributes :id, :body

  one :parent, resource: CommentParentResource
end
