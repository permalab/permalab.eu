trackingTrigger = (context) ->
    GAnalytics.pageview(context.path)

FlowRouter.triggers.enter([trackingTrigger])

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

FlowRouter.route '/model',
    name: 'model'
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Model'})

FlowRouter.route '/timeline',
    name: 'timeline'
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Timeline'})

FlowRouter.route '/lab',
    name: 'lab'
    action: (params) ->
        FlowLayout.render('MasterLayout', { main:'Lab'})




# FlowRouter.route '/service',
#     action: (params) ->
#         FlowLayout.render('MasterLayout', { main:'Service'})

# FlowRouter.route '/solutions',
#     action: (params) ->
#         FlowLayout.render('MasterLayout', { main:'Solutions'})

# FlowRouter.route '/user',
#     action: (params) ->
#         FlowLayout.render('MasterLayout', { main:'User'})
