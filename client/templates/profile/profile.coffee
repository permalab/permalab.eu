uploadPicture = (newFile) ->
    # remove images before uploading new one
    image = Images.findOne({'metadata.owner': Meteor.userId()},{sort: uploadedAt: -1})
    image.remove() if image
    newFile.metadata =
        owner: Meteor.userId()
    Images.insert newFile, (err, fileObj) ->
        if err
        else

Template.Profile.helpers
    checkCheckbox: (check) ->
        user = Meteor.user()
        return 'checked' if user.profile.status?[check]
        return ''

Template.Profile.events
    'change .js-profilePictureInput': (e, template) ->
        e.preventDefault()
        newFile = new FS.File(e.target.files[0])
        uploadPicture(newFile)

    'submit #editProfile': (e,tmpl) ->
        e.preventDefault()
        
        errorMessage = $(tmpl.find('.js-error-message'))

        title = $('#displayName').val()
        image = Images.findOne({'metadata.owner': Meteor.userId()},{sort: uploadedAt: -1})
        return errorMessage.html "Please upload an image to submit your profile" unless image

        Users.update Meteor.userId(), $set:
            'profile.displayname': title
            'profile.status.scenarioDesign': $('#scenarioDesign').is(':checked')
            'profile.status.eventDesign': $('#eventDesign').is(':checked')
            'profile.status.softArchitecture': $('#softArchitecture').is(':checked')
            'profile.status.permacultureDesign': $('#permacultureDesign').is(':checked')
            'profile.status.solarEcoLowTec': $('#solarEcoLowTec').is(':checked')
            'profile.status.education': $('#education').is(':checked')
            'profile.status.facilitation': $('#facilitation').is(':checked')


        FlowRouter.go '/'