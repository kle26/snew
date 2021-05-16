ActiveAdmin.register Prodotto do
  filter :marca
  filter :nome
  filter :categoria
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :marca, :nome, :categoria, :contenuto, :utilizzo, :media_voti, :user_id, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:marca, :nome, :categoria, :contenuto, :utilizzo, :media_voti, :user_id, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :marca, :nome, :categoria, :contenuto, :utilizzo, :media_voti, :user_id, :image
end
