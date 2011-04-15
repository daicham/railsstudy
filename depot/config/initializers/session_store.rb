# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_depot_session',
  :secret      => 'd0d36ff7e31569b46ebf115c3db2ac5f34ced4bb11e5950e75c8fb4c9af967c2a57557e2a12db7cf9825e320d5821a6e8d0d6ab4ce45583e6ad0c2221c51ed6e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
