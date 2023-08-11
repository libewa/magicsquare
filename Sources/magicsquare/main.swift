enum MagicSquareError: Error {
  case tooManyArgs
}

var args = CommandLine.arguments
args.remove(at: 0)

guard args.count <= 5 else {
  print("Please provide a maximum of 4 arguments! (\(args.count): \(args) given)")
  throw MagicSquareError.tooManyArgs
}

var num: [Int] = []

for element in args {
  num.append(Int(element) ?? Int.random(in: 10...100))
}

for _ in args.count...4 {
  num.append(Int.random(in: 10...100))
}

func calcMagic(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> [[Int]] {
  return [
    [a, b, c, d],
    [c-1, d+1, a-1, b+1],
    [d+1, c+1, b-1, b+1],
    [b, a-2, d+2, c]
  ]
}

func numberWithSpacing(_ num: Int) -> String {
  return "\(num < 10 && num >= 0 ? "  " : num < 100 ? " " : "")\(num)"
}

func rendered(_ square: [[Int]]) -> String {
  var rendered = """
  \(numberWithSpacing(square[0][0]))|\(numberWithSpacing(square[0][1]))|\(numberWithSpacing(square[0][2]))|\(numberWithSpacing(square[0][3]))
  ===============
  \(numberWithSpacing(square[1][0]))|\(numberWithSpacing(square[1][1]))|\(numberWithSpacing(square[1][2]))|\(numberWithSpacing(square[1][3]))
  ===============
  \(numberWithSpacing(square[2][0]))|\(numberWithSpacing(square[2][1]))|\(numberWithSpacing(square[2][2]))|\(numberWithSpacing(square[2][3]))
  ===============
  \(numberWithSpacing(square[3][0]))|\(numberWithSpacing(square[3][1]))|\(numberWithSpacing(square[3][2]))|\(numberWithSpacing(square[3][3]))
  """
  return rendered
}


var magic = calcMagic(num[0], num[1], num[2], num[3])
print(rendered(magic))