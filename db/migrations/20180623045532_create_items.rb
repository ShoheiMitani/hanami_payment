Hanami::Model.migration do
  change do
    create_table :items, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci' do
      primary_key :id

      column :title,  String, null: false
      column :price,  Integer, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
