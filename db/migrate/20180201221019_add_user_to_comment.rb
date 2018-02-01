class AddUserToComment < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :link, foreign_key: true
  end
end

#Commande d'ajout des references User et LInk pour chaque Comment
