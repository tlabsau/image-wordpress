title 'Ensure new image is set up correctly'

control 'Webserver_Hardening' do
  impact 1.0
  title 'Webserver tools and configuration'
  desc  'Ensure new image is set up correctly'
  tag application: 'wordpress'

  describe package('httpd') do
    it { should be_installed }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe port(443) do
    it { should_not be_listening }
  end

  describe bash('php -v') do
    its('exit_status') { should eq 0 }
  end

  describe file('/var/www/html/index.php') do
    it { should exist }
  end
end
