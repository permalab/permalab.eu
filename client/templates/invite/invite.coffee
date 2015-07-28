Template.Invite.events
    'submit #inviteUser': (e,tmpl) ->
        e.preventDefault()
        errorMessage = $(tmpl.find('.js-error-message'))
        email = tmpl.find('.js-user-email').value
        return errorMessage.html 'Please enter a valid E-mail address' if email.length < 1
        Meteor.call 'invite', email, (err, res) ->
            console.log err, res
            return errorMessage.html err.reason if err
            errorMessage.html "User has been invited."