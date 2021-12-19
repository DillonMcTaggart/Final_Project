class ShoppingCart
  def initialize(token:)
    @token = token
  end

  def order
    @order || = Order.find_or_create_by(token: @token) do |order|
      order.sub_total = 0
    end
  end
  def add_item(vgame_id:, quantit:1)
    vgame = Vgame.find(vgame_id)

    order_item = order.items.find_or_create_by(
      vgame_id: vgame_id
    )
    order_item.price = vgame.price
    order_item.quantity = quantity

    order_item.save
  end
end