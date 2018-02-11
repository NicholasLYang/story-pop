class Resolvers::CreateStory < GraphQL::Function
  # arguments passed as "args"
  argument :title, !types.String
  argument :user_id, !types.ID

  # return type from the mutation
  type Types::StoryType

  # the mutation method
   # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, ctx)
    Story.create(title: args["title"], user_id: args["user_id"])
  end
end
