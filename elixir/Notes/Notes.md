## Elixir Personal Notes
### Calling a function within function using pipe operator

Pipe Operator provides a more concise and readable way to chain function calls, passing the output of one function as the first argument of the next

``` Elixir
defmodule MyModule do 
    def function_a(value) do
        value * 2
    end

    def function_b(input) do
        input + 10
    end

    def combined_function_piped(initial_value) do
        initial_value
        |> function_a()
        |> function_b()
    end
end

```

Example usage:

    MyModule.combined_function_piped(5) # Returns 20 (5 * 2 + 10) 
