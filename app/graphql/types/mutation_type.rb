Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :createStory, function: Resolvers::CreateStory.new
end
