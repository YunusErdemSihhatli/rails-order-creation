class Order < ApplicationRecord

  enum currency: { try: 1, usd: 2, euro: 3 }

  belongs_to :order_category

  validates_presence_of :currency, :customer_name, :amount, :order_category
  validate :validate_amount, :validate_customer_name

  def apply_discount(discount)
    unless discount.blank?
      update!(amount: amount - discount.to_f)
    end
  end

  private

  def validate_amount
    if !amount.blank? and amount <= 0
      errors.add(:amount, 'Amount must be greater than zero!')
    end
  end

  def validate_customer_name
    unless customer_name.blank?
      customer_name_array = customer_name.split(' ')
      if customer_name_array.size < 2
        errors.add(:customer_name, 'Customer name must be full name!')
      end
    end
  end

end
