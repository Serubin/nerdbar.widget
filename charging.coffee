command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f2 -d';'"
refreshFrequency: 10000 # ms
render: (output) ->                                                                                                   """
  <link rel="stylesheet" href="./nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />                      <div class="charging"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    charging = output.replace(/\s/g,'')
    $icon = $(".charging span.icon", el)
    $icon.removeClass().addClass("icon")
    console.log(@icon(charging))
    $icon.addClass("fa #{@icon(charging)}")

icon: (output) =>
  return if output == "charging"
    "fa-bolt"
   else
    ""

style: """
  -webkit-font-smoothing: antialiased
  font: 7px Input
  top: 8px
  right: 197px
  color: #1b1b1b
"""
