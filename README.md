# Hotwire for rails

https://www.youtube.com/watch?v=Qp6sxgjA-xY&ab_channel=GoRails

https://github.com/hotwired/turbo-rails
https://github.com/hotwired/turbo-rails/issues/48
https://www.youtube.com/watch?v=YJPY_jDk-Wg&t=207s&ab_channel=RestaroneSolutions

SETUP
* gem 'hotwire-rails'
* bundle install
* rails action_text:install
* rails hotwire:install

* important to add
app/javascript/packs/application.js
import "@hotwired/turbo-rails"
* application.rb
config.action_view.form_with_generates_remote_forms = false

* yarn install

APP:
rails new test_hotwire --database=postgresql
rails g scaffold Tweet body:text
rails db:create
rails db:migrate

============= IMPORTANT =============
1.
root_path
when you send empty form don't forget open
Inspect(F12) -> Network -> Responce
!! action="replace"
!! wrapped in ``<turbo-stream``
```
<turbo-stream action="replace" target="new_tweet"><template><form id="new_tweet" action="/tweets" accept-charset="UTF-8" method="post"><input type="hidden" name="authenticity_token" value="JDu0+wnQUt+x2Ku9RT/jtwq25Wn4q70nw8PvRUn1hEVp/HUToBfZGv03ReIQXDukelpDgqAZCo2aRfhVosJCLw==" />
    <div id="error_explanation">
      <h2>1 error prohibited this tweet from being saved:</h2>

      <ul>
          <li>Body can&#39;t be blank</li>
      </ul>
    </div>
```

2.
whem you send form (method: POST) in console log should be
FORMAT: TURBO_STREAM
CODE:   200
if not check SETUP above

If you set up right, information on your page will update without page refresh :)

# test_hotwire
