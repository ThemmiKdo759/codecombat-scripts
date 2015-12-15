(while true
  (def green (.findFlag this "green"))
  (def black (.findFlag this "black"))
  (def enemy (.findNearest this (.findEnemies this)))
  (if green
    (.pickUpFlag this green)
    (if (and black (.isReady this "cleave"))
      (when true
        (.pickUpFlag this black)
        (def enemy (.findNearest this (.findEnemies this)))
        (.cleave this enemy))
      (if (and enemy (< (.distanceTo this enemy) 10))
        (if (.isReady this "bash")
          (.bash this enemy)
          (.attack this enemy))))))
