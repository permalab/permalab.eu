Meteor.methods "invite": (email) ->
    check email, String
    throw new Meteor.Error(403,"User not logged in") unless @userId

    userExists = Users.findOne('emails.0.address':email)
    throw new Meteor.Error(403,"User has already been invited") if userExists

    userExists = UserInvitations.findOne('email':email)
    throw new Meteor.Error(403,"User has already been invited") if userExists

    invitationData = 
        email: email
        invitationId: Random.hexString(20).toLowerCase()
        invitedBy: @userId
        used: false

    UserInvitations.insert invitationData

    invitationData.inviteLink = Meteor.absoluteUrl("invitation/?invitationId=#{invitationData.invitationId}&invitedBy=#{@userId}")
    invitationData.invitedByUser = Users.findOne(@userId)

    html = Handlebars.templates['InviteEmail'](invitationData)

    Email.send
        to: email
        from: 'we@permalab.eu'
        subject: 'Permalab invitation'
        html: html
    