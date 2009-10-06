# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Event_session',
  :secret      => '99d8dd5bd4da1314a1b88c2a23a8ed063b56484b28e8b596d05b45377125d91d47857574cb9f0571ad9591b3cd36a010086c39db328729d92153a3f97090637d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
