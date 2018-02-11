Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :storyByID do
    type Types::StoryType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { Story.find(args["id"]) }
  end
end
