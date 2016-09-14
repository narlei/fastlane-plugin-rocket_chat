# rocket_chat plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-rocket_chat)
[![Build Status](https://travis-ci.org/thiagofelix/fastlane-plugin-rocket_chat.svg?branch=master)](https://travis-ci.org/thiagofelix/fastlane-plugin-rocket_chat)
[![Code Climate](https://codeclimate.com/github/thiagofelix/fastlane-plugin-rocket_chat/badges/gpa.svg)](https://codeclimate.com/github/thiagofelix/fastlane-plugin-rocket_chat)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-rocket_chat`, add it to your project by running:

```bash
fastlane add_plugin rocket_chat
```

### About [RocketChat](http://rocket.chat)
Create an Incoming WebHook and export this as `ROCKET_CHAT_URL`. Can send a message to **#channel** (by default), a direct message to **@username** or a message to a private group **group** with success (green) or failure (red) status.

## Example
```ruby
rocket_chat(
  message: "App successfully released!"
)

rocket_chat(
  message: "App successfully released!",
  channel: "#channel",  # Optional, by default will post to the default channel configured for the POST URL.
  success: true,        # Optional, defaults to true.
  payload: {            # Optional, lets you specify any number of your own Rocket.Chat attachments.
    'Build Date' => Time.new.to_s,
    'Built by' => 'Jenkins',
  },
  default_payloads: [:git_branch, :git_author], # Optional, lets you specify a whitelist of default payloads to include. Pass an empty array to suppress all the default payloads. Don't add this key, or pass nil, if you want all the default payloads. The available default payloads are: `lane`, `test_result`, `git_branch`, `git_author`, `last_git_commit_message`.
  attachment_properties: { # Optional, lets you specify any other properties available for attachments. This hash is deep merged with the existing properties set using the other properties above. This allows your own fields properties to be appended to the existing fields that were created using the `payload` property for instance.
    thumb_url: 'http://example.com/path/to/thumb.png',
    fields: [{
      title: 'My Field',
      value: 'My Value'
    }]
  }
)
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/PluginsTroubleshooting.md) doc in the main `fastlane` repo.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Plugins.md).

## About `fastlane`

`fastlane` is the easiest way to automate building and releasing your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).

Contributing
------------

If there is any thing you'd like to contribute or fix, please:

- Fork the repo
- Add tests for any new functionality
- Make your changes
- Verify all new & existing tests pass
- Make a pull request

License
-------
The rocket-chat-notifier gem is distributed under the MIT License.
