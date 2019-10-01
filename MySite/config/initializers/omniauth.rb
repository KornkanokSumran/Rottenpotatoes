
Rails.application.config.middleware.use OmniAuth::Builder do    
    provider :facebook, "2426355634152300", "c3ea1af180d5b0065aa700bf1f1beeb0"
end

def OmniAuth.login_path(provider)
    "/auth/#{provider}"
end