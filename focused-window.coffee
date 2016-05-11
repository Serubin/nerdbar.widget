command: "echo $(/usr/local/bin/kwmc query window focused name)"

refreshFrequency: 1000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #F0F8F7
  font: 11px Osaka-Mono
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 6px
  width: 500px
"""
