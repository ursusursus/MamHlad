ActiveAdmin.register Canteen do

	form do |f|
      f.inputs "Formular" do
        f.input :name_full
        f.input :name_short
        f.input :photo
      end
      f.buttons
    end
  
end
