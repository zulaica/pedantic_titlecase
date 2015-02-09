# Pedantic Title Case
Pedantic Title Case is an extension to Ruby’s `String` class that converts text to [title case](http://en.wikipedia.org/wiki/Letter_case#Title_case) according to a default set of rules, or with rules that are specified by passing an optional argument. It also has the bonus of easily taking over ActiveSupport's `String#titlecase` alias, giving you a more reasonable result than the default while leaving `#titleize` untouched.

## Nota Bene
This software is still very much version 0.x.x and should not be considered stable. Version 1.0.0 will be bundled as a gem. Until then, I don't recommend using this in a production environment. If you do and things break, that's all on you.

## To Do
- Investigate and add style exception options (e.g. AP, NY Times, LA Times).
- Turn this into a gem.

## FAQ
### Why?
While working on [an assessment for class](https://github.com/zulaica/concert_history), I came across limitations using ActiveSupport's `#titlecase` method, notably that it strips out some non-alphanumeric characters which revises band names like "Sleater-Kinney" and "Man… or Astro-Man?" incorrectly. Given the time constraints, I opted to leave these as known issues so I could finish the assessment and revisit the problem in detail later.

### Isn't there already a gem that does this?
As it turns out, [there is](https://rubygems.org/gems/titlecase)! While investigating potential gem names on RubyGems, I stumbled onto [Sam Souder's solution](http://samsouder.com/post/428521490/daring-fireballs-titlecase-ruby-conversion). I had already written some code and mapped out ideas (such as switching style guides with an argument) by this point.

Pedantic Title Case is fundamentally a personal experiment/exercise in writing and maintaining a gem from scratch, so, rather than calling it a day, I chose to continue coding.

That said, I did borrow an idea from Sam Souder's gem: to use John Gruber's [TitleCase.pl](http://daringfireball.net/2008/05/title_case) rules as the default for Pedantic Title Case's method.

### Will you support other style guides?
The current plan is to support The Associated Press, The New York Times, and The Los Angeles Times style guides.

### What about APA, MLA, or Chicago Style?
The rules that govern those styles are far more complex to navigate around beyond a simple list of words to exclude. I'm not saying no, but don't hold your breath.

## Credits
Pedantic Title Case is written and maintained by [David Zulaica](http://zulaica.info).

## Acknowledgements
[John Gruber](http://daringfireball.net) for publishing his personal title case style rules and [Sam Souder](http://samsouder.com) for inspiring me to use those rules as the default.

## License
Licensed under GNU GPL v2.0
