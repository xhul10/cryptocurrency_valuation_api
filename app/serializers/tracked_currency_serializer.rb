class TrackedCurrencySerializer < ActiveModel::Serializer
  attributes :id, :expected_price, :expected_growth
  belongs_to :currency, serializer: CurrencySerializer
  has_many :valuations
end
