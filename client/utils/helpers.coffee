UI.registerHelper 'getAvatar', (user) ->
  Images.findOne({'metadata.owner': user._id},{sort: uploadedAt: -1})