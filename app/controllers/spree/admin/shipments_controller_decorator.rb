Spree::Admin::ShipmentsController.class_eval do
  respond_to :pdf

  def edit
    shipment.special_instructions = order.special_instructions
    respond_with(shipment) do |format|
      format.pdf do
        template = params[:template] || "invoice"
        render :layout => false , :template => "spree/admin/shipments/#{template}.pdf.prawn"
      end
    end
  end
end
