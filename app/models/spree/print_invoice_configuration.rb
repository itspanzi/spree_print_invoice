module Spree
  class PrintInvoiceConfiguration < Preferences::Configuration
    preference :print_invoice_logo_path, :string, :default => Spree::Config[:admin_interface_logo]
    preference :shipment_level_invoice, :boolean, :default => false
  end
end
