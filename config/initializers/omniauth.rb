# Rails.applicaiton.middleware.use Omniauth::Builder do
#   if Rails.env.development? || Rails.env.test?
#     provider :github, "3da5132e7747599fa438", "7b7d7416e4cbfe2e8774301403ab65d1b1d3838e"
#   else  
#     provider :github 
#     Rails.application.credentials.github[:client_id]
#     Rails.applicaiton.credentials.github[:client_secret]
#   end 
# end
Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "3da5132e7747599fa438", "7b7d7416e4cbfe2e8774301403ab65d1b1d3838e"
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end