module Api::V1
  class ExchangeController < ApplicationController

    def index
      exchange = fetch_or_init(params["date"])
      render json: exchange
    end

    def get_to_currency_value
      from_currency = params[:fromCurrency].to_f
      to_currency = params[:toCurrency].to_f
      amount = params[:amount].to_f
      result = (amount/from_currency) * to_currency
      render json: result
    end
  private

    def fetch_or_init(date)
      if Exchange.exists?(date: date)
        exchange = Exchange.where(date: params["date"]).first
      else
        req = Faraday.get('https://open.exchangerate-api.com/v6/latest')
        data = JSON.parse(req.body)
        exchange = Exchange.create({date: data["time_last_update_utc"].to_datetime, rates: data["rates"]})
      end
      exchange
    end

  end
end