Lita.configure do |config|
  config.robot.name = "{{ lita_name }}"

  config.robot.log_level = :info

  config.redis["host"] = "{{ redis_srv }}"
  config.redis["port"] = {{ redis_port }}

  config.robot.adapter = :slack
  config.adapters.slack.token = "{{ lita_slack_token }}"

  config.adapters.slack.link_names = true
  config.adapters.slack.parse = "full"
  config.adapters.slack.unfurl_links = false
  config.adapters.slack.unfurl_media = false
end

