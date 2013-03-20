class Contact < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name     :string, limit: 50
    birthday :date
    timestamps
  end
  attr_accessible :name, :birthday

  acts_as_list
  
  set_default_order :position

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
