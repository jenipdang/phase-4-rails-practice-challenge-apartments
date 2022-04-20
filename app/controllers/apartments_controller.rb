class ApartmentsController < ApplicationController

    def index
        render json: Apartment.all
    end

    def show
        find_apartment
        render json: @apartment, serializer: ApartmentWithTenantsSerializer
    end

    private

    def find_apartment
        @apartment = Apartment.find(params[:id])
    end

    def apartment_params
        params.permit(:name)
    end


end
