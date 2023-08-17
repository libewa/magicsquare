// The Swift Programming Language
// https://docs.swift.org/swift-book

public enum MQMagicSquareError: Error {
    case tooManyArgs
    case modifiedLargerThanModifier
}

public func addPadding(to num: Int, targetLength: Int) throws -> String {
  let str = String(num)
  let currentLength = str.count
  guard currentLength <= targetLength else {
    throw MQMagicSquareError.modifiedLargerThanModifier
  }
  return String(repeating: " ", count: targetLength - currentLength) + str
}

public func MQCalcMagic(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> [[Int]] {
    return [
        [a, b, c, d],
        [c-1, d+1, a-1, b+1],
        [d+1, c+1, b-1, b-1],
        [b, a-2, d+2, c]
    ]
}

public func MQRenderSquare(_ square: [[Int]]) -> String {
    return """
    \(try! addPadding(to: square[0][0], targetLength: 3))|\(try! addPadding(to: square[0][1], targetLength: 3))|\(try! addPadding(to: square[0][2], targetLength: 3))|\(try! addPadding(to: square[0][3], targetLength: 3))
    ===============
    \(try! addPadding(to: square[1][0], targetLength: 3))|\(try! addPadding(to: square[1][1], targetLength: 3))|\(try! addPadding(to: square[1][2], targetLength: 3))|\(try! addPadding(to: square[1][3], targetLength: 3))
    ===============
    \(try! addPadding(to: square[2][0], targetLength: 3))|\(try! addPadding(to: square[2][1], targetLength: 3))|\(try! addPadding(to: square[2][2], targetLength: 3))|\(try! addPadding(to: square[2][3], targetLength: 3))
    ===============
    \(try! addPadding(to: square[3][0], targetLength: 3))|\(try! addPadding(to: square[3][1], targetLength: 3))|\(try! addPadding(to: square[3][2], targetLength: 3))|\(try! addPadding(to: square[3][3], targetLength: 3))
    """
}
