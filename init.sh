#bin/sh -xe

git clone https://github.com/hexaforce/aws-init.git
find aws-init -name *.sh | xargs sh
