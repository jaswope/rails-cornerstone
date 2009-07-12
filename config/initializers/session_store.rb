# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails-cornerstone_session',
  :secret      => 'b679d8ca30b13dd8bbc67642ede88ee8b544a6d68e816e4fac6cca1d46a20539f0cb43809cad7ece119263712a41f51c54a7f062db1a3f9fe9384cea9f831a84'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
