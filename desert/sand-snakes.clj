(while true
  (def coins (.findItems this))
  (def coinIndex 0)
  (def nearest nil)
  (def nearestDistance 9999)
  (def cpos nil)
  (while (< coinIndex (count coins))
    (def coin (nth coins coinIndex))
    (def coinIndex (inc coinIndex))
    (def distance (.distanceTo this coin))
    (if (< distance nearestDistance)
      (when true
        (def nearest coinIndex)
        (def cpos (.pos coin))
        (def nearestDistance distance))))
  (if nearest
      (.moveXY this (.x cpos) (.y cpos))))
