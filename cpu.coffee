command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  "cpu <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #F0F8F7
  font: 12px Osaka-Mono
  right: 262px
  top: 6px
  span
    color: #2E73F5
"""
