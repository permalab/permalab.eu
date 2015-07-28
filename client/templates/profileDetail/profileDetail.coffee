Template.ProfileDetail.helpers
    user: (type) ->
        Users.findOne(FlowRouter.getParam('id'))