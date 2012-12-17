ActiveAdmin.register Canteen do

	index do
		column :id
		column :name_short
		column :name_full
		default_actions
	end
	form do |f|
      f.inputs "Formular" do
        f.input :name_full
        f.input :name_short
        f.input :photo
      end
      f.buttons
    end
  
end
