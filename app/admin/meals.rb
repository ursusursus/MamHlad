ActiveAdmin.register Meal do
  form do |f|
      f.inputs "Formular" do
        f.input :canteen_id
        f.input :name
        f.input :price
        f.input :impression_positive
        f.input :impression_neutral
        f.input :impression_negative
        f.input :photo
      end
      f.buttons
    end
end
