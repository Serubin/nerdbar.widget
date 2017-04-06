command: """
    echo $(/usr/local/bin/kwmc query space active tag | awk '{ s = ""; for (i = 1; i <= NF; i++) s = s " " $i; print substr(s,0,125) }' )
    """

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
