([defn].[with] [([null],|([]:[0])>)] |(

[0]: [0] ::[01]                                       -- [true]
[1]: [1] ::[01]                                       -- [flse]
[00]: ([]:[1] [0]) ::([]:[01])                        -- ([=?] [null])
[01]: <[0]||[1]> ::|>                                 -- [bool]
[10]: [00] ::([01]:[01])                              -- ([=?] [flse])
[11]: ([0]:[0] [1]:[1]) ::([01]:[01])                 -- ([=?] [true])
[000]:                                                -- [pure]
  ( [0]: ([010] []) 
    [1]: ([101] [])
  ) ::([01]:[111])
[001]:                                                -- [last]
  ( []:[]
    ( [([010] [])]: [0]
      ( [([101] [])]: [1]
        ( [([010] |[0000]>)]: ([001] [0000])
          [([101] |[0000]>)]: ([001] [0000])
        )
      )
    )
  ) ::([111]:[01])
[010]: ( [|>]:[([010] [|>])] ) ::([111]:[111])        -- ([cons] [0])
[011]:                                                -- [tail]
( []:[]
  ( [([010] |[0000]>)]: [0000]
    [([101] |[0000]>)]: [0000]
  )
) ::([111]:[01])
[100]:                                                -- [head]
  ( []: []
    ( [([010] |>)]: [0]
      [([101] |>)]: [1]
    )
  ) ::([111]:[01])
[101]: ( [|>]:[([101] [|>])] ) ::([111]:[111])        -- ([cons] [1])
[110]:                                                -- [init]
  ( []:[]
    ( [([010] [])] : [0]
      ( [([101] [])] : [1]
        ( [([010] |[0000]>)] : ([010] ([110] [0000]))
          [([101] |[0000]>)] : ([101] ([110] [0000]))
        )
      )
    )
  ) :: ([111]:[111])
[111]: <[]||<([010] [01])||([101] [01])>>  :: |[01]>  -- ([list] [bool])

)>)