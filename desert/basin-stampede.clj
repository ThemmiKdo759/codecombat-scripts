(while true
  (let [e (.findNearest this (.findEnemies this))
        xPos (+ (.x (.pos this)) 5)]
    (def yPos 17)
    (if e
      (if (> (.y (.pos e)) (.y (.pos this)))
        (def yPos 14)
        (if (< (.y (.pos e)) (.y (.pos this)))
          (def yPos 20))))
    (.move this (clj->js { :x xPos, :y yPos }))))
