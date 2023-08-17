// The Swift Programming Language
// https://docs.swift.org/swift-book

public enum MQMagicSquareError: Error {
    case tooManyArgs
}

func numberWithSpacing(_ num: Int) -> String {
    return "\(num < 10 && num >= 0 ? "  " : num < 100 ? " " : "")\(num)"
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
    \(numberWithSpacing(square[0][0]))|\(numberWithSpacing(square[0][1]))|\(numberWithSpacing(square[0][2]))|\(numberWithSpacing(square[0][3]))
    ===============
    \(numberWithSpacing(square[1][0]))|\(numberWithSpacing(square[1][1]))|\(numberWithSpacing(square[1][2]))|\(numberWithSpacing(square[1][3]))
    ===============
    \(numberWithSpacing(square[2][0]))|\(numberWithSpacing(square[2][1]))|\(numberWithSpacing(square[2][2]))|\(numberWithSpacing(square[2][3]))
    ===============
    \(numberWithSpacing(square[3][0]))|\(numberWithSpacing(square[3][1]))|\(numberWithSpacing(square[3][2]))|\(numberWithSpacing(square[3][3]))
    """
}
