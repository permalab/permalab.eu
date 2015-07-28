Meteor.publish 'invitation', (invitationId) ->
    UserInvitations.find(invitationId:invitationId)