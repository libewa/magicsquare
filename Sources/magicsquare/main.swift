import mqkit

var notable = false

var args = CommandLine.arguments
args.remove(at: 0)
if args.contains("--notable") {
  notable = true
  args.remove(at: args.firstIndex(of: "--notable")!)
}
guard args.count <= 5 else {
  print("Please provide a maximum of 4 arguments! (\(args.count): \(args) given)")
  throw MQMagicSquareError.tooManyArgs
}

var num: [Int] = []

for element in args {
  num.append(Int(element) ?? Int.random(in: 10...100))
}

for _ in args.count...4 {
  num.append(Int.random(in: 10...100))
}

var magic = MQCalcMagic(num[0], num[1], num[2], num[3])
if notable {
  print(magic[0])
  print(magic[1])
  print(magic[2])
  print(magic[3])
} else {
  print(MQRenderSquare(magic))
}