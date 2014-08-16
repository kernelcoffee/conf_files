flexget-config
==============

A Flexget configuration that fetches movies and TV series based on RSS feeds.

Requires:
  * Flexget plugin, config_secrets (see, https://github.com/Flexget/Flexget/pull/249)
    Just copy into ~/.flexget/plugins/
    
mkdir -p ~/.flexget/plugins/ && cd ~/.flexget/plugins && wget https://raw.githubusercontent.com/tarzasai/Flexget/6f7fc3f46f0dbd238b60c2e75e12a8b64cbb0d05/flexget/plugins/modify/config_secrets.py