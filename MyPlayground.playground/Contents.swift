import UIKit

//var str = "Hello, playground"
//
//var array = ["AAS","ASSS","CSSW","SFC", "SS"]
//var sortedNames = array.sorted { ($0.count > $1.count) }
//print (sortedNames)
//
//let serailQueue = DispatchQueue(label: "serialQueue")
//let concurrentQueue = DispatchQueue(label: "concurrent", qos: .background, attributes: .concurrent)
//
//var dict = [Int: String]()
//dict = [2: "ABS"]

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


//var mySalary = 100_000
//var mySalaryInDollars = mySalary / 75
//print("Моя зарплата в долларах составляет \(mySalaryInDollars) доллара")
//
//mySalary += 50_000
//print("Моя зарплата в рублях состааляет \(mySalary) рублей")


// ЗАДАНИЕ 2 - ВЫЧИСЛЯЕМ ПЛОЩАДЬ ТРЕУГОЛЬНИКА
// 2.1 Дан треугольник. Известно: Основание треугольника - 10, Высота - 12
// 2.2 Необходимо найти площадь треугольника
// P.S. Создать две константы (основание и высота). Присвоить соответствующие значения. Создать еще одну константу (площадь) и произвести вычисления


//let baseTriangle: Int = 10
//let heightTriangle: Int = 12
//
//let squareTriangle: Int
//squareTriangle = baseTriangle * heightTriangle / 2

//ЗАДАНИЕ 3 - ОСИ КООРДИНАТ
// 3.1 Дан прямоугольник, периметр которого равен 20. Известно, что высота прямоугольника равна 4. Создайте все необходимые константы.
// 3.2 Найти длину прямоугольника (создать отдельную константу)
// 3.3 Левая верхняя вершина прямоугольника имеет координаты по оси Х: -3, по Y: 2. Найти координаты верхней правой вершины. Создайте все необходимые константы.
// 3.4 Найти координаты нижней правой вершины


//let perimetrRectangle = 20
//let heightRectangle = 4
//
//let lengthRectangle = perimetrRectangle / 2 - heightRectangle
//
//let topLeftVertexX = -3
//let topLeftVertexY = 2
//
//let topRightVertexX = topLeftVertexX + lengthRectangle
//let topRightVertexY = topLeftVertexY
//print ("верхняя правая вершина прямоугольника имеет координаты (\(topRightVertexX); \(topRightVertexY))")
//
//let bottomRightVertexX = topRightVertexX
//let bottomRighrVertexY = topRightVertexY - heightRectangle
//print ("нижняя правая вершина прямоугольника имеет координаты (\(bottomRightVertexX); \(bottomRighrVertexY))")

//ЗАДАНИЕ 4 - КАКОЕ ЧИСЛО Я ЗАГАДАЛ?
    // 4.1 Я загадал число. Умножил его на 4
    // 4.2 Результат поделил на 3
    // 4.3 Из результата вычел 10
    // 4.4 К результату прибавил 24
    // В результате получил 34. Какое число я загадал?

//let result = 34
//let myNumber = (result - 24 + 10) * 3 / 4
//
//print ("я загадал число \(myNumber)")


// Задание по поиску дубликатов элементов в массиве
//var arrayNaturals = [1,8,9,5,9,6,4,7,5] // naturals numbers are > 0
//    let N = array.count
//
//    print("Duplicates:")
//    for i in 1..<N {
//        if arrayNaturals[abs(arrayNaturals[i])-1] >= 0 {
//            arrayNaturals[abs(arrayNaturals[i])-1] = -arrayNaturals[abs(arrayNaturals   [i])-1]
//        } else {
//            print(abs(arrayNaturals[i]))
//        }
//    }

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

//let intType = 3
//let stingType = "hello"
//let boolType = true
//
//let doubleNumber: Double = 10
//let floatNumber: Float = 10
//let boolValue: Bool = true
//let charValue: Character = "a"
//let stingValue: String = "string"
//let nilValue: Int?
//
////Максимальное и минимальное значение
//let maxInt = Int.max
//let minInt = Int.min
//// +ДЗ: Как работать с числами больше Int.max
//
////Округление
//var longitude: Float
//longitude = -86.783333
//longitude = -186.783333
//longitude = -1286.783333
//longitude = -12386.783333
//longitude = -123486.783333
//longitude = -1234586.783333

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

//print ("В моем шаблоне \(alphabet.count) букв, а в русском алфавите 33 буквы. Не хватает \(33 - alphabet.count) букв")


// 3. Загуглив, вы узнали что не хватает буквы ё, и она 7 по порядку, и буквы й, она - 11ая.
// Добавьте недостающие буквы

alphabet.insert("ё", at: alphabet.index(alphabet.startIndex, offsetBy: 6))
alphabet.insert("й", at: alphabet.index(alphabet.startIndex, offsetBy: 10))

/* 4. Для выполнения этого задания создайте константу letter
После устранения всех неточностей вы решаете написать домой письмо на русском следующего содержания:
Привет!
Я в России! Представляешь, у них _ буквы в алфавите, а в английском только 26!
*/

//var letter: String = ""
//
//letter = """
//Привет!
//Я в России! Представляешь, у них 33 буквы в алфавите, а в английском только 26!
//"""
//
//print (letter)

/* 5. Для выполнения этого задания создайте:
- константы percentForRuAlphabet и percentForUsaAlphabet
- константы с явно заданным типом: oldWeight(тип Int, значение 120), weightNow(тип Double, значение 85.4), difference(тип Double)
Потом вы узнаете еще один интересный факт о гласных буквах и, пока еще не отправили письмо, решили дополнить его с новой строчки следующим создержанием:
Если предположить, что буква Y обозначает и гласный и согласный звук, то в русском и английском алфавите по 21 согласной букве, что сооставляет _ % от общего числа букв для русского алфавита и _ % для английского.
Кстати, я перестал есть фаст фуд и пришел в отличную форму! Я весил _ кг, а теперь вешу _! В итоге похудел на _ кг
*/

//let percentForRuAlphabet = 21 * 100 / alphabet.count
//let percentForUsaAlphabet = 21 * 100 / 26
//
//let oldWeight = 120
//let weightNow: Double = 85.4
//let difference: Double = Double(oldWeight) - weightNow
//
// letter += """
// Если предположить, что буква Y обозначает и гласный и согласный звук, то в русском и английском алфавите по 21 согласной букве, что сооставляет \(percentForRuAlphabet) % от общего числа букв для русского алфавита и \(percentForUsaAlphabet) % для английского.
//Кстати, я перестал есть фаст фуд и пришел в отличную форму! Я весил \(oldWeight) кг, а теперь вешу \(weightNow)! В итоге похудел на \(difference)
//"""
//
//print (letter)


// ARC. Циклы сильных ссылок

//class Person {
//    let name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    var apartment: Apartment?
//    deinit {
//        print("\(name) освобождается")
//    }
//}
//
//class Apartment {
//    let unit: String
//
//    init(unit: String) {
//        self.unit = unit
//    }
//
//    weak var tenant: Person?
//    deinit {
//        print("Апартаменты \(unit) освобождаются" )
//    }
//}
//
//var bob: Person?
//var unit: Apartment?
//
//bob = Person(name: "Jonh Doe")
//unit = Apartment(unit: "256A")
//
//bob?.apartment = unit
//unit?.tenant = bob
//
//bob = nil
//unit = nil


// 6. Потом вы вспоминаете, что забыли поставить точку в конце предложения и хотите это исправить
// Добавьте точку и выведете в консоль весь текст письма

//letter.append(".")
//print(letter)

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
//age
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

//MARK: - Операторы управления

// Операторы ветвлений
// Операторы повторения

//MARK: оператор условия if

// 4 формы записи:
// - сокращенная
// - стандартная
// - расширенная
// - тернарная

/*
 
 if условие {
    если правда - попадаем в этот блок (нижний блок не выполняется)
 } else {
    если ложь - попадаем в этот блок (верхний блок не выполняется)
 }
 
 */

// СОКРАЩЕННАЯ ФОРМА if

//let a = 4
//let b = 3
//
//if a > b {
//    print("true")
//}

//let c = true
//
//if c {
//    print("c")
//}
//
//if !c == false {
//    print("false")
//}

//  СТАНДАРТНАЯ ФОРМА if

//let language = "Swift"
//
//if language == "Swift" {
//    print("You write for iOS")
//} else {
//    print("You write on another platform")
//}

//let first = true
//let second = false

//if first && second {
//    print("Обе константы true")
//} else {
//    if  first || second {
//        print("Одна из констант равна true")
//    } else {
//        print("Обе константы false")
//    }
//}

// РАСШИРЕННАЯ ФОРМА if

//if first && second {
//    print("Обе константы true")
//} else if  first || second {
//    print("Одна из констант равна true")
//} else {
//    print("Обе константы false")
//}

// ТЕРНАРНАЯ ФОРМА if

// условие ? действие1(true) : действие2(false)

//let d = 7
//let e = 8

//d < e ? print("d < e") : print("d > e")

//let name = "Ann"
//let name2 = "Bob"
//var status = (name == "Serg" || name2 == "Ann" ? "Admin" : "User")
//print("\(name) is \(status)")

//let userStatus = "worker"
//let tax = 0.13
//let salary = 50_000.0
//let total = salary - salary * (userStatus == "worker" ? tax : 0.06)


//MARK: оператор ветвления switch

let yourMark = "C"

switch yourMark {
case "A": print("5")
case "B": print("4")
//case "C": print("3")
case "D": print("2")
case "E": print("1")
default:
//    print("Тебя не было на уроке")
    print("")
}
//Всегда должны быть case-провалы

//Использование диапазонов
let yourAge = 32

if yourAge < 10 {
    print("Тебе меньше 10 лет")
} else if yourAge < 20 {
    print("Тебе меньше 20 лет")
} else if yourAge < 30 {
    print("Тебе меньше 30 лет")
} else if yourAge < 40 {
//    print("Тебе меньше 40 лет")
} else if yourAge < 50 {
    print("Тебе меньше 50 лет")
} else if yourAge < 60 {
    print("Тебе меньше 60 лет")
} else if yourAge < 70 {
    print("Тебе меньше 70 лет")
} else {
    print("Тебе больше 70 лет")
}

switch yourAge {
case ..<10:
    print("Тебе меньше 10 лет")
case ..<20:
    print("Тебе меньше 20 лет")
case ..<30:
    print("Тебе меньше 30 лет")
case ..<40:
//    print("Тебе меньше 40 лет")
    print("")
case ..<50:
    print("Тебе меньше 50 лет")
case ..<60:
    print("Тебе меньше 60 лет")
case ..<70:
    print("Тебе меньше 70 лет")
default:
    print("Тебе больше 70 лет")
}

//Использование кортежей
//Привязка значений (ассоциативные типы)

let point = (3, 1)

switch point {
case (let x, 0):
    print("point y = 0, x = \(x)")
case (0, let y):
    print("point x = 0, y = \(y)")
case let (x, y):
    print("point x = \(x), y = \(y)")
}

// Where

let carBrand = "BMW"
let carColor = "yellow"

switch carBrand {
case "Ford" where carColor == "green" || carColor == "red",
    "BMW" where carColor == "green" || carColor == "red":
    print("1.1")
case "Ford":
    print("1")
case "BMW":
    print("2")
default:
    print("0")
}
//показать предупреждение "Ford", "BMW"
//Если хотя бы один из кейсов соответствует значению, то значит и сам кейс соответствует значению

// break

let firstMark = "D"

switch firstMark {
case "A": print("5")
case "B": print("4")
case "C": print("3")
case "D": break
case "E": break
default:
    break
}

// fallthrough

let secondMark = "B"

switch secondMark {
case "A": print("5")
case "B":
    print("4")
    fallthrough
case "C": print("3")
case "D": print("2")
case "E": print("1")
default:
    break
}

//MARK: - Оператор повторения for - in

//Цикл в диапазонах

for number in 1...5 {
    print(number)
}

for _ in 1..<4 {
    print("WOW")
}

//Цикл в массивах

//let array = ["a", "b", "c", "d", "e"]
//
//for index in array {
//    print(index)
//}

//Цикл в словаре

let dictionary = ["Ann": 1000, "Bob": 2000, "Mike": 3000]

for (name, value) in dictionary {
    print("\(name) has \(value)")
}

for key in dictionary.keys {
    print(key)
}

// Интервалы в цикле

//stride(from:to:by:)

let minutes = 60

//for minute in 0..<minutes {
for minute in stride(from: 0, to: minutes, by: 10) {
    print(minute)
}

//stride(from:through:by:)

let hours = 24
for hour in stride(from: 0, through: hours, by: 6) {
    print(hour)
}

//MARK: - Оператор повторения while

//Цикл While - интрукция будет выполнятся, пока условие не станет false

var aNumber = 0

while aNumber < 5 {
    aNumber += 1
    print(aNumber)
}
//показать пример с зависанием!!!

//Цикл repeate-while - выполняет одну итерацию до того, как происходит проверка условия!!! Цикл повторятся до тех пор, пока условие не станет false

var bNumber = 0

repeat {
    bNumber += 1
    print(bNumber)
} while bNumber < 10


//MARK: - Операторы передачи управления

// continue - прекращает итерацию, начинает новую, но из цикла не выходит

//let twoArray = [1, 2, 4, 2, 5, 6, 7, 2, 5, 2, 4]
var newTwoArray = [Int]()

for (_, value) in twoArray.enumerated() {
    if value == 2 {
        continue
    }
    newTwoArray.append(value)
}
print(newTwoArray)

// break - останавливает выполнение инструкции

let breakArray = [1, 2, 3, 4, 5, 6]

for (_, value) in breakArray.enumerated() {
    if value == 4 {
        break
    } else {
        print(value)
    }
}

//guard

//let age = "32"
//func setAge() {
//    guard let userAge = Int(age) else { return }
//    print(userAge)
//}
//
//setAge()

//MARK: - Домашнее задание

// 1. Оператор assert - механизм утверждений
// 2. Оператор throw

//ЗАДАЧА 1
// 1.1 Создать константу numberOfMonth и присвоить ей любое значение от 1 до 12.
// 1.2 Используя инструкцию if, определить в каком квартале года находится данный месяц, и вывести в консоль сообщение: "Ваш день рождения в _ квартале года"
// 1.3 Сделать тоже самое при помощи инструкции switch

let numberOfMonth = 10

//2.1
if numberOfMonth <= 3 {
    print ("Ваш день рождения в 1 квартале года")
} else if numberOfMonth <= 6 {
    print ("Ваш день рождения во 2 квартале года")
} else if numberOfMonth <= 9 {
    print ("Ваш день рождения в 3 квартале года")
} else {
    print ("Ваш день рождения в 4 квартале года")
}

//2.2
switch numberOfMonth {
case ..<4:
    print ("Ваш день рождения в 1 квартале года")
case ..<7:
    print ("Ваш день рождения в 2 квартале года")
case ..<10:
    print ("Ваш день рождения в 3 квартале года")
default:
    print ("Ваш день рождения в 4 квартале года")
}

//ЗАДАЧА 2
// Человек берет ипотеку
// Сумма ипотеки 1_450_000
// Ипотечная ставка 12% годовых (проценты пересчитываются каждый год от оставшейся от квартиры суммы)
// Ежемесячный платеж составляет - 20_000
// Вычислить за сколько лет он выплатит ипотеку
// Вычислить переплату и вывести в консоль сообщение "Переплата за _ лет составила _ . Это _ % от первоначальной ставки"

var creditAmmount = 1_450_000
let monthlyPayment = 20_000
let percent = 12
var numberOfYear = 0
var totalOverPayment = 0

while creditAmmount > 0 {
    let overpaymentByMonth = creditAmmount * percent / 100
    totalOverPayment += overpaymentByMonth
    creditAmmount += overpaymentByMonth - monthlyPayment * 12
    numberOfYear += 1
    
    print (creditAmmount, overpaymentByMonth)
}

print ("Переплата за \(numberOfYear) лет составила \(totalOverPayment). Это \(totalOverPayment * 100 / 1_450_000) % от первоначальной ставки")

//ЗАДАЧА 3
// 3.1 Создайте массив, который содержит числа от 1 до 100 по возрастанию
// 3.2 Создайте новый массив, который будет содержать только четные значения из первого массива
// 3.3 Создайте новый массив, который будет содержать числа от 10 до 20 в случайном порядке. Числа не должны повторяться

//3.1
//let array = Array(1...100)
//var newArray = [Int]()

//3.2
//for number in array {
//    if number % 2 == 0 {
//        newArray.append(number)
//    }
//}

//print (newArray)

//3.3
//var randomSet = Set<Int>()
//
//for number in array {
//    if number <= 20 && number >= 10 {
//        randomSet.insert(number)
//    }
//}
//
//let randomArray = Array(randomSet)
//print(randomArray)


//ЗАДАЧА 4
// Улитка ползет по столбу. Высота столба 10 метров. За 1 день улитка поднимается по столбу на 2 метра, а за ночь - сползает на 1 метр. Определить через сколько дней улитка заберется на столб.

let heightPillar = 10
let distanceDay = 2
let distanceNight = 1

var days = 0
var countPosition = 0

while countPosition < heightPillar {
    days += 1
    countPosition += distanceDay
    
    if countPosition == heightPillar {
        break
    }
    countPosition -= distanceNight
}

print("Улитка заберется на столб через \(days) дней")


//MARK: - Функции/Методы

/*
 Функция - подпрограмма, выполняющая какие-либо операции и возвращающая значение
 Процедура - подпрограмма, которая только выполняет операции, без возврата значения
 Метод - это функция или процедура, которая принадлежит классу или экземпляру класса
 
 func имяФункции (входныеПараметры) -> типВозвращаемогоЗначения {
 
 // набор инструкций
 }
 
 Функция представляет набор инструкций, который имеет имя(!) и может использоваться повторно в различных местах программы
 Имя - camelCase + глагол
 
 Если нет входных параметров - ставятся скобки ()
 */

func printMyName() {
//    print("My name is Sergey")
}

//Для того, чтобы получить значение, функцию надо вызвать

printMyName()


//MARK: - Входные параметры

func setMyName(name: String) {
//    print("My name is \(name)")
}

setMyName(name: "Serg")

func setName(_ name: String) {
//    print("My name is \(name)")
}

setName("Serg")

func setUserInfo(_ name: String, _ age: Int) {
//    print("name: \(name), age: \(age)")
}

setUserInfo("Serg", 32)

//значение параметров по умолчанию

func setUser(_ name: String, _ age: Int = 32) {
    print("name: \(name), age: \(age)")
}

//setUser("Serg", 34)
//setUser("Mike")

//MARK: - Возвращаемое значение

//Функция "ничего" не возвращает

func testFunc(test: Int) {
    print(test)
}

func eqTestFunc(test: Int) -> Void {
    print(test)
}

func sumNumber(a: Int, b: Int) -> Int {
    return a + b
}

sumNumber(a: 3, b: 4)

func getArray(a: Int) -> [Int] {
    var testArray = [Int]()
    
    for index in 0...a {
        testArray.append(index)
    }
    
    return testArray
}

getArray(a: 5)

//Возвращение нескольких значений (например, кортеж)

func getSalary(_ salary: Double) -> (tax: Double, total: Double) {
    
    let tax = salary * 0.13
    let total = salary - tax
    return(tax, total)
}

getSalary(100_000)

//Функцию можно присвоить константе или переменной(!)

let salary = getSalary(100_000)
salary

print("Налог: \(salary.tax), Итого: \(salary.total)")

//Возвращение опционального значения

func bankTax(sum: Int) -> Int? {
    if sum > 50 {
        return sum * 5 / 100
    } else {
        return nil
    }
}

bankTax(sum: 60)

//Проверка на опциональность

//if let tax = bankTax(sum: 60) {
//    print(tax)
//} else {
//    print("nil")
//}

//Нет входных параметров, но нужен вовзращаемый тип

//func noParam() -> Int {
//    let a = 1
//    let b = 2
//    return a + b
//}
//
//noParam()

//Вариантивные параметры - несколько входных параметров

func sum(_ numbers: Int...) -> Int {
    var total: Int = 0
    for number in numbers {
        total += number
    }
    
    return total
}

sum(1, 2, 3, 4, 5)

//Сквозные параметры - входные параметры inout

//func inoutFunc(_ a: inout Int) {
//    a += 10
//}
//
//var b = 20
//inoutFunc(&b)
//print(b)

//Вложенные/локальные функции - функция доступна только внутри функции, в которой она определена

func compare(_ r1: Double, _ r2: Double) {
    
    func square(_ r: Double) -> Double {
        return r * r * 3.14
    }
    
    let s1 = square(r1)
    let s2 = square(r2)
    let compare = s1 - s2
    print("разница площадей \(compare)")
}

compare(10, 5)

//Рекурсивные функции - функции, которые могут вызывать сами себя

func factorial(_ n: Int) -> Int {
    
    if n == 0 {
        return 1
    }
    
    return n * factorial(n - 1)
}

var x = factorial(4)

//Перезагрузка функций

//входные параметры

func reloadSum(_ x: Int, _ y: Int) {
//    print(x + y)
}

func reloadSum(_ x: Double, _ y: Double) {
//    print(x + y)
}

reloadSum(4, 5)
reloadSum(10.0, 5.0)

//вызвращаемый тип (явно указывать при инициализации)

func reloadNumber(_ x: Int, _ y: Int) -> Int {
    return x + y
}

func reloadNumber(_ x: Int, _ y: Int) -> Double {
    return Double(x + y)
}

let reloadCont: Int = reloadNumber(10, 5)
var reloadVar: Double = reloadNumber(10, 20)

//Тип функций

func plus(_ a: Int, _ b: Int) -> Int {
   return a + b
}

func minus(_ a: Int, _ b: Int) -> Int {
    a - b
}

var someFunc: (Int, Int) -> Int

someFunc = plus
//print(someFunc(4, 5))

someFunc = minus
//print(someFunc(10, 2))

//Тип функции, как тип входных параметров

func getResult(_ a: Int, _ b: Int, _ myFunc: (Int, Int) -> Int) {
    
    let result = myFunc(a, b)
    print(result)
}

getResult(5, 10, plus)
getResult(20, 3, minus)


//MARK: - Closures Замыкания

//Closures - сгруппированнаый командный код, который может быть передан в виде параметра

/*
 { (параметры) -> тип результата in
 выражения
 }
*/

// Функции являются замыканиями, у которых есть имя и которые захватывают/не захватывают значения

// С помощью замыкания мы можем поместить блок исполняемого кода в переменную или константу

//let myCards = ["Сбербанк" : 2000, "Тинькофф" : 1000, "Альфа-банк" : 500]
//
//func filtredCards(cards: [String : Int], filter: (Int) -> Bool) -> [String] {
//
//    var filtredCard = [String]()
//
//    for (key, value) in cards {
//        if filter(value) {
//            filtredCard.append(key)
//        }
//    }
//    return filtredCard
//}
//
//func restSum(sum: Int) -> Bool {
//    if sum > 1000 {
//        return true
//    }
//    return false
//}
//
//let necessaryCard = filtredCards(cards: myCards, filter: restSum(sum:))
//print(necessaryCard)

let myCards = ["Сбербанк" : 2000, "Тинькофф" : 1000, "Альфа-банк" : 500]

func filtredCards(cards: [String : Int], filter: (Int) -> Bool) -> [String] {

    var filtredCard = [String]()

    for (key, value) in cards {
        if filter(value) {
            filtredCard.append(key)
        }
    }
    return filtredCard
}

func restSum(sum: Int) -> Bool {
    if sum > 1000 {
        return true
    }
    return false
}

let necessaryCard = filtredCards(cards: myCards, filter: { (sum: Int) -> Bool in
    if sum > 1000 {
        return true
    }
    return false
})
print(necessaryCard)


//let myCards = ["Сбербанк" : 2000, "Тинькофф" : 1000, "Альфа-банк" : 500]
//
//func filtredCards(cards: [String : Int], filter: (Int) -> Bool) -> [String] {
//
//    var filtredCard = [String]()
//
//    for (key, value) in cards {
//        if filter(value) {
//            filtredCard.append(key)
//        }
//    }
//    return filtredCard
//}
//
//func restSum(sum: Int) -> Bool {
//    if sum > 1000 {
//        return true
//    }
//    return false
//}
//
//let necessaryCard = filtredCards(cards: myCards, filter: { sum in
//    sum > 1000
//})
//print(necessaryCard)


//sorted

let names = ["Сергей", "Анатолий", "Борис", "Владимир", "генадий"]
names.sorted()

names.sorted { s1, s2 in s1 < s2 }

//Сокращенные/автоматические имена

names.sorted { $0 < $1 }

names.sorted(by: < )

//Сортировка по длине

names.sorted { $0.count < $1.count }

//Пример с Hello

let hello = { print("Hello world")}

let hello2: () -> Void = { print("Hello world")}

let hello3 = { (message: String) in
    print("Your message: \(message)")
}

hello3("Im glad to see you")

let sumClosure = {
    (x: Int, y: Int) -> Int in
    return x + y
}

sumClosure(4, 5)

//Захват значений

func greeting(message: String) -> (String) -> (String) {
    return { (name: String) -> String in
        return (message + " " + name)
    }
}

var greetingMessage = greeting(message: "Hi")
greetingMessage("Serg")

let refType = greetingMessage
refType("Dan")


//MARK: - ДОМАШНЕЕ ЗАДАНИЕ

//ЗАДАНИЕ №1 - Smile Decoder
//Создайте функцию, которая будет декодировать набор смайлов в сумму их коэффициентов (коэффициенты смайлов указаны ниже).
//Использовать входной параметр типа String. При вызове функции указывать значения в формате ("🥸🙂😂😁")
//Подсказка: каждый смайл это один символ

// 🙂 = 1
// 😂 = 5
// 😘 = 10
// 😁 = 50
// 😎 = 100
// 🤪 = 500


func decodeEmoji(_ emojiString: String) {
    var sum = 0
    
    for emoji in emojiString {
        if emoji == "🙂" {
            sum += 1
        } else if emoji == "😂" {
            sum += 5
        } else if emoji == "😘" {
            sum += 10
        } else if emoji == "😁" {
            sum += 50
        } else if emoji == "😎" {
            sum += 100
        } else if emoji == "🤪" {
            sum += 500
            print(sum)
        } else {
            print("please, enter emoji")
        }
    }
}
    decodeEmoji("😂🤪")


//ЗАДАНИЕ №2 - Опять про возраст пользователя
//Пользователь указывает свой возраст при регистрации
//Вы получаете данные в формате String (например, "32")
//Создайте функцию, которая вывовит в консоль фразу:
// "Успешно! Ваш возраст _ лет", если возраст введен корректно
// или фразу:
// "Проверте правильность введенной информации" - если возраст некорректный.
// Выполните проверку при помощи if и guard

func printAge(_ age: String) {
    
    guard let age = Int(age) else { return print("Проверте правильность введенной информации")}
    
    //    if age == "" {
    //        print("Проверте правильность введенной информации")
    //    } else {
    //        let age = Int(age)
    //    }
    
    print ("Успешно! Ваш возраст \(age) лет")
}

printAge("21s")

//ЗАДАНИЕ №3
// 3.1 Создайте функцию, которая проверяет является ли число четным и возвращает true или false
// 3.2 Создайте фукнцию, которая проверяет делится ли число на 3 без остатка и возвращает true или false
// 3.3 Создайте массив от 1 до 100
// 3.4 Создайте функцию для фильтрации массива (из 3.3). Фильтрация четных чисел и чисел кратных 3. Для фильтрации использовать функции, созданные в 3.1 и 3.2. Функция должна возвращать новый отфильтрованный массив.

//3.1

func checkEven(number: Int) -> Bool {
    number % 2 == 0
}

checkEven(number: 4)

//3.2

func divideByThree(number: Int) -> Bool {
    number % 3 == 0
}

divideByThree(number: 12)

//3.3

let array = Array(1...100)

func filterArray(filter: (Int) -> Bool) -> [Int] {
    var filteredArray = [Int]()
    
    for number in array {
        if filter(number) {
            filteredArray.append(number)
        }
    }
    return filteredArray
}

var newFilteredArray = filterArray(filter: checkEven(number:))
newFilteredArray = filterArray(filter: divideByThree(number:))

//MARK: - Enum / Перечисления

// Перечисление (enumeration) определяет общий тип для группы связанных значений.
// Значения, объединенные в перечисление, могут представлять любой тип

//Общий вид

enum Season: CaseIterable {
    case winter
    case spring
    case summer
    case autumn
}

//Сокращенная форма

enum EasySeason {
    case winter, spring, summer, autumn
}

//Использование

let winter: Season
winter = .winter

//Тип Season
var currentSeason = Season.winter

//Присвоить другое значение

currentSeason = .spring

//Использование switch

switch currentSeason {
case .winter:
    print("Зима")
case .spring:
    print("Весна")
case .summer:
    print("Лето")
case .autumn:
    print("Осень")
}

//Итерация
//CaseIterable

enum SomeSeason: CaseIterable {
    case winter
    case spring
    case summer
    case autumn
}

//for season in SomeSeason.allCases {
//    print(season)
//}

for index in 0...SomeSeason.allCases.count {
    print(index)
}

//Ассоциированные/aссоциативные значения

enum ManOrCat {
    case man(String)
    case cat(String, Int)
}

let man = ManOrCat.man("Serg")
let cat = ManOrCat.cat("Kot", 1)

switch cat {
    
case .man(let name):
    print("Ты человек. Тебя зовут \(name)")
case .cat(let name, let lives):
    print("Ты кот. Тебя зовут \(name). Ты живешь свою \(lives) жизнь")
}

//Исходные/чистые/по умолчанию значения
//Нужно явно указывать тип

enum SchoolClass: String {
    case first = "Антон"
    case second = "Борис"
    case third = "Владимир"
}

let people = SchoolClass.second
print(people)
print(people.rawValue)
//Если не указать значение, то будет использован first

//Использование Int
//Начинается с 0 (явно установленные значения) или с заданного значения (неявно)

enum OtherSchoolClass: Int {
    case first
    case second
    case third
}

let otherPeople = OtherSchoolClass.second
print(otherPeople)
print(otherPeople.rawValue)

//Можем получить nil

let nilNumber = OtherSchoolClass(rawValue: 8)
nilNumber

//Вложенное перечисление

enum FirstWeekOfDay {
    case monday
    case tuesday
    case wenesday
    case thursday
    case friday
    case saturday
    enum Sunday {
        case day
        case night
    }
}

let inside = FirstWeekOfDay.Sunday.day

//Методы перечислений

enum WeekOfDay: Int {
    case monday = 1, tuesday, wenesday, thursday, friday, saturday, sunday
    
    func getCurrentDay() -> String {
        WeekOfDay.getDay(number: rawValue)
    }
    
    static func getDay(number: Int) -> String {
        switch number {
        case 1: return "Понедельник"
        case 2: return "Вторник"
        case 3: return "Среда"
        case 4: return "Четверг"
        case 5: return "Пятница"
        case 6: return "Суббота"
        case 7: return "Воскресенье"
        default:
            return "error"
        }
    }
}

var someDay = WeekOfDay.sunday
someDay.getCurrentDay()
var secondDay = WeekOfDay.getDay(number: 2)
print(someDay.getCurrentDay())
print(secondDay)

//Свойства перечислений
//Свойства не хранят значение, но можно использовать вычисляемые свойства

enum OtherWeekOfDay: Int {
    case monday = 1, tuesday, wenesday, thursday, friday, saturday, sunday

    var label: String {
        switch self {
        case .monday:
            return "Понедельник"
        case .tuesday:
            return "Вторник"
        case .wenesday:
            return "Среда"
        case .thursday:
            return "Четверг"
        case .friday:
            return "Пятница"
        case .saturday:
            return "Суббота"
        case .sunday:
            return "Воскресенье"
        }
    }
}

let day1 = OtherWeekOfDay.monday
print(day1.label)
print(OtherWeekOfDay.friday.label)

//Инициализаторы в перечислениях

enum SomeWeekOfDay: Int {
    case monday = 1, tuesday, wenesday, thursday, friday, saturday, sunday
    
    init?(_ day: String) {
        
        switch day {
        case "Понедельник": self = .monday
        case "Вторник": self = .tuesday
        case "Среда": self = .wenesday
        case "Четверг": self = .thursday
        case "Пятница": self = .friday
        case "Суббота": self = .saturday
        case "Воскресенье": self = .sunday
        default:
            return nil
        }
    }
}

let someOtherDay = SomeWeekOfDay("Среда")
print(someOtherDay!.rawValue)



//MARK: - Домашнее задание

/*
ЗАДАНИЕ 1
 1.1 Создайте перечисление, содержащее математические действия:
 - сложение
 - вычитание
 - умножение
 - деление

 1.2 Создайте функцию, которая будет выполнять выбранную математическую операцию с двумя числами и выводить в консоль сообщение в виде:
    "Результат сложения 3 и 2 равен 5" <- это пример для сложения
 1.3 Вызовете функцию 4 раза со "всеми" возможными математическими действиями
*/

//1
enum Math {
    case add
    case substract
    case multiply
    case divade
}

//1.2
func printResultMathOperation(a: Double, b: Double, math: Math) {
    
    switch math {
    case .add: print("результат сложения \(a) и \(b) равен \(a + b )")
    case .substract: print("результат вычитания \(a) и \(b) равен \(a - b )")
    case .multiply: print("результат умножения \(a) и \(b) равен \(a * b )")
    case .divade: print("результат деления  \(a) и \(b) равен \(a / b )")
    }
}

//1.3
printResultMathOperation(a: 10, b: 3, math: .add)
printResultMathOperation(a: 12, b: 11, math: .divade)
printResultMathOperation(a: 30, b: 25, math: .substract)
printResultMathOperation(a: 2, b: 8, math: .multiply)

/*:
 ## Задание 2
 2.1 Создайте перечисление `DistanceUnit` (Единица измерения расстояния) со следующими кейсами: `versta`, `kilometer`, `mile`.
 
 Внутри перечисления `DistanceUnit` создайте еще одно перечисление `NonISUCountry` в котором содержится перечень стран не принявших международную систему единиц (США, Либерия и Мьянма).
 
 Верста и километр должны иметь ассоциативный параметры следующего типа: `(title: String, denotation: String, countries: [String])`. Миля - `(title: String, denotation: String, countries: [NonISUCountry])`. Первый параметр - это название единицы измерения, второй параметр отвечает за обозначение единицы, а массив должен содержать перечень стран в которых используется эта единица (для километра не обязательно перечислять все страны).

 2.2 Создайте по экземпляру DistanceUnit для каждого кейса и функцию, которая должна принимать единицу измерения и выводить на консоль информацию о ней, например: "Километр. Краткое наименование: км. Страны: Россия, Евросоюз".
 */
enum DistanceUnit {
    case versta(title: String, denitation: String, countries: [String])
    case kilometr(title: String, denitation: String, countries: [String])
    case mile(title: String, denitation: String, countries: [NonISUCountry])
    
    enum NonISUCountry: String {
        case USA = "Usa"
        case Liberia = "Liberia"
        case Myanmar = "Myanmar"
    }
}

let oldDistanceUnit = DistanceUnit.versta(title: "versta",
                                          denitation: "v.",
                                          countries: ["Ancient Russia ", "Russian empire"])
let widelyUsedDistanceUnit = DistanceUnit.kilometr(title: "kilometr",
                                                   denitation: "km.",
                                                   countries: ["Russia", "European Union"])
let distanceUnitFromUKAndUSA = DistanceUnit.mile(title: "mile",
                                                 denitation: "mi.",
                                                 countries: [.Liberia, .USA, .Myanmar])

func printDistanceUnitInfo(_ distanceUnit: DistanceUnit) {
    
    switch distanceUnit {
    case .kilometr( _, let denitation, let countries):
        print("Километр. Краткое наименование: \(denitation) Страны: \(countries.joined(separator: ", "))")
    case .versta( _, let denitation, let countries):
        print("Верста. Краткое наименование: \(denitation) Страны: \(countries.joined(separator: ", "))")
    case.mile(_, let denitation, let countries):
        print("Миля. Краткое наименование: \(denitation) Страны \(countries.map { $0.rawValue }.joined(separator: ", "))")
    }
}

printDistanceUnitInfo(widelyUsedDistanceUnit)
printDistanceUnitInfo(oldDistanceUnit)
printDistanceUnitInfo(distanceUnitFromUKAndUSA)
