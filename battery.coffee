command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 150000 # ms

render: (output) ->
  "<i>⚡</i>#{output}"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px roboto mono
  top: 4px
  right: 145px
  color: #F0F8F7
  i
    font-size:11px
  span
    color: #9C9486
"""
