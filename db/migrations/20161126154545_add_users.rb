Hanami::Model.migration do
  change do
    create_table :users do
      primary_key :id

      column :emails, String

      column :created_at, DateTime
      column :updated_at, DateTime
    end
  end
end
