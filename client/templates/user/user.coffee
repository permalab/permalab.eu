Template.User.events
   'change .myFileInput': (event, template) ->
      FS.Utility.eachFile event, (file) ->
        Images.insert file, (err, fileObj) ->
          if err
            # handle error
          else
            userId = Meteor.userId()
            imagesURL =
              'profile.image': '/cfs/files/images/' + fileObj._id
            console.log imagesURL
            # Meteor.users.update(userId, {$set: imagesURL})
