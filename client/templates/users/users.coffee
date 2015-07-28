Template.Users.helpers
    users: (type) ->
        Users.find({'profile.type':type})
    checkUsers: (type) ->
        Users.find({'profile.type':type}).count()

# Template.UserListElement.helpers
#     accepted: () ->
#         console.log @
#         return 'img-thumbnail' if @profile.accepted