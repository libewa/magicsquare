import XCTest
import mqkit

func arrSum(_ arr: [Int]) -> Int {
  return arr.reduce(0) { accumulator, element in
    accumulator + element
  }
}
final class Swift_Package_ManagerTests: XCTestCase {
    func testSquare() throws {
        let magic = MQCalcMagic(Int.random(in: 10...100), Int.random(in: 10...100), Int.random(in: 10...100), Int.random(in: 10...100))
        let rowSums: [Int] = [arrSum(magic[0]), arrSum(magic[1]), arrSum(magic[2]), arrSum(magic[3])]
        for x in rowSums {
          for y in rowSums {
            XCTAssertEqual(rowSums[x], rowSums[y])
          }
        }
    }
}
