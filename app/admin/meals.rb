ActiveAdmin.register Meal do
  index do
    column :id
    column :name
    column :price
    column :canteen
    default_actions
  end
  form do |f|
      f.inputs "Formular" do
        f.input :canteen
        f.input :name
        f.input :price
        f.input :impression_positive
        f.input :impression_negative
        f.input :photo
      end
      f.buttons
    end
end
