command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #F0F8F7
  font: 13px Osaka-Mono
  right: 10px
  top: 6px
"""
