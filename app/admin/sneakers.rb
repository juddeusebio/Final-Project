ActiveAdmin.register Sneaker do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :nickname, :size, :model, :brand_id, :condition, :quantity, :price,
              :for_sale, :release_date, :image , :category_id


form do |f|
  f.inputs do
    f.input :nickname
    f.input :size
    f.input :model
    f.input :brand
    f.input :condition
    f.input :quantity
    f.input :price
    f.input :for_sale
    f.input :release_date
    f.input :image
    f.input :category
  end
  f.actions
end

end
