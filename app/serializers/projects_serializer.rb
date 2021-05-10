class ProjectsSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_at
end
