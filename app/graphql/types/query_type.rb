Types::QueryType = GraphQL::ObjectType.define do
  name "Query"


  field :allStories, !types[Types::StoryType] do
    description "Get all stories"
    resolve ->(obj, args, ctx) {
      Story.all
    }
  end
end
