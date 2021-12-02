# Smart Pension Ruby Test
To write a Ruby script that:
- a.  Receives a log as argument (webserver.log is provided)
  e.g.: ./parser.rb webserver.log
- b. Returns the following:

> list of webpages with most page views ordered from most pages views to less page views
e.g. /home 90 visits 
    /index 80 visits etc... 
    
> list of webpages with most unique page views also ordered
e.g.:/about/2 8 unique views
    /index 5 unique views etc...

Finally, have some fun – Feel free to make changes or design something if you think it meets the
criteria above, but would produce better outcomes and of course, the sooner you return the test, the quicker we can move the process.    
## Require

    RVM
    Ruby ~> 2.6.3
    Git

## Setup
```sh
clone this repo && cd smart_pernsion_ruby_app
run 'bundle' 
$ ./parser webserver.log
$ bin/rspec
```

## Implementation
I came up with the idea for this app and built the basic framework using Test Driven Development.
I had the idea to split down the requirements at first. i.e., parsing the log, analysing and implementing the appropriate logic, and finally, displaying the results in the terminal. After a few hours of back and forth, I had my first functional app. I started with basic tests and gradually implemented the logic that failed the tests.

## Future Scope 
Because the app was built in a short amount of time for this test, there is a lot that can be improved over time: 
-  Tests can be written better, 
-  Errors and exceptions can be implemented, and so on.
-  There is always room for improvement in terms of logic. 



