class ApplicationController < ActionController::Base
  def current_order
    if current_user
      order = Order.where(user: current_user).where(state: "created").last
      if order.blank?
        order = Order.create(user: current_user, state: "created")
      end
      return order
    end

    nil
  end
end
