if Spree::PrintInvoice::Config[:shipment_level_invoice]
  virtual_path = "spree/admin/shipments/edit"
  locator = "[data-hook='admin_shipment_edit_buttons']"
else
  virtual_path = "spree/admin/orders/edit"
  locator = "[data-hook='admin_order_edit_buttons'], #admin_order_edit_buttons[data-hook]"
end
Deface::Override.new(:virtual_path => virtual_path,
                     :name => "print_shipment_buttons_edit",
                     :insert_bottom => locator,
                     :partial => "spree/admin/orders/print_buttons",
                     :disabled => false)

