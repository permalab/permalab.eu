Accounts.emailTemplates.siteName = "Permalab"
Accounts.emailTemplates.from = "Permalab <we@permalab.eu>"
Accounts.emailTemplates.resetPassword.from = () ->
    "Permalab <no-reply@permalab.eu>"

Accounts.onCreateUser (options, user) ->
    user.profile = options.profile
    return user

# Accounts.validateNewUser (user) ->
#     check(user.profile.invitationId, String)
#     invitation = UserInvitations.findOne({invitationId: user.profile.invitationId, used: false})
#     throw new Meteor.Error(403, "Please provide a valid invitation") unless invitation
#     UserInvitations.update({invitationId: user.profile.invitationId, used: false}, {$set: {used: true}})
#     return true