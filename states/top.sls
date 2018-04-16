base:

  '*':
#    - systeme.snmp

{% for item in grains.get('logiciels', {}) %}
     - logiciels.{{ item }}
{% endfor %}

#################
# Linux
#################

##Toutes les distributions : 
  'G@kernel:Linux':
    - systeme.requirements

##Les distributions systemd
#  'G@init:systemd':
#    - systeme.chronyd

##Les distributions system V
  'G@init:upstart':
    - systeme.ntpd

## Elasticstack
#  'G@logiciels:elasticsearch_6':
#    - logiciels.elasticsearch_6
#  'G@logiciels:elasticsearch_7':
#    - logiciels.elasticsearch_7
  'G@logiciels:elasticsearch*':
    - systeme.requirements.elasticsearch

#  'G@logiciels:logstash_6':
#    - logiciels.logstash_6



#################
# Windows
#################

  'G@os:Windows':
    - systeme.test
