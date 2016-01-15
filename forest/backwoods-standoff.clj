(while true
  (def e (.findNearestEnemy this))
  (if e
    (if (.isReady this "cleave")
      (.cleave this e)
      (.say this "Come at me!"))))
