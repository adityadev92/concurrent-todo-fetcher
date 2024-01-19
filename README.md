## Description
This is a CLI tool by which we can fetch the even numbered TODO's from the third part API. The prgram is written in ruby laguage.

### Prerequisites
- RVM (Ruby version manager)
For installing the RVM use following command:

`\curl -sSL https://get.rvm.io | bash -s stable --ruby`

- Ruby version: ruby 3.0.0
For installing the ruby version use following command:

`rvm install ruby-3.0.0`

- On local install gem `rspec` to run the test cases.

`gem install rspec`

### Steps for running the CLI tool.
- Go to the directory `concurrent-todo-fetcher`
- On command line run the following command:

`ruby run.rb`
- When you run the command it will ask for how many data you want from the TODO's.
- If you provide a number example 4, it will return 4 even numbered records from the API response
- If you press enter without passing any number it will return 20 even numbered records bydefault from the API response
