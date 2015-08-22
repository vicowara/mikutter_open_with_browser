# -*- coding: utf-8 -*-

Plugin.create(:mikutter_open_with_browser) do
  command(:open_with_browser,
          name: 'ブラウザで開く',
          condition: Plugin::Command[:HasOneMessage],
          visible: true,
          role: :timeline) do |opt|
    message = opt.messages.first
    screen_name = message.user[:idname]
    link = "https://twitter.com/#{screen_name}/status/#{message.id}"
    system "xdg-open #{link}"
  end
end
