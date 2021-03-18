# 12 Adding journey history

[Back to the challenge map](README.md)

Well done. Now your card can remember the entry station for the current journey. This is already helpful but let's make it slightly more useful. Real Oystercards remember the history of all journeys. Let's make our Oystercard class remember all journeys made as well.

In order to save several journeys in computer's memory, you'll need a data structure that can hold an ordered sequence of objects. You will need to update this structure every time a journey is made. Don't worry about incomplete journeys yet (when there's no touch in or touch out event). After you introduce all necessary changes to store the list of journeys, you'll end up with two mechanisms of storing entry and exit stations (in the instance vars that you created previously and in the list of journeys). Once you get all the tests passing, refactor your code to make it DRY (Don't Repeat Yourself) by writing custom accessors to replace attribute readers.

Write necessary tests and update your code to make sure the card remembers the history of all journeys.

```
In order to know where I have been
As a customer
I want to see all my previous trips
```

## Learning Objectives covered
- Use Ruby arrays
- Use Ruby hashes
- Write custom attribute accessors

## Interview questions you may expect:
- What does the DRY acronym mean? Why is it important to keep your code DRY?
- Tell me about arrays and hashes in Ruby? When would you use them? When would you prefer one to the other and why?
- What is refactoring? When do you refactor code? Why is it important to have good test coverage before refactoring?

## To complete this challenge:
- [ ] Write up a plan for how you will interact with your code and manually test in IRB.
- [ ] Store the list of journeys as an instance variable and expose it with an attribute reader - you will need to refactor the touch_out method to accept an exit station
- [ ] Use a hash to store one journey (set of an entry and exit stations)
- [ ] Write a test that checks that the card has an empty list of journeys by default
- [ ] Write a test that checks that touching in and out creates one journey
- [ ] Keep all code including tests DRY

### Hints
<details><summary>CLICK ME</summary>
  <ul>
    <li>Once again, you're likely to break a number of your tests in the course of completing this challenge.  When this happens, take the same approach as before; read the error messages and fix one at a time</li>
    <li>The first step in completing this challenge will be to make your `touch_out` method take an exit station. Write the test and implement this behaviour.</li>
    <li>Next, you'll need to set up an instance variable to hold a list of journeys. Test drive setting up this storage, and then adding journeys to it on touch out. Use a hash which stores the entry and exit stations to represent each journey.</li>
    <li>Depending on how you have implemented this feature, you'll probably have some refactoring to do. For example, your `touch_out` method may have more than one responsibility. Could you extract some of it's behaviour to a private method?</li>
  </ul>
</details>

## Suggested resources:
- [Ruby Array](http://ruby-doc.org/core-2.2.2/Array.html)
- [Ruby Hash](http://ruby-doc.org/core-2.2.2/Hash.html)
- [Ruby Arrays on RubyMonk](https://rubymonk.com/learning/books/1-ruby-primer/chapters/1-arrays/lessons/2-arrays-introduction)
- [Ruby Hashes on RubyMonk](https://rubymonk.com/learning/books/1-ruby-primer/chapters/10-hashes-in-ruby/lessons/46-introduction-to-ruby-hashes)
- [Ruby instance variables and accessors](https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/45-more-classes/lessons/110-instance-variables)
- [Refactoring](https://en.wikipedia.org/wiki/Code_refactoring)
- [Refactoring book](http://refactoring.com/)
- [RSpec single expectation](http://betterspecs.org/#single)
- [RSpec before and after hooks](https://www.relishapp.com/rspec/rspec-core/v/2-0/docs/hooks/before-and-after-hooks)
- [DRY: Don't Repeat Yourself](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself)

## [Walkthrough](walkthroughs/12_journey_history.md)

[Previous Challenge](11_saving_entry_station.md) | [Next Challenge](13_create_station_class.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=oystercard/12_journey_history.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=oystercard/12_journey_history.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=oystercard/12_journey_history.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=oystercard/12_journey_history.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=oystercard/12_journey_history.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
