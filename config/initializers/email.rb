begin
  sock = TCPSocket.new("localhost", 1025)
  sock.close
  catcher = true
rescue
  catcher = false
end

ActionMailer::Base.smtp_settings = if Rails.env.development? && catcher
  { :host => "localhost", :port => '1025' }
end
