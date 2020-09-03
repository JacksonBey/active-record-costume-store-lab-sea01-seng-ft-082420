# Create your haunted_houses migration here

# !!! Before you run rake db:migrate, remember to fill out the other migration files 
# -- otherwise you'll get an error resulting from the blank migration files.
class CreateHauntedHouses < ActiveRecord::Migration[5.2]

    # ActiveRecord::Base.establish_connection(
    #     :adapter => "sqlite3",
    #     :database => "db/haunted_houses.sqlite"
    #   )

#     sql = <<-SQL
#   CREATE TABLE IF NOT EXISTS haunted_houses (
#   id INTEGER PRIMARY KEY,
#   name TEXT
#   )
# SQL
 
# ActiveRecord::Base.connection.execute(sql)

#     def up
#     end

#     def down
#     end

    def change
        create_table :haunted_houses do |t|
            t.string :name
            t.string :location
            t.string :theme
            t.float :price
            t.boolean :family_friendly
            t.datetime :opening_date
            t.datetime :closing_date
            t.string :description
        end
    end

end