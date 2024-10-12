# == Schema Information
#
# Table name: reactions
#
#  id         :bigint           not null, primary key
#  post_id    :bigint           not null
#  user_id    :bigint           not null
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Reaction < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true # Permitir reacciones anónimas

  validates :kind, inclusion: { in: %w[like dislike], message: "%{value} no es una reacción válida" }
end
