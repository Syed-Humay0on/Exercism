defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    # Log code 	  ||  Log label ||  Supported in legacy apps?
    # 0 	        ||  trace 	  ||  no
    # 1 	        ||  debug 	  ||  yes
    # 2 	        ||  info 	    ||  yes
    # 3 	        ||  warning   ||  yes
    # 4 	        ||  error 	  ||  yes
    # 5 	        ||  fatal 	  ||  no
    # other / not supported 	  ||  unknown 	-
    cond do
      legacy? and level in [0, 5] -> :unknown
      level == 0 -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    # Ops team? Dev1 team? Dev2 team? Or nobody (false)?
    label = to_label(level, legacy?)

    cond do
      label in [:error, :fatal] -> :ops
      label == :unknown and legacy? -> :dev1
      label == :unknown -> :dev2
      true -> false
    end
  end
end
