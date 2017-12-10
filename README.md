# sidekiq-playground

A playground for sidekiq.

Technologies:
- Ruby
- Sidekiq

## Setup

Pull and install the sidekiq gem:

```shell
$ bundle
```

## Usage

Start the worker process:

```shell
$ bundle exec sidekiq -r ~/sidekiq-playground/worker.rb
```

Create jobs:

```shell
$ bundle exec irb -r ./worker.rb
PlayWorker.perform_in(2, "low")
PlayWorker.perform_async("low")
PlayWorker.perform_async("high")
PlayWorker.perform_async("high")
PlayWorker.perform_async("low")
PlayWorker.perform_async("low")
PlayWorker.perform_async("low")
```

We can observe that high complexity work won't block the incoming easier ones.
