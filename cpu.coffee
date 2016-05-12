command: "uptime | awk '{print $(NF-2)}' | sed 's/,//g'"

refreshFrequency: 4000 # ms

render: (output) ->
  "cpu <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #F0F8F7
  font: 12px roboto mono
  right: 262px
  top: 3px
  span
    font: 11px roboto mono
    color: #2E73F5
"""
