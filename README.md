# Sidekiq Web

This a trivial but convenient packaging of the standalone Sidekiq web UI, as described in the [Sidekiq docs](https://github.com/mperham/sidekiq/wiki/Monitoring). It optionally allows for connecting to Sidekiq data that is namespaced in redis.

**It does not have any authentication, so assumes you're running it somewhere inaccessible to the outside world.**

## Example usage

    git clone git@github.com:bruz/sidekiq-web.git
    bundle

    export REDIS_URL=redis://localhost

    # Optional
    export SIDEKIQ_NAMESPACE=awesomeapp:sidekiq

    rackup
