Types::StoryType = GraphQL::ObjectType.define do
  name "Story"
  field :id, !types.ID
  field :title, !types.String
  field :pages, !types[Types::PageType]
end
