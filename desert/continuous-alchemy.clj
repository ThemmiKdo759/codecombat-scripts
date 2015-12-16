(while true
  (def es (.findEnemies this))
  (when (seq es)
    (def is (.findItems this))
    (if (seq is)
      (when (not= (.type (first is)) "poison")
        (.moveXY this (.x (.pos (first is))) (.y (.pos (first is))))
        (.moveXY this 34 47))
      (.say this "Give me a drink!"))))
