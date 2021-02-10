module Api::V1
  class ExchangeSerializer < ::ActiveModel::Serializer
    attributes :options
    def options
      options = []
      object.rates.each do |key, value|
        h = {}
        h["label"] = key
        h["value"] = value
        options << h
      end
      options
    end
  end
end