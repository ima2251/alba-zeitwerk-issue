class CommentParentResource < CommentResource
  def attributes
    allow_list = [
      :id,
    ]
    super.select { |key, _| allow_list.include?(key.to_sym) }
  end
end
