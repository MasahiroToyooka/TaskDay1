import UIKit

// 課題1-1 型
let itemA: Int = 1000

let itemB: String = "こんにちは"

let itemC: Double = 42.195

let itemD: Bool = true


// 課題1-2 四則演算
let valueA: Int = 100

let valueB: Int = 20

print(valueA + valueB)

print(valueA - valueB)

print(valueA * valueB)

print(valueA / valueB)


// 課題1-3 if文

var valueC: Int = 0

func identifyNum() {
    // valueCが4桁以上か判別
    if (valueC / 1000) == 1 {
        print("\(valueC)は4桁以上の値です")
    // valueCが3桁か判別
    } else if (valueC / 100) == 1 {
        
        print("\(valueC)は3桁の値です")
    // valueCが2桁か判別
    } else if (valueC / 10) == 1 {
        
        print("\(valueC)は2桁の値です")
    } else {
        
        print("\(valueC)は1桁の値です")
    }
}

// valueCに値を代入してそれぞれ関数を呼び出す
valueC = 4
identifyNum()

valueC = 12
identifyNum()

valueC = 100
identifyNum()

valueC = 1999
identifyNum()

valueC = 44444
identifyNum()


// 課題1-4 switch文

// valueCの桁数をswitch文で識別文する関数
func identifyNum_switch() {

    switch valueC {
    case 0..<10:
        print("\(valueC)は1桁の値です")
    case 10..<100:
        print("\(valueC)は2桁の値です")
    case 100..<1000:
        print("\(valueC)は3桁の値です")
    default:
        print("\(valueC)は4桁以上の値です")
    }
}

// valueCに値を代入してそれぞれ関数を呼び出す
valueC = 4
identifyNum_switch()

valueC = 12
identifyNum_switch()

valueC = 100
identifyNum_switch()

valueC = 1999
identifyNum_switch()

valueC = 44444
identifyNum_switch()




// 課題1-5 関数単一の引数

// value * 10 の値を返す関数を定義
func calculationA(value: Int) {
    print(value * 10)
}

calculationA(value: 10)



// 課題1-6 関数複数の引数
func calculationB(valueA: Int, valueB: Int) {
    print(valueA % valueB)
}

calculationB(valueA: 100, valueB: 30)



// 課題1-7 関数の戻り値

// calculationCを呼び出した結果を格納する変数
var num = 0

// valueA と valueB を足した数字を返す関数を定義
func calculationC(valueA: Int, valueB: Int) -> Int {
    num = valueA + valueB
    return num
}

calculationC(valueA: 40, valueB: 25)

// 数字が偶数か奇数かを判断する
if num % 2 == 0 {
    print("計算結果\(num)は偶数です。")
} else {
    print("計算結果\(num)は奇数です。")
}



// 課題1-8 クラスのインスタンス

class HogeA {
    
    func put() {
        print("クラスAインスタンスです")
    }
}

// HogeAのインスタンスを作成
let insA = HogeA()

insA.put()



// 課題1-9 クラスのインスタンスと関数

// クラスHogeBを定義
class HogeB {
    
    // 名前を表示する関数
    func putName(name: String) {
        print("私の名前は\(name)です。")
    }
}

// HogeBクラスのインスタンスを生成
let takashi = HogeB()
let ken = HogeB()

// それぞれのインスタンスでputName関数を呼び出す
takashi.putName(name: "たかし")
ken.putName(name: "ケン")




// 課題1-10 イニシャライザ

class HogeC {
    // イニシャライザ
    init(name: String) {
        print("私の名前は\(name)です。")
    }
}

// Hogeクラスのインスタンスを生成
let yamada: HogeC = HogeC(name: "やまだ")
let miyata: HogeC = HogeC(name: "みやた")



// 課題1-11 Enum

enum User: String {
    case name      = "名前"
    case age       = "年齢"
    case bloodType = "血液型"
}

let user = User.name

// userの型に合わせて処理する
switch user {
case .name:
    print(User.name.rawValue)
case .age:
    print(User.age.rawValue)
case .bloodType:
    print(User.bloodType.rawValue)
}



// 課題1-12 for文

// for文を使って1~50をprintで表示
for i in 1...50 {
    print(i)
}


// 課題1-13 配列（追加）


var valueE: [Int] = []

// 1~50の値を配列に追加する
for i in 1...50 {
    valueE.append(i)
}

print(valueE)



// 課題1-14 配列（削除）

var valueF: [String] = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]

// valueFから”ナッシュ”を削除
valueF.remove(at: 2)

print(valueF)



// 課題1-15 配列（ソート）

var valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]

// 昇順にソート
valueG.sort {$0 < $1}
print(valueG)

// 降順にソート
valueG.sort {$0 > $1}
print(valueG)



// 課題1-16 配列（要素数）

// valueGの数を表示
print(valueG.count)



// 課題1-17 辞書型
let valueH = [
    "a": 1,
    "b": 2,
    "c": 3,
]

print(valueH["b"])


// 課題1-18 Optional

// オプショナルバインディングをする
if let b = valueH["b"] {
    print(b)
}


// 課題1-19 nil

// オプショナルバインディングをする
if let k = valueH["k"] {
    print(k)
} else {
    print("値はnilです。")
}



// 課題1-20 総復習

var valueI: [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]

// 配列は0から始まるのでvalueIの数 -1
for i in 0...valueI.count - 1 {
    
    // valueIをそれぞれの型にダウンキャスティングできるか確認
    if let value: Int = valueI[i] as? Int {
        print("数値は\(value)です。")
    } else if let string = valueI[i] as? String {
        print(string)
    } else {
        print("値はnilです。")
    }
}



