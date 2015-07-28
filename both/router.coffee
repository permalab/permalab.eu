# Not Found
FlowRouter.notfound =
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'NotFound'})

# Home
FlowRouter.route '/',
    name: 'home'
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Intention'})

# Profile
FlowRouter.route '/profile',
    name: 'profile'
    middlewares: [AccountsTemplates.ensureSignedIn]
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Profile'})

# Profile detail
FlowRouter.route '/profile/:id',
    name: 'profileDetail'
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'ProfileDetail'})

# Invite
FlowRouter.route '/invite',
    name: 'invite'
    middlewares: [AccountsTemplates.ensureSignedIn]
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Invite'})

# checkInvitation = (path, next) ->
#     current = FlowRouter.current()
#     console.log current.params
#     next()

# Invite
FlowRouter.route '/invitation',
    name: 'invitation'
    # middlewares: [checkInvitation]
    subscriptions: (params, queryParams) ->
        @register('invitation', Meteor.subscribe('invitation', queryParams.invitationId))
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Invitation'})

# Logout
FlowRouter.route '/logout',
    name: 'logout'
    action: (params) ->
        Meteor.logout()
        FlowRouter.go('/')

FlowRouter.route '/collective',
    name: 'collective'
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Collective'})

FlowRouter.route '/manifest',
    name: 'manifest'
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Manifest'})

# FlowRouter.route '/intention',
#     action: (params) ->
#         FlowLayout.render('MasterLayout', { main:'Intention'})



# FlowRouter.route '/service',
#     action: (params) ->
#         FlowLayout.render('MasterLayout', { main:'Service'})

# FlowRouter.route '/solutions',
#     action: (params) ->
#         FlowLayout.render('MasterLayout', { main:'Solutions'})

# FlowRouter.route '/user',
#     action: (params) ->
#         FlowLayout.render('MasterLayout', { main:'User'})
