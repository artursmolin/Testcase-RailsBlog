class NewsTag < ApplicationRecord
  belongs_to :news
  belongs_to :tag
end
