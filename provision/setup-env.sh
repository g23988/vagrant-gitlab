#sudo yum -y update
sudo yum -y install openssh-server
sudo yum -y install postfix
sudo yum -y install cronie
sudo service postfix start
sudo chkconfig postfix on
sudo lokkit -s http -s ssh
sudo curl -o /tmp/gitlab-7.7.2_omnibus.5.4.2.ci-1.el6.x86_64.rpm https://downloads-packages.s3.amazonaws.com/centos-6.6/gitlab-7.7.2_omnibus.5.4.2.ci-1.el6.x86_64.rpm
sudo rpm -ivh /tmp/gitlab-7.7.2_omnibus.5.4.2.ci-1.el6.x86_64.rpm
sudo gitlab-ctl reconfigure
