motion-hipmob
=============

A rubymotion wrapper for Hipmob SDK


## Installation

Add this line to your application's Gemfile:

    gem 'motion-hipmob', github: 'wanglian/motion-hipmob'

And then execute:

    $ bundle



## Usage

1. In your app_delegate.rb, find application(applicaiton, didFinishLaunchingWithOptions:launchOptions), add

    ```ruby
    HMService.sharedService.setup "Hipmob App ID", withLaunchOptions:options
    ```

2. Open search

    ```ruby
    HMService.sharedService.openHelpdeskSearch self, withSetup: lambda {|controller|
      controller.body.title = "Help Search"
      controller.chatEnabled = true
    }
    ```
3. Open chat

    ```ruby
    HMService.sharedService.openChat self, withSetup: lambda {|controller|
      controller.body.title = "Support Chat"
      controller.chatView.maxInputLines = 4
      controller.shouldUseSystemBrowser = false
      controller.chatView.updateName 'user name'
      controller.chatView.updateEmail 'user email'
      controller.chatDelegate = self
    }
    ```