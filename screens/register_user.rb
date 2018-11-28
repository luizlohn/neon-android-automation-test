require 'calabash-android'
require 'calabash-android/calabash_steps'

class RegisterScreen < AndroidScreenBase
  # The screen identificator
  trait(:home)                 { "* id:'action_bar_root'" }

  # Declare all the elements of this screen
  element(:user_name)                 { 'txtNome' }
  element(:user_phone)                 { 'txtTelefone' }
  element(:user_email)               { 'txtEmail' }
  element(:user_cpf)               { 'txtCpf' }
  element(:user_description)               { 'txtDescricao' }
  element(:save_button)               { 'imageView12' }


  # Declare all actions of this screen
  def fill_users(name, phone, email, cpf, description)
    enter_text("* id:'#{user_name}'", name)
    enter_text("* id:'#{user_phone}'", phone)
    enter_text("* id:'#{user_email}'", email)
    enter_text("* id:'#{user_cpf}'", cpf)
    enter_text("* id:'#{user_description}'", description)
  end

  def click_on_save
    hide_soft_keyboard
    touch("* id:'#{save_button}'")
  end

end
