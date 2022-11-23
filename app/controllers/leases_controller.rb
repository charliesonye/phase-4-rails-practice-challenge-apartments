class LeasesController < ApplicationController
    
    def create
        lease = Lease.create({
            rent: params[:rent],
            apartment_id: params[:apartment_id],
            tenant_id: params[:tenant_id]
        })
        render json: lease
    end

    def destroy
        lease = Lease.find(params[:id])
        lease.destroy
        head :no_content
    end
end
