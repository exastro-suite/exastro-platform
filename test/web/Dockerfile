#   Copyright 2022 NEC Corporation
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
FROM    registry.access.redhat.com/ubi8/ubi-init

ARG USERNAME=app_user
ARG GROUPNAME=app_user

ARG APP_PATH=/app

RUN dnf install -y httpd

COPY ./test/web/contents/ /var/www/html/
COPY ./test/web/config/httpd.conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY ./test/web/config/httpd.conf/rewrite.conf /etc/httpd/conf.d/rewrite.conf

CMD ["httpd","-D","FOREGROUND"]