class ApartmentWithTenantsSerializer < ActiveModel::Serializer
  attributes :id, :number, :leases
  
  # has_many :tenants
  # has_many :leases

  def leases
   self.object.leases.map do |l|
      {
        tenant: l.tenant,
        rent: l.rent
      }
    end
  end

end
