# Cls

https://github.com/garybernhardt/cls

## DESCRIPTION

Cls lets you define classes with a more terse syntax. It's useful for presenters and other classes that have many small methods. For example:

```ruby
class UserPresenter
    takes :user
    let(:full_name) { [@user.first_name, @user.last_name].join(" ") }
end
```

Contrast that with the standard Ruby version:

```ruby
class UserPresenter
    def initialize(user)
        @user = user
    end

    def full_name
        [@user.first_name, @user.last_name].join(" ")
    end
end
```

Pretty big difference, huh?

## CAVEATS

Ruby 1.8 will allow you to pass the wrong number of arguments to a block, which can be confusing. It throws a warning, so you should at least be notified that you're doing it. This problem doesn't exist in Ruby 1.9.

