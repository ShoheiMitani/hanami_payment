Hanami::Model.migration do
  change do
    create_table :items do
      primary_key :id

      column :title,  String, null: false
      column :price,  Integer, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
