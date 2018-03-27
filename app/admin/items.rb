ActiveAdmin.register Item do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :image, category_ids: []
# The Item model connects to the categories related through the array of IDs

form do |f|
  f.inputs do
    f.input :title
    f.input :description
    f.input :image
    f.input :categories, as: :check_boxes, collection: Category.order("title asc")
  end

  f.actions
end

end
