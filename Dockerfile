FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHVuaWZpZWRwdXNoLWFwYgpkZXNjcmlwdGlvbjogQWVyb0dlYXIg\
VW5pZmllZFB1c2ggU2VydmVyCmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAp0YWdzOiAK\
ICAtIG1vYmlsZS1zZXJ2aWNlCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBVbmlmaWVkUHVzaCBT\
ZXJ2ZXIKICBjb25zb2xlLm9wZW5zaGlmdC5pby9pY29uQ2xhc3M6IGZhIGZhLXJvY2tldAogIHNl\
cnZpY2VOYW1lOiB1cHMKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjog\
RGVwbG95IFVQUwogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6IHt9CiAgICBwYXJhbWV0ZXJz\
OiAKICAgIC0gbmFtZTogTVlTUUxfVVNFUgogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICBkZWZh\
dWx0OiB1bmlmaWVkcHVzaAogICAgICB0eXBlOiBzdHJpbmcKICAgICAgdGl0bGU6IFVQUyBkYiB1\
c2VybmFtZQogICAgLSBuYW1lOiBNWVNRTF9QQVNTV09SRAogICAgICByZXF1aXJlZDogVHJ1ZQog\
ICAgICBkZWZhdWx0OiB1bmlmaWVkcHVzaAogICAgICB0eXBlOiBzdHJpbmcKICAgICAgdGl0bGU6\
IFVQUyBkYiBwYXNzd29yZAogICAgLSBuYW1lOiBNWVNRTF9ST09UX1BBU1NXT1JECiAgICAgIHJl\
cXVpcmVkOiBUcnVlCiAgICAgIGRlZmF1bHQ6IHN1cGVyc2VjcmV0CiAgICAgIHR5cGU6IHN0cmlu\
ZwogICAgICB0aXRsZTogVVBTIGRiIHJvb3QgcGFzc3dvcmQKICAgIC0gbmFtZTogTVlTUUxfREFU\
QUJBU0UKICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgZGVmYXVsdDogdW5pZmllZHB1c2gKICAg\
ICAgdHlwZTogc3RyaW5nCiAgICAgIHRpdGxlOiBVUFMgZGF0YWJhc2UgbmFtZQogICAgYmluZF9w\
YXJhbWV0ZXJzOgogICAgLSBuYW1lOiBzZXJ2aWNlCiAgICAgIHRpdGxlOiBUaGUgc2VydmljZSB0\
aGUgY2xpZW50IGlzIGZvcgogICAgICB0eXBlOiBzdHJpbmcK"

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb