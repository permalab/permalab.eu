Template.Users.helpers
    users: (type) ->
        Users.find({'profile.type':type},{ sort: 'profile.displayname': 1})
    checkUsers: (type) ->
        Users.find({'profile.type':type}).count()

# Template.UserListElement.helpers
#     accepted: () ->
#         console.log @
#         return 'img-thumbnail' if @profile.accepted