class Comment < ApplicationRecord
  belongs_to :article, inverse_of: :articles
end