class HelloWorld < Netzke::Base
  # Configure client class
  js_configure do |c|
    c.title = "Hello World component"
    c.mixin # mix in methods from hello_world/javascripts/hello_world.js
  end

  # Actions are used by Ext JS to share functionality and state b/w buttons and menu items
  # The handler for this action should be called onPingServer by default
  action :ping_server

  # Self-configure with a bottom toolbar
  def configure(c)
    super
    c.bbar = [:ping_server] # embed the action into bottom toolbar as a button
  end

  # Endpoint callable from client class
  endpoint :greet_the_world do |params,this|
    # call client class' method showGreeting
    #name = WelcomeHelper::get_help
    TestMailer.send_mail("netzke").deliver_now
    this.show_greeting(name)
  end
end