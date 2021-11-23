import UIKit

var str = "Hello, playground"

var array = ["AAS","ASSS","CSSW","SFC", "SS"]

var sortedNames = array.sorted { ($0.count > $1.count) }

print (sortedNames)


let serailQueue = DispatchQueue(label: "serialQueue")
let concurrentQueue = DispatchQueue(label: "concurrent", qos: .background, attributes: .concurrent)

var dict = [Int: String]()
dict = [2: "ABS"]

//MARK: Playground Xcode

//Создание цикла

//for index in 1...3 {
//    print(index)
//}

//Создание label
//let label = UILabel()
//label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//label.backgroundColor = .red
//label.layer.cornerRadius = 50
//label.clipsToBounds = true

// комментарий
/*
многострочный комментарий
 */

//ЗАНЯТИЕ № 1
//MARK: Константы и переменные

//Константа (Apple рекомендует создавать все объекты в let)
//let name = 10
//Переменная
var nameVar = 11
nameVar = 12
/*
Основные понятия:
 Объявление - создание нового объекта
 Инициализация - присвоение значение
*/

//MARK: - Правила именования констант и переменных

//1. Camel Case
let teacherFirstName = 1
 
//2. Snake Case
let teacher_Second_Name = 2

//MARK: Операторы

// Оператор - команда, выполняющая определенную функцию
// +
// Операнд - значение, с которым оператор производит операцию
// a + b

//Виды операторов:
// 1. Унарные - выполняют операцию с одним операндом
// 1.1 Префиксные
// -a, !a
// 1.2 Постфиксные
// a?

// 2. Бинарные - выполняют операцию с двумя операндами
// a + b
// 3. Структурные - влияют на ход выполнения программы
// a ? b : c

//Оператор присваивания ( = ) является особым бинарным оператором

//Value type - копирование

//var myAge = 32
//var yourAge = myAge
//myAge = 33
//yourAge = 34
//print(myAge, yourAge)

//Reference type - ссылка на одно и то же значение

//MARK: Арифметические операторы
//let a = 10
//let b = 3
// Сложение +
//a + b
// Вычитание -
//a - b
// Умножение *
//a * b
// Деление /
//a / b
// Оператор целочисленного деления %
//a % b
// Операторр унарного минуса (-без пробела)
//-a
//
//-a - -b
// Оператор унарного плюса (+без пробела)
//+a

// Составные операторы присваивания - оператор присваивания ( = ) и операция
//var a = 10
//var b = 3
// +=
//a += 3
//a + 3
//a = a + 3
//a += 3
//print(a)
// -=
//a -= 3
// *=
//a *= 3
// /=
//a %= 4
// %=

//MARK: Операторы сравнения
//Возвращают Bool

// Равно ==
//if a >= b {
//    print("true")
//}
// Не равно !=
//
// Больше <
//
// Меньше >

// Больше или равно >=

// Меньше или равно <=

//MARK: Операторы диапазона

// Оператор замкнутого диапазона
// Задает диапазон от a до b, включая a и b

//for index in 1...6 {
//    print(index)
//}

// Оператор полузамкнутого диапазона
// Задает диапазон от a до b, исключая b

//for index in 1..<6 {
//    print(index)
//}

// Разновидность полузамкнутого диапазона - односторонний диапазон

//let range = ...5
//range.contains(-3)

//MARK: Логические операторы

let first = true
let second = false
let third  = false

// Логическое НЕ (!a)
!first

// Логическое И (a && b)
// оба операнда равны true

if first && second {
//    print("true")
} else {
//    print("false")
}

// Логическое ИЛИ (a || b )
// один из операндов равен true

if first || second {
//    print("true")
} else {
//    print("false")
}

//Комбинирование логических операторов

if first && (second || third) {
    print("true")
} else {
    print("false")
}













//MARK: Домашнее задание

// ЗАДАНИЕ 1 - МИНУТКА ВИЗУАЛИЗАЦИИ
// 1.1 Создайте константу (имя выбираете самостоятельно). Присвойте ей значение равное той сумме (в рублях), которую вы хотели бы зарабатывать
// 1.2 Создайте еще одну константу (имя выбираете самостоятельно). Присвойте ей значение вашей зарплаты в $ (по курсу 75р за $1)
// 1.3 Вас повышают и прибавляют к зарплате 50 000р. Прибавте к своей зарплате 50000
// 1.4 Исправте ошибку, о которой Вас предупреждают
// 1.5 Выведете в консоль Вашу зарплату в рублях и в долларах


var mySalary = 100_000
var mySalaryInDollars = mySalary / 75
print("Моя зарплата в долларах составляет \(mySalaryInDollars) доллара")

mySalary += 50_000
print("Моя зарплата в рублях состааляет \(mySalary) рублей")


// ЗАДАНИЕ 2 - ВЫЧИСЛЯЕМ ПЛОЩАДЬ ТРЕУГОЛЬНИКА
// 2.1 Дан треугольник. Известно: Основание треугольника - 10, Высота - 12
// 2.2 Необходимо найти площадь треугольника
// P.S. Создать две константы (основание и высота). Присвоить соответствующие значения. Создать еще одну константу (площадь) и произвести вычисления


let baseTriangle: Int = 10
let heightTriangle: Int = 12

let squareTriangle: Int
squareTriangle = baseTriangle * heightTriangle / 2

//ЗАДАНИЕ 3 - ОСИ КООРДИНАТ
// 3.1 Дан прямоугольник, периметр которого равен 20. Известно, что высота прямоугольника равна 4. Создайте все необходимые константы.
// 3.2 Найти длину прямоугольника (создать отдельную константу)
// 3.3 Левая верхняя вершина прямоугольника имеет координаты по оси Х: -3, по Y: 2. Найти координаты верхней правой вершины. Создайте все необходимые константы.
// 3.4 Найти координаты нижней правой вершины


let perimetrRectangle = 20
let heightRectangle = 4

let lengthRectangle = perimetrRectangle / 2 - heightRectangle

let topLeftVertexX = -3
let topLeftVertexY = 2

let topRightVertexX = topLeftVertexX + lengthRectangle
let topRightVertexY = topLeftVertexY
print ("верхняя правая вершина прямоугольника имеет координаты (\(topRightVertexX); \(topRightVertexY))")

let bottomRightVertexX = topRightVertexX
let bottomRighrVertexY = topRightVertexY - heightRectangle
print ("нижняя правая вершина прямоугольника имеет координаты (\(bottomRightVertexX); \(bottomRighrVertexY))")

//ЗАДАНИЕ 4 - КАКОЕ ЧИСЛО Я ЗАГАДАЛ?
    // 4.1 Я загадал число. Умножил его на 4
    // 4.2 Результат поделил на 3
    // 4.3 Из результата вычел 10
    // 4.4 К результату прибавил 24
    // В результате получил 34. Какое число я загадал?

let result = 34
let  myNumber = (result - 24 + 10) * 3 / 4

print ("я загадал число \(myNumber)")


// Задание по поиску дубликатов элементов в массиве
var arrayNaturals = [1,8,9,5,9,6,4,7,5] // naturals numbers are > 0
    let N = array.count

    print("Duplicates:")
    for i in 1..<N {
        if arrayNaturals[abs(arrayNaturals[i])-1] >= 0 {
            arrayNaturals[abs(arrayNaturals[i])-1] = -arrayNaturals[abs(arrayNaturals   [i])-1]
        } else {
            print(abs(arrayNaturals[i]))
        }
    }

//ЗАНЯТИЕ № 2
//Фундаментальные типы данных

// Int - Целочисленные значения
// Double - Дробные числа (до 15 чисел после запятой), Apple рекомендует
// Float - Дробные числа (до 6 чисел после запятой)
// Bool - Логическое значение (true/false)
// Character - Символ
// String - Строковые значения
// nil - Опционал

//MARK: - Объявление

// Явное указание типа

let firstNumber = Int()
let secondNumber: Int = 3

// Неявное указание типа

let intType = 3
let stingType = "hello"
let boolType = true

let doubleNumber: Double = 10
let floatNumber: Float = 10
let boolValue: Bool = true
let charValue: Character = "a"
let stingValue: String = "string"
let nilValue: Int?

//Максимальное и минимальное значение
let maxInt = Int.max
let minInt = Int.min
// +ДЗ: Как работать с числами больше Int.max

//Округление
var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

//MARK: - Приведение типов
let a = 10
let b: Double = 5.5
let c = Int(b)
let d = Double(a)

let e = "4"
let f = Int(e)
let g = String(b)

//Операции с разными типами

let h = 10
let i: Double = 5.5
let j: Float = 4.5
let k = Double(h) + i
let l = Double(h) + Double(j)

//MARK: - String

// Многострочный литерал
let someText = """
some
text
"""
//print(someText)

// Кавычки в String

let quotedString = "This is my \"QuotedString\""
//print(quotedString)

//Свойства String
var propertiesString = "My text"
propertiesString.count
propertiesString.isEmpty

propertiesString[propertiesString.startIndex]
//propertiesString[propertiesString.endIndex] // error

//endIndex - позиция после последнего символа
//before, after - доступ к индексу

//Доступ к индексу по номеру

let index = propertiesString.index(propertiesString.startIndex, offsetBy: 4)
propertiesString[index]

//Добавление и удаление символа

propertiesString.insert("!", at: propertiesString.endIndex)
propertiesString.insert("!", at: index)

propertiesString.remove(at: index)
propertiesString

let range = propertiesString.index(propertiesString.endIndex, offsetBy: -3)..<propertiesString.endIndex
propertiesString.removeSubrange(range)
propertiesString

propertiesString.removeAll()
propertiesString.isEmpty

//Сравнение строк

let firstString = "like you"
let secondString = "like you!"
firstString == secondString
firstString != secondString

//Создание строки из массива символов

let swiftCharacters: [Character] = ["S", "w", "i", "f", "t"]
let swiftString = String(swiftCharacters)

//Конкатенация строк

var stringMy = "My"
let stringName = "name"
var stringMyName = stringMy + " " + stringName

// Составной оператор

stringMy += " name"

// Добавление символа

let simbol: Character = "!"
stringMyName.append(simbol)

//Интерполяция строк

let myAge = 33
let ageString = "My age is \(myAge)"

//MARK: - Опционал

let ageField = "32"
var userAge: Int? = Int(ageField)

//force - unwrap !
//print(userAge!)

// привязка опционалов if-else

if userAge == nil {
    print("nil")
} else {
    userAge = Int(ageField)
}

let someString = "12s3"
var someInt = Int(someString)

if someInt == nil {
    print("nil")
} else {
    someInt = Int(someString)
}

// Оператор guard

func setUserAge() {
    print("1")
    guard let userAge = Int(ageField) else { return }
    print(userAge)
}

setUserAge()

//MARK: - ДОМАШНЕЕ ЗАДАНИЕ
// Представьте, что вы иностранец, который учит русский алфавит. Вам дали такой шаблон:

var alphabet = "абвгдежзиклмнопрстуфхцчшщъыьэюя"

// 1. Вы знаете, что в русском алфавите 33 буквы. Проверьте количество букв

alphabet.count

// 2. Выведете в консоль фразу: "В моем шаблоне _ буква, а в русском алфавите 33 буквы. Не хватает _ букв"

print ("В моем шаблоне \(alphabet.count) букв, а в русском алфавите 33 буквы. Не хватает \(33 - alphabet.count) букв")


// 3. Загуглив, вы узнали что не хватает буквы ё, и она 7 по порядку, и буквы й, она - 11ая.
// Добавьте недостающие буквы

alphabet.insert("ё", at: alphabet.index(alphabet.startIndex, offsetBy: 6))
alphabet.insert("й", at: alphabet.index(alphabet.startIndex, offsetBy: 10))

/* 4. Для выполнения этого задания создайте константу letter
После устранения всех неточностей вы решаете написать домой письмо на русском следующего содержания:
Привет!
Я в России! Представляешь, у них _ буквы в алфавите, а в английском только 26!
*/

var letter: String = ""

letter = """
Привет!
Я в России! Представляешь, у них 33 буквы в алфавите, а в английском только 26!
"""

print (letter)

/* 5. Для выполнения этого задания создайте:
- константы percentForRuAlphabet и percentForUsaAlphabet
- константы с явно заданным типом: oldWeight(тип Int, значение 120), weightNow(тип Double, значение 85.4), difference(тип Double)
Потом вы узнаете еще один интересный факт о гласных буквах и, пока еще не отправили письмо, решили дополнить его с новой строчки следующим создержанием:
Если предположить, что буква Y обозначает и гласный и согласный звук, то в русском и английском алфавите по 21 согласной букве, что сооставляет _ % от общего числа букв для русского алфавита и _ % для английского.
Кстати, я перестал есть фаст фуд и пришел в отличную форму! Я весил _ кг, а теперь вешу _! В итоге похудел на _ кг
*/

let percentForRuAlphabet = 21 * 100 / alphabet.count
let percentForUsaAlphabet = 21 * 100 / 26

let oldWeight = 120
let weightNow: Double = 85.4
let difference: Double = Double(oldWeight) - weightNow

 letter += """
 Если предположить, что буква Y обозначает и гласный и согласный звук, то в русском и английском алфавите по 21 согласной букве, что сооставляет \(percentForRuAlphabet) % от общего числа букв для русского алфавита и \(percentForUsaAlphabet) % для английского.
Кстати, я перестал есть фаст фуд и пришел в отличную форму! Я весил \(oldWeight) кг, а теперь вешу \(weightNow)! В итоге похудел на \(difference)
"""

print (letter)


// ARC. Циклы сильных ссылок

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    var apartment: Apartment?
    deinit {
        print("\(name) освобождается")
    }
}

class Apartment {
    let unit: String
    
    init(unit: String) {
        self.unit = unit
    }
    
    weak var tenant: Person?
    deinit {
        print("Апартаменты \(unit) освобождаются" )
    }
}

var bob: Person?
var unit: Apartment?

bob = Person(name: "Jonh Doe")
unit = Apartment(unit: "256A")

bob?.apartment = unit
unit?.tenant = bob

bob = nil
unit = nil


// 6. Потом вы вспоминаете, что забыли поставить точку в конце предложения и хотите это исправить
// Добавьте точку и выведете в консоль весь текст письма

letter.append(".")
print(letter)

//MARK: Типы коллекций

//MARK: Tuple - Тюплы, Кортежи
//Tuple - служит для объединения значений РАЗЛИЧНЫХ типов
//Tuple - рекомендуется не более 7 элементов! (если больше, то класс или структура)

// Создание кортежа
let firstTuple = (200, "string", true)

// Пустой кортеж - это возвращаемый тип функций, которые ничего не возвращают
let nilTuple: (key: String, val: Int)? = nil
//https://developer.apple.com/documentation/swift/void

// Тип данных кортежа - фиксированная упорядоченная последовательность
let thirdTuple = ("string", 200, true)
type(of: firstTuple) == type(of: thirdTuple)

// Задать тип кортежа
let secondTuple: (Double, Int, Float) = (10, 10, 10)

//Обращение к элементам кортежа
let sergTuple = ("Sergey", 32, 178)
sergTuple.0
sergTuple.1
sergTuple.2

let (name, age, height) = sergTuple
name
age
height

let (myName, _, _) = sergTuple
myName

let exampleTuple = (name: "Sergey", age: 32, height: 178)
exampleTuple.name
exampleTuple.age
exampleTuple.height

// Взаимодействие с кортежем

var changeTuple = (0, "")
let constTuple = (10, "1")
changeTuple = constTuple
changeTuple

changeTuple.0 = 100
changeTuple

//Сравнение кортежей (поэлементно)

let aTuple = (11, 3)
let bTuple = (11, 2)
aTuple < bTuple

//MARK: Set - Сеты, Наборы, Множества
//Set - НЕУПОРЯДОЧЕННАЯ коллекция
//Каждый отдельный ЭЛЕМЕНТ - УНИКАЛЕН
//ОДИНАКОВЫЙ ТИП ДАННЫХ

// При создании набора необходимо ЯВНО указывать тип

let setOne: Set<Int> = [1, 2, 3]
let setTwo: Set = [1, 2, 3]
// P.S. Под капотом набор это не хаус, коллекция с определенным порядком. Поэтому возможен перебор.
// Подробнее можно прочитать по запросу "протокол Hashable"

let setThree: Set = Set<Int>(arrayLiteral: 1, 2, 3)
let setFour: Set = Set(arrayLiteral: 1, 2, 3)

//Создание пустого набора
let emptySet = Set<String>()
let secondEmptySet: Set<Int> = []

//Добавления нового элемента
var mySet: Set = [1, 2, 3]
mySet.insert(4)
mySet

//Количество элементов
mySet.count

//Проверка значение
mySet.contains(2)

//Удаление элемента
mySet.remove(3)
mySet

//Удаление набора
//mySet.removeAll()
mySet = []

//Действия с наборами
let firstSet: Set = [1, 2, 3]
let secondSet: Set = [4, 5, 6]
let thirdSet: Set = [1, 4, 7]

//intersection - общие элементы
let inter = firstSet.intersection(thirdSet)

//symmetricDifference - не общие элементы
let symmetric = firstSet.symmetricDifference(thirdSet)

//union - все элементы обоих наборов
let union = firstSet.union(secondSet)

//subtracting - элементы первого массива, которые не входят во второй
let subtr = firstSet.subtracting(thirdSet)

//Сортировка набора
let sortedSet: Set = [4, 3, 1, 2]
var aaa = sortedSet.sorted()
aaa.reverse()

//Эквивалентность наборов

let superSet: Set = [1, 2, 3, 4, 5, 6, 7]
let subSet: Set = [1, 2, 3]
let halfSet: Set = [7, 8, 9]

//Наборы эквиваленты, если содержат одинаковые элементы
superSet == subSet

let testSet = subSet
testSet == subSet

//isSuperset
superSet.isSuperset(of: subSet)

//isSubset
subSet.isSubset(of: superSet)

//isDisjoint - проверка на общие элементы
halfSet.isDisjoint(with: subSet)


//MARK: Array - Массив
//Array - УПОРЯДОЧЕННАЯ коллекция элементов
//Каждый отдельный ЭЛЕМЕНТ - НЕуникален
//ОДИНАКОВЫЙ ТИП ДАННЫХ
//Для доступа используются ИНДЕКСЫ

//Создание пустого массива
let firstArray: [Int]
let secondArray = [Int]()
let thirdArrat: [Int] = []

//Создание массива через Set
let number: Set = [1, 2, 3]
let numberArray = Array(number)

//Создание массива при помощи диапазона
let dArray = Array(0...5)

//Создание массива при помощи повтора значения
let repeateArray = Array(repeating: 10, count: 5)

//Доступ к элементам массива
var indexArray = [1, 2, 3, 4, 5]
indexArray[1]

//Изменение элементов массива
indexArray[0] = 0
indexArray

indexArray[1...3] = [9]
indexArray

//Добавление элементов в массив
var addArray = [1, 2, 3]
addArray.append(4)
addArray

addArray.insert(5, at: 2)

//Удаление элементов массива
addArray.remove(at: 2)
addArray

addArray.removeFirst()
addArray
addArray.removeLast()
addArray
//addArray.removeAll()
addArray = []

//drop - новый массив
addArray = [1, 2, 3, 4]
let dropArray = addArray.dropLast()
let dropThree = addArray.dropLast(3)

//Проверка на наличие
addArray.contains(5)

//Array - value type
var oneArray = [1, 2, 3]
let twoArray = oneArray
oneArray[0] = 0
oneArray
twoArray

//Сравнение массивов
var aArray = [1, 2, 3]
let bArray = [2, 2, 3]
aArray == bArray

//Сложение массивов
aArray += bArray
aArray

//Многомерные массивы
let multyArray = [[Int]]()
let exampleArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
exampleArray[1][1]

//Свойства массива
var propArray = [2, 1, 3, 4]
propArray.count
propArray.isEmpty
propArray.first
propArray.last
propArray.min() //если тип данных можно сравнить
propArray.max() //если тип данных можно сравнить
//propArray.reverse()
propArray
propArray.sorted()
propArray
propArray.sort()
propArray


//MARK: Dictionary - Словарь
//Dictionary - НЕУПОРЯДОЧЕННАЯ коллекция
//Для доступа используются КЛЮЧИ
//Каждый отдельный КЛЮЧ - УНИКАЛЕН
//Все КЛЮЧИ имеют ОДИНАКОВЫЙ ТИП
//Все ЗНАЧЕНИЯ имеют ОДИНАКОВЫЙ ТИП

// Создание словаря
let firstDictionary = [String : Int]()
let secondDictionary: [String : Int] = [:]

let exampleDictionary = ["Ann": 1000, "Mike": 5000]

//Создание словаря на основе массива коллекции - uniqueKeysWithValues
let setArray = [(1, 2), (3, 4), (5, 6)]
let setArrayDictionary = Dictionary(uniqueKeysWithValues: setArray)

let nameArray = ["Ann", "Bob", "Mike"]
let ageArray = [20, 32, 41]
var unitDictionary = Dictionary(uniqueKeysWithValues: zip(nameArray, ageArray))

//Получение и изменение элементов словаря

unitDictionary["Ann"]
unitDictionary["Ann"] = 21
unitDictionary
unitDictionary.updateValue(33, forKey: "Bob")
unitDictionary
unitDictionary["Tom"] = 50
unitDictionary

//Удаление
unitDictionary["Tom"] = nil
unitDictionary
unitDictionary.removeValue(forKey: "Ann")
unitDictionary


//unitDictionary.removeAll()
//unitDictionary = [:]

//Свойства словаря

unitDictionary.count
unitDictionary.isEmpty
unitDictionary.keys
unitDictionary.values
let test: Set = Set(unitDictionary.keys)



//MARK: Домашнее задание
// 1. Прочитать про ДИАПАЗОНы
// 2. String это тоже коллекция
// 3. Протокол Hashable








