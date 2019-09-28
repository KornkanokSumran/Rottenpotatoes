

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, "2426355634152300", "c3ea1af180d5b0065aa700bf1f1beeb0",
    scope: 'public_profile', info_fields: 'id,name,link'
end