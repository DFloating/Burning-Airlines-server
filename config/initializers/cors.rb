ails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins '*' # update to explicit url if deploying
        resource '*',
            :headers => :any,
            :methods => %i( get post put patch delete options head )
    end
end