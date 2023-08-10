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

var magic = calcMagic(num[0], num[1], num[2], num[3])
print(magic[0])
print(magic[1])
print(magic[2])
print(magic[3])