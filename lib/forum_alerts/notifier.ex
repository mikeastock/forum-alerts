defmodule ForumAlerts.Notifier do
  @channel System.get_env("SLACK_CHANNEL")

  def notify(message) do
    %{"ok" => true} = Slack.Web.Chat.post_message(@channel, "```#{message}```")
  end
end
