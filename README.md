### Flatten rebuild

You have an array:

[1,2,3,4,[5,6,7,[8,9,[10]]]]

Flatten the array so that it becomes:

[1,2,3,4,5,6,7,8,9,10]

*Requirements*

* You cannot use the flatten method.
* Build it using recursion

And then build it another way once you're done. Have you thought about using gsub...

[recursion in ruby](http://stackoverflow.com/questions/6418017/what-is-ruby-recursion-and-how-does-it-work)

*Example of recursion*

Here is the factorial method using recursion:

```ruby
def factorial(n)
    if n == 0
        1
    else
        n * factorial(n-1)
    end
end
puts factorial(5) # => 120
```

Understand recursion now?

Here's a drawing of factorial:

![Factorial explained using a drawing](http://natashatherobot.com/wp-content/uploads/factorials-recursive1.png)
