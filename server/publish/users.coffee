Meteor.publish null, () ->
    [
        Images.find()
        Users.find({},{fields: 'profile': 1, 'type': 1})
    ]