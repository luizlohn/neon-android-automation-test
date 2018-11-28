require 'calabash-android'

class HomeScreen < AndroidScreenBase
  # The screen identificator
  trait(:home)                 { "* id:'action_bar_root'" }

  # Declare all the elements of this screen
  element(:add)                 { 'imageView7' }
  element(:backup)                  { 'imageView15' }
  element(:client_text)               { 'textView4' }


  # Declare all actions of this screen
  def create_new_user
    touch("* id:'#{add}'")
  end

end