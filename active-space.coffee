command: "/usr/local/bin/kwmc query space active name"

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
        "fa-times"

style: """
  -webkit-font-smoothing: antialiased
  text-align: right
  color: #f0f8f7
  font: 10px Input
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  right: 320px
  top: 6px
  width: 50%
"""
