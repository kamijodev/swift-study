print("Hello, World!")

var v = 30

v = 50

let c = 30

print(c)

print(type(of: c))

// memo: xcode は shift + enterで実行

// 文字列に変数の埋め込み
if c == 30 {
    print("\(c)歳です")
}
else {
    print("\(c)歳ではないです")
}

// guard 条件が満たされない時にスコープを抜ける時に使う

func Drink() {
    guard c >= 20 else {
        print("お酒だめ")
        return
    }
    print("お酒OK")
}

Drink()

// optionalの値はそのまま使えない
var optionalType: Int? = 30

print(optionalType)
// 強制的アンラップ
print(optionalType!)

// オプショナルバインディング
// nilでなければunwrapedIntにアンラップされる
var optionalInt: Int? = 30
if let unwrapedInt = optionalInt {
    print(unwrapedInt)
}
else {
    print("nilです")
}

// 空配列の作り方
var emptyArray = [String]()
print(emptyArray)

// 空の辞書の作り方
var emptyDictionary = [String: Int]()
print(emptyDictionary)

// 関数
func Hello(name: String) -> String {
    return "こんにちは、\(name)さん"
}

print(Hello(name: "kamijo"))

// 関数ラベルを省略する
func Hello2(_ name: String) -> String {
    return "こんにちは、\(name)さん"
}

print(Hello2("kamijo"))

// クロージャ
let Hello3 = { (name: String) -> String in
    return "hello \(name)"
}

print(Hello3("kamijo"))

class Animal {
    var age = 2
    let king = "犬"

    func Bite() {
        print("\(age)歳の\(king)が噛みつく")
    }
}

var dog = Animal()

print(dog.king)

dog.Bite()

// イニシャライザ
class Animal2 {
    var age: Int;
    let kind: String;

    func Bite() {
        print("\(age)歳の\(kind)が噛みつく")
    }

    init(age: Int, kind: String) {
        self.age = age
        self.kind = kind
    }
}

var cat = Animal2(age: 10, kind: "猫")

cat.age = 3
// cat.kind = "たぬき" kindは定数なので変更不可
cat.Bite()

// プロトコル
protocol AnimalProtocol {
    var age : Int { get }
    func bark()
}

struct DogStruct: AnimalProtocol {
    let age: Int
    func bark() {
        print("wwww")
    }
}

