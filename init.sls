{% set nginx_url = salt['pillar.get']('nginx:download_url') %}
{% set nginx_filename = nginx_url.split('/')[-1] %}
{% set nginx_file_destination = '/tmp/' + nginx_filename %}

/tmp/{{ nginx_filename }}:
  file.managed:
    - source: {{ nginx_url }}
    - makedirs: True
    - user: root
    - group: root
    - mode: 0644