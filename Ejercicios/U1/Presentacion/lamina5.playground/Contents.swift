import UIKit

var series = ["Mad Men", "Better Call Saul", "Talking Dead", "Humans"]

series.append("Preacher")
series.append("The Killing")

series[1...2] = ["Prison Break", "Breaking Bad"]

series.append("Lost")
series.append("Game Of Thrones")

series[4..<8] = ["TWD", "FTWD", series[7], series[6]]

print(series)
