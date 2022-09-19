#!/bin/bash
sudo useradd -m ansible --shell /bin/bash
sudo mkdir -p /home/ansible/.ssh
sudo touch /home/ansible/.ssh/authorized_keys
sudo usermod -aG root ansible
echo 'ansible ALL=(ALL) NOPASSWD: ALL' | sudo tee -a /etc/sudoers
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDyESmXrBt6Av3LdtzhB23mQ2JtpXpIKdpXyrttovs39XFpxX58h4e4TxeODf3aDu+ArkMliuKDpT7D6kafB44056ga9Ji5fQ8IkyXjw/qqkBOyMDIcdVTkJT6YrUKmQUHHUfwUKYZ12xSYJYtyvivjRm5iZKAqIvhqwHhJu8BmL9A2XYzfsrmrXrwG03i4YgMo3AB6mfYKFX2fgEWz1X4rME72LbN5sqr59RxQSNST9o82CMTGuemZmMYtmjWM49sQ5KoQrFuagahuBetSmL/6WPATAI1Cy9j2s0/ar+Zkd//zyVHBZW2sJbiLiMbjb30NnXFA1XTcZfUoT8nI8u2Adt+G/X2ab2rV619Hp9QMCAC/mclMlWqCrcS8ysBnFx1CpMg2u2kDuLIZOVXsRYCwwU+o/LRQ/IoyJZXwWwz05EAMnD84Zqe9XyoNh3qsrP8bnsjAPjvNC+S64KKsk75uHNeTiGs0xK60gOkKmSPFAdXB59j05WlvrQ8tEDviB8=' | sudo tee /home/ansible/.ssh/authorized_keys
