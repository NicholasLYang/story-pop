class Resolvers::CreateMedia < GraphQL::Function
  # arguments passed as "args"
  argument :title, !types.String
  argument :profile_id, !types.ID
  argument :content, !Types::Scalars::FileType

  # return type from the mutation
  type Types::MediumType

  # the mutation method
   # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, ctx)
    Story.create(
      title: args["title"],
      user_id: args["user_id"],
      content: args["content"]
    )
  end
end
