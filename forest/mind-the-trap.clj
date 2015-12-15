(while true
  (def flag (.findFlag this))
  (if flag
    (.pickUpFlag this flag)
    (when true
      (def enemy (.findNearest this (.findEnemies this)))
      (if (and enemy (< (.x (.pos enemy)) 42))
        (.attack this enemy)))))
