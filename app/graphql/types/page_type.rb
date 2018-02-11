Types::PageType = GraphQL::ObjectType.define do
  name "Page"
  field :id, !types.ID
  field :page_number, !types.Int
  field :content, !types.String
  field :media, !types[Types::MediumType]
end
