## Private Events (ActiveRecord::Associations)

This is a prototype of Eventbrite app. It is an exclusive platform where registered users can view list of events they can attend. They can also create or invite other members to their events.
It focuses on implementing associations using ```ActiveRecords```.

This project was completed in line with standards provided by [Microverse](https://www.microverse.org/ "The Global School for Remote Software Developers!").


### Technology:

* Ruby 2.4.0
* Rails 5.2.3
* Bootstrap
* Cucumber & Capybara (Integration tests)
* RSpec-rails (Unit test)
* FactoryBot (FactoryGirl)
* SQLite -- ``development``
* PgSQL -- ``production``


###### Database initialization
in your terminal ```rake db:migrate db:test:prepare```

###### How to run all test suite

###### cucumber tests (cuke scenarios location ``features/``)

in your terminal run 

```cucumber features```

###### rspec tests (specs location ``spec/``)

in your terminal run 

``` rspec spec```

###### Deployment

Run ```rails server```

You can interact with this app on ```localhost://3000```

###### How to contribute
1. Fork it (https://github.com/johnsonsirv/private-event/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -m 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request
> You can also create [issues](https://github.com/johnsonsirv/private-event/issues)

