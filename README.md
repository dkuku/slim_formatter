# SlimFormatter

Based on the ExUnit CliFormatter

To use it
```
mix test --formatter SlimFormatter
```

The result will show only the lines that are different - the same lines are replaced by dots
```
  1) test list; mixed diff (SlimFormatterTest)                                                                                                                                                                              19:04:53 [35/1800]
     test/slim_formatter_test.exs:10                                                                                                                                                                                                          
     Assertion with == failed                                                                                                                                                                                                                 
     code:  assert list1 == list2                                                                                                                                                                                                             
     left:  [1, 2, 3, 4, 5, 6, 7, ........]                                                                                                                                                                                                   
     right: [%{1 => 10}, %{2 => 20}, %{3 => 30}, %{4 => 40}, %{5 => 50}, ........, 16, 17, 18, 19, 20]                                                                                                                                        
     stacktrace:                                                                                                                                                                                                                              
       test/slim_formatter_test.exs:13: (test)                                                                                                                                                                                                
                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                              
  2) test maps; mixed diff (SlimFormatterTest)                                                                                                                                                                                                
     test/slim_formatter_test.exs:4                                                                                                                                                                                                           
     Assertion with == failed                                                                                                                                                                                                                 
     code:  assert map1 == map2                                                                                                                                                                                                               
     left:  %{....., 12 => 12, .., 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9, 10 => 10}                                                                                                                                                          
     right: %{....., 12 => 32, .., 13 => 13}                                                                                                                                                                                                  
     stacktrace:                                                                                                                                                                                                                              
       test/slim_formatter_test.exs:7: (test)                                                                                                                                                                                                 
                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                              
Finished in 0.02 seconds (0.00s async, 0.02s sync)                                                                                                                                                                                            
2 tests, 2 failures                                                                                                                                                                                                                           

```


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `slim_formatter` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:slim_formatter, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/slim_formatter>.

