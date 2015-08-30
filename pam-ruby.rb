require 'open3'

class PamPWAuth
    def authenticate(login, password)
       o,e,status = Open3.capture3('pwauth', :stdin_data =>"#{login}\n#{password}")
       puts o
       puts e
       puts status
       return nil unless status.success?
       return true
    end
end

auth = PamPWAuth.new()
puts "start"
if auth.authenticate('vagrant', 'vagrant')
  puts "true"
else
  puts "false"
end
