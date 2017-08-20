namespace :rudy do
  task :setup do
    token = fetch(:rudy_token)

    if token
      url = "https://rudy-is-bot.herokuapp.com/capistrano/#{token}"
      payload = %i[application local_user repo_url branch stage].map { |key| [key, fetch(key)] }.to_h
      payload[:servers] = env.servers.map(&:hostname)

      webhooks = {}
      webhooks[url] = {
        before: {
          'deploy:updating': {
            payload: payload.merge(action: 'updating')
          }
        },
        after: {
          'deploy:finishing': {
            payload: payload.merge(action: 'updated')
          },
          'deploy:failed': {
            payload: payload.merge(action: 'failed')
          }
        }
      }

      set :webhooks, webhooks
    end
  end
end

before 'webhooks:deploy:setup', 'rudy:setup'
