(while true
  (def e (.findNearest this (.findEnemies this)))
  (if e
    (if (< (.x (.pos e)) (.x (.pos this)))
      (.buildXY this "fire-trap" 25 34)
      (if (> (.x (.pos e)) (.x (.pos this)))
        (.buildXY this "fire-trap" 55 34)
        (if (< (.y (.pos e)) (.y (.pos this)))
          (.buildXY this "fire-trap" 40 19)
          (.buildXY this "fire-trap" 40 49)))))
  (.moveXY this 40 34))
