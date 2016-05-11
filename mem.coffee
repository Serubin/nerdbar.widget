command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  "mem <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #F0F8F7
  font: 12px Osaka-Mono
  right: 192px
  top: 6px
  span
    color: #2E73F5
"""
