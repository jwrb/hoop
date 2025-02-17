## hoop

[![Build Status](https://travis-ci.org/hoopcr/hoop.svg)](https://travis-ci.org/hoopcr/hoop)  [![Join the chat at https://gitter.im/amerobin/hoop](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/hoopcr/hoop?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)


## How to try ?

```shell
git clone git@github.com:hoopcr/hoop.git
shards install
crystal run example/login.cr
```

## Basic example

```crystal
# app.cr

require "src/hoop"

include Hoop

NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Hello, World !".to_objc

$window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
$window.set_background_color = NSColor.white_color.to_objc
$window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
$window.title = appName
$window.make_key_and_order_front nil.to_objc

$username_text_field = NSTextField.new(NSRect.new(50, 600, 600, 50).to_objc)
$username_text_field.set_font = (NSFont.bold_system_font_of_size = 30.0).to_objc
$window.content_view << $username_text_field.to_objc

$password_text_field = NSTextField.new(NSRect.new(50, 530, 600, 50).to_objc)
$password_text_field.set_font = (NSFont.bold_system_font_of_size = 30.0).to_objc
$window.content_view << $password_text_field.to_objc

$login_button = NSButton.new(NSRect.new(50, 460, 600, 50).to_objc)
$window.content_view << $login_button.to_objc
ns_log "app launched"

NSApp.activate_ignoring_other_apps = true
NSApp.run

```

```shell
$ crystal app.cr
```

## Screenshot
# ![Screenshot](https://raw.githubusercontent.com/hoopcr/hoop/master/assets/example_app.png)

## Contributing

1. Fork it ( https://github.com/hoopcr/hoop/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Authors

- Sedat G. Çiftçi [@0x73](https://github.com/0x73)
- Serdar Doğruyol [@sdogruyol](https://github.com/sdogruyol)

## Thanks

Thanks to Manas for their awesome work on [Crocoa](https://github.com/manastech/crocoa).
