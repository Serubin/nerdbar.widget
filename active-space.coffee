command: '''
/usr/local/bin/timeout 10s /usr/local/bin/yabai -m query --spaces 2> /dev/null | grep  '"focused":1' -B 5 | head -n 1 | sed -e 's/"index"://' | tr '\t' ' ' | tr ',' ' '
'''

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="ac"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".ac span:first-child", el).text("  #{output}")
    $icon = $(".ac span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

icon: (status) =>
    return if status.substring(0, 4) == "main"
        "fa-home"
    else if status.substring(0, 3) == "web"
        "fa-safari"
    else if status.substring(0, 4) == "code"
        "fa-code"
    else if status.substring(0, 4) == "term"
        "fa-terminal"
    else if status.substring(0, 6) == "social"
        "fa-comments"
    else if status.substring(0, 5) == "media"
        "fa-music"
    else
        "fa-circle"

style: """
  -webkit-font-smoothing: antialiased
  text-align: right
  color: #1b1b1b
  font: 10px Input
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  right: 320px
  top: 5px
  width: 50%
"""
