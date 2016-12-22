if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_DlubTYiUzQDuL1j9vFzxzrFL',
    :secret_key => 'sk_test_Um9lbh00MmQTbbYNMb444RWm'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
