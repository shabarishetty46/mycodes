yum install -y java-1.8.0-openjdk-devel
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install -y jenkins
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --reload
cat /var/lib/jenkins/secrets/initialAdminPassword
