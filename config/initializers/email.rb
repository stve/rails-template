begin
  sock = TCPSocket.new("localhost", 1025)
  sock.close
  catcher = true
rescue
  catcher = false
end

if Rails.env.development? && catcher
  ActionMailer::Base.smtp_settings = { :host => "localhost", :port => '1025' }
end
