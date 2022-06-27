class Comment < ApplicationRecord
  belongs_to :parent, class_name: "ChapterComment", optional: true
end
