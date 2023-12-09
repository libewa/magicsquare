import XCTest
import mqkit

func arrSum(_ arr: [Int]) -> Int {
  return arr.reduce(0) { accumulator, element in
    accumulator + element
  }
}

func columnSums(matrix: [[Int]]) -> [Int] {
    guard let numRows = matrix.first?.count, numRows > 0 else {
        return []
    }

    var columnSums = Array(repeating: 0, count: numRows)

    for row in matrix {
        guard row.count == numRows else {
            fatalError("The matrix must have consistent row lengths")
        }

        for (index, value) in row.enumerated() {
            columnSums[index] += value
        }
    }

    return columnSums
}

final class magicsquareTests: XCTestCase {
    func testSquare() throws {
        let magic = MQCalcMagic(Int.random(in: 10...100), Int.random(in: 10...100), Int.random(in: 10...100), Int.random(in: 10...100))
        let rowSums: [Int] = [arrSum(magic[0]), arrSum(magic[1]), arrSum(magic[2]), arrSum(magic[3])]
        let colSums = columnSums(matrix: magic)
        print("""
        +++
        \(MQRenderSquare(magic))
        +++
        """)
        for x in rowSums {
          for y in colSums {
            print("Comparing \(x) with \(y)")
            XCTAssertEqual(x, y)
          }
        }
    }
}
