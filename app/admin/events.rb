ActiveAdmin.register Event do

  index do
    column :user
    column :name
    column :date
    column :visited
    actions
  end

  form do |f|
    f.object.user = current_user
    f.object.date = DateTime.now.to_date
    f.inputs "Event Details" do
      f.input :user
      f.input :name
      f.input :date
      f.input :visited
    end
    f.actions
  end

  permit_params :name, :date, :visited, :user_id

end
