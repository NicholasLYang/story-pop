Types::MediumType = GraphQL::ObjectType.define do
  name "Medium"
  field :id, !types.ID
  field :content_url, !types.String
end
