class Comment < ApplicationRecord
  belongs_to :article
  broadcasts_to :article

  validates_presence_of :name


end
