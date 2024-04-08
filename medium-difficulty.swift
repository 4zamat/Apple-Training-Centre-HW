//@@@@@@@@@@@@@@@@@@@@@
//       Task 1
//@@@@@@@@@@@@@@@@@@@@@
// camelCase ⇄ snake_case
// Create two functions toCamelCase() and toSnakeCase() that each take a single string and convert it into either camelCase or snake_case. If you're not sure what these terms mean, check the Resources tab above.
// toCamelCase("hello_edabit") ➞ "helloEdabit"
// toSnakeCase("helloEdabit") ➞ "hello_edabit"
// toCamelCase("is_modal_open") ➞ "isModalOpen"
// toSnakeCase("getColor") ➞ "get_color"

var camelCase = "helloEdabit"
var snakeCase = "hello_edabit"

toCamelCase(str: snakeCase)
toSnakeCase(str: camelCase)

func toCamelCase(str: String) {
  var temp = ""
  var capitalize = false
  
  for ch in str {
    if capitalize {
      temp = temp + String(ch).uppercased()
      capitalize = false
      continue
    }
    if String(ch) != "_" {
      temp = temp + String(ch)
    } else {
      capitalize = true
      continue
    }
  }
  print(temp)
}

func toSnakeCase(str: String) {
  var temp = ""
  let uppercaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  for ch in str {
    if uppercaseLetters.contains(ch) {
      temp = temp + "_" + String(ch).lowercased()
      continue
    } else {
      temp = temp + String(ch)
    }
  }
  print(temp)
}


//@@@@@@@@@@@@@@@@@@@@@
//       Task 2
//@@@@@@@@@@@@@@@@@@@@@
// LCM of More Than Three Numbers
// Создайте функцию, которая принимает массив из более чем трех чисел и возвращает наименьшее общее кратное
// lcmOfArray([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) ➞ 2520
// lcmOfArray([13, 6, 17, 18, 19, 20, 37]) ➞ 27965340
// lcmOfArray([44, 64, 12, 17, 65]) ➞ 2333760
func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

func lcm(_ numbers: [Int]) -> Int {
    var result = numbers[0]
    for i in 1..<numbers.count {
        result = (result * numbers[i]) / gcd(result, numbers[i])
    }
    return result
}

let numbers = [13, 6, 17, 18, 19, 20, 37]
print("LCM of \(numbers) is: \(lcm(numbers))") 


//@@@@@@@@@@@@@@@@@@@@@
//       Task 3
//@@@@@@@@@@@@@@@@@@@@@
// Return the Index of the First Vowel
// Создайте функцию, которая возвращает индекс первой гласной в строке.
// firstVowel("apple") ➞ 0
// firstVowel("hello") ➞ 1
// firstVowel("STRAWBERRY") ➞ 3
// firstVowel("pInEaPPLe") ➞ 1

var str = "pInEaPPLe"
firstVowel(str: str)
func firstVowel(str: String) {
  let vowels = "aeiouAEIOU"
  var count = 0
  for ch in str {
    if vowels.contains(ch) {
      print(count)
      break
    }
    count = count + 1
  }
}

//@@@@@@@@@@@@@@@@@@@@@
//       Task 4
//@@@@@@@@@@@@@@@@@@@@@
// Numbers in Strings
// Создайте функцию, которая принимает массив строк и возвращает массив, содержащий только те строки, в которых есть числа. Если строк, содержащих числа, нет, верните пустой массив.
// numInStr(["1a", "a", "2b", "b"]) ➞ ["1a", "2b"]
// numInStr(["abc", "abc10"]) ➞ ["abc10"]
// numInStr(["abc", "ab10c", "a10bc", "bcd"]) ➞ ["ab10c", "a10bc"]
// numInStr(["this is a test", "test1"]) ➞ ["test1"]
numInStr(arr:["this is a test", "test1"])
func numInStr(arr: [String]) {
  let numbers = "0123456789"
  var arr_nums = [String]()

  outerLoop: for str in arr {
    for ch in str {
      if numbers.contains(ch) {
        arr_nums.append(str)
        continue outerLoop
      }
    }
  }
  print(arr_nums)
}
