
// Medium of Two Arrays

let array1 = [1, 3]
let array2 = [2, 4]

func findMedians(array1: [Int], array2: [Int]) -> Double {

  // Create a single array
  let wholeArray = array1 + array2
  
  // Sort array
  let sortedArray = wholeArray.sorted()
  
  // Check for two center values
  if sortedArray.count % 2 == 0 {
    
    let first = sortedArray[(sortedArray.count - 1) / 2]
    let second = sortedArray[((sortedArray.count - 1) / 2) + 1]
    
    // Turn first and second into Double values
    
    let firstDouble = Double(first)
    let secondDouble = Double(second)
    
    let returnValue = (firstDouble + secondDouble) / 2
    
    return returnValue
  } else {
    
    let only = sortedArray[(sortedArray.count - 1) / 2]
    let onlyDouble = Double(only)
    
    return onlyDouble
  }
}

print(findMedians(array1: array1, array2: array2))

// 2.5
