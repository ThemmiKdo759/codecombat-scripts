(while true
  (def e (.findNearest this (.findItems this)))
  (if e
    (if (= (.x (.pos e)) 34)
      (.moveXY this 46 22)
      (.moveXY this 34 22))
    (.moveXY this 40 22)))
