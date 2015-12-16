(while true
  (def b (.findNearest this (.findByType this "ball")))
  (def f (.findByType this "peasant"))
  (def y (min 42 (max 29 (.y (.pos b)))))
  (.command this (first f) "move" (clj->js { :x 18, :y (+ y 2) }))
  (.command this (last f) "move" (clj->js { :x 18, :y (- y 2) })))
