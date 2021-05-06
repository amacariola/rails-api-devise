# README

This is a Rails API using devise and jwt-devise and can be used a barebone template for expansion for your 
Rails API that youre building.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

Routes

         Prefix             Verb          URI                                 Pattern                                                                        Controller#Action
       api_user             GET           /api/users/:id(.:format)        api/users#show {:format=>:json}
   new_user_session         GET           /api/login(.:format)            sessions#new {:format=>:json}
   user_session             POST          /api/login(.:format)            sessions#create {:format=>:json}
 destroy_user_session      DELETE         /api/logout(.:format)           sessions#destroy {:format=>:json}
 cancel_user_registration   GET       /api/signup/cancel(.:format)        registrations#cancel {:format=>:json}
  new_user_registration     GET       /api/signup/sign_up(.:format)       registrations#new {:format=>:json}
  edit_user_registration    GET       /api/signup/edit(.:format)          registrations#edit {:format=>:json}
  user_registration        PATCH      /api/signup(.:format)               registrations#update {:format=>:json}
                            PUT         /api/signup(.:format)             registrations#update {:format=>:json}
                           DELETE       /api/signup(.:format)             registrations#destroy {:format=>:json}
                            POST        /api/signup(.:format)             registrations#create {:format=>:json}

