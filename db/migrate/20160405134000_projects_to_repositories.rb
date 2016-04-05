class ProjectsToRepositories < ActiveRecord::Migration
  create_table :projects_repositories, id: false do |t|
    t.integer :project_id, :integer
    t.integer :repository_id, :integer
  end

  add_index :projects_repositories, [ :project_id, :repository_id ], unique: true, name: :projects_repos_index
end
