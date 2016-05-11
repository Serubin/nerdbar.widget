command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #F0F8F7
  font: 12px roboto mono
  right: 60px
  top: 3px
"""
