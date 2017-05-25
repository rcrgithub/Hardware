class Addkindtostore < ActiveRecord::Migration[5.0]
    def change
        add_column :stores, :kind, :string
    end
end
