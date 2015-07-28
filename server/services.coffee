# Setup social provider configurations
ServiceConfiguration.configurations.upsert { service: "facebook" }, $set: 
    appId: "836453159779423"
    secret: "ace93bdb1b7abaeb66a0b96dfcee3be9"
    requestPermissions: ['user_friends']

# ServiceConfiguration.configurations.upsert { service: "google" }, $set: 
#     clientId: ""
#     secret: ""