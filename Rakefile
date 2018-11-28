require 'cucumber/rake/task'

desc 'To run:'
task :run, [:APP, :ENVIRONMENT, :LANGUAGE, :CI, :DEBUGGER, :PROFILE] do |_t, args|
  init = 'bundle exec calabash-android run '+ args[:APP] +
      ' ENVIRONMENT=' + args[:ENVIRONMENT] +
      ' LANGUAGE=' + args[:LANGUAGE] +
      ' CI=' + args[:CI] +
      ' DEBUGGER=' + args[:DEBUGGER] +
      ' -p ' + args[:PROFILE]

  system(init)
end
