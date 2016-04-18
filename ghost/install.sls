{% from 'ghost/ghost.jinja' import node_package, ghost_source_url with context %}

node.install:
  pkg.installed:
    - name: {{ node_package }}

ghost.install:
  archive.extracted:
    - name: {{ pillar['ghost']['install_dir'] }}
    - source: {{ ghost_source_url }}
    - source_hash: {{ pillar['ghost']['source_hash'] }}
    - archive_format: zip
