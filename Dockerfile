FROM mangovoice/passenger-ruby-2.1:stable

RUN mkdir -p /provisioning/webui-admin
ADD ansible /provisioning/webui-admin
WORKDIR /provisioning/webui-admin

RUN ansible-playbook default.yml -c local

WORKDIR /opt/webui-admin/current

EXPOSE 3000

ENTRYPOINT ["rbenv", "exec", "foreman", "start" ]
