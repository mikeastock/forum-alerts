defmodule ForumAlerts.Notifier do
  @channel "#fred-miranda-alerts"

  def notify(message) do
    Slack.Web.Chat.post_message(@channel, "```#{message}```")
  end
end
