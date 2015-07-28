Template.Invitation.helpers
    hasInvitation: () ->
        invitation = UserInvitations.findOne()
        return true if invitation