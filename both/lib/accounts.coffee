mySubmitFunc = (error, state) ->
  # console.warn error, state
  if !error
    if state == 'signIn'
      FlowRouter.go('/profile')
    if state == 'signUp'
      FlowRouter.go('/profile')

AccountsTemplates.configure
  defaultLayout: 'MasterLayout'
  defaultLayoutRegions:
    main: 'Login'
  defaultContentRegion: 'main'
  # Behaviour
  confirmPassword: true
  enablePasswordChange: true
  forbidClientAccountCreation: false
  overrideLoginErrors: true
  sendVerificationEmail: false
  lowercaseUsername: true

  # Appearance
  showAddRemoveServices: false
  showForgotPasswordLink: true
  showLabels: false
  showPlaceholders: true

  # Client-side Validation
  continuousValidation: false
  negativeFeedback: false
  negativeValidation: true
  positiveValidation: true
  positiveFeedback: true
  showValidating: true

  hideSignInLink: true
  hideSignUpLink: true
  
  onSubmitHook: mySubmitFunc

  texts:
    button:
      signUp: "Register"
      changePwd: "Change password"
      signIn: "Login"
      # enrollAccount: "Enroll Text",
      # forgotPwd: "Forgot Pwd Text",
      # resetPwd: "Reset Pwd Text",

    title:
      forgotPwd: ""
      changePwd: ""
      enrollAccount: ""
      forgotPwd: ""
      resetPwd: ""
      signUp: "Join the movement"
      signIn: "Login"
  

AccountsTemplates.configureRoute 'signUp',
    name: 'signup'
    path: '/signup'
    template: 'Signup'

AccountsTemplates.configureRoute 'signIn',
    name: 'signin'
    path: '/signin'
    template: 'Login'

AccountsTemplates.configureRoute 'forgotPwd',
    name: 'forgotPassword'
    path: '/forgot-password'
    template: 'ForgotPassword'

AccountsTemplates.configureRoute 'resetPwd',
    name: 'resetPwd'
    path: '/reset-password'
    template: 'ResetPassword'

AccountsTemplates.addField
  _id: 'displayname',
  type: 'text'
  displayName: 'Display name'
  minLength: 3
  maxLength: 20
  required: true

# AccountsTemplates.addField
#     _id: 'invitationId'
#     type: 'hidden'
#     required: true

# AccountsTemplates.addField
#     _id: 'invitedBy'
#     type: 'hidden'
#     required: true

AccountsTemplates.addField
    _id: "type"
    type: "select"
    displayName: "Type of participation"
    select: [
        {
            text: "Core"
            value: "core"
        }
        {
            text: "Transition"
            value: "transition"
        }
        {
            text: "Support"
            value: "support"
        }
        {
            text: "Guest"
            value: "guest"
        }
    ]