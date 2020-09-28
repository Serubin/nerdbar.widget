command: '''
/usr/local/bin/timeout 10s /usr/local/bin/yabai -m query --windows 2> /dev/null | grep '"focused":1' -B 16 | head -n 2 | sed -e 's/"app":"//' -e 's/"title":"/-  /' -e 's/",//' | tr '\n' ' ' | tr '\t' ' '
'''

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:first-child", el).text("  #{output}")
    $icon = $(".foc span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #1b1b1b
  font: 10px Input
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 5px
  width: 50%
"""
