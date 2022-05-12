import UIKit

var str = "Hello, playground" // String değeri
str = "Hello, Emre" // var değişken türü değiştirilebilir.

let str2 = "Sabit Değişken"
// str2 = "Sabit" hata verecektir

var nextYear : Int
var bodyTemp : Float
var hasPet : Bool

var arrayOfInts : Array<Int>
var arrayOfInts2 : [Int]

var dictionaryOfCapitalByCountry : Dictionary<String,String>
var dictionaryOfCapitalByCountry2 : [String:String]

var winningLotteryNumbers : Set<Int>

let number = 51
let fmStation = 91.2

let countingUp = ["one","two"]
var nameByParkingSpace = [13:"Ahmet",15:"Mehmet"]

countingUp[0]

let emptyString = String()
let empytArrayOfInts = [Int]()
let empytSetOfFloats = Set<Float>()

var defaultNumber = Int()
var defaultBool = Bool()
var defaultFloat = Float()

let meaningOfLife = String(number)

let availableRooms = Set([1,2,3,5,6,6])

let floatFromLiteral : Float = 32.8
let floatFromLiteral2 = Float(32.8)

countingUp.count //Uzunluğu
emptyString.isEmpty // boş mu

var array1 = [Int]()
let array2 = [Int]()

array1.append(1)
// array2.append(2) değiştirilemez array

var anOptionalFloat : Float? //Olabilir de olmayabilir de

var anOptionalArrayOfOptinialFloats : [Float?]? // olan veya olmayan floatları alan array veya değil


var float1 : Float?
var float2 : Float?
var float3 : Float?

float1 = 31
float2 = 35
float3 = 38

// let avarage = float1+float2+float3 / 3.0 //hatalıdır
let avarage = float1!+float2!+float3! / 3.0 //unwreaping değerler kesin vardır diyoruz.
// Değer yoksa eğer sistem çöker

if let f1 = float1,
   let f2 = float2,
   let f3 = float3{
    let ortalama = f1+f2+f3/3.0
}
else{
    print("Degerler yok")
}

nameByParkingSpace[13]
nameByParkingSpace[14] //Program çökmüyor nil döndürüyor.

// countingUp[3] //Program Çöküyor

for i in 0..<5{
    print(i) // 0 1 2 3 4
}
for i in 0...5{
    print(i) // 0 1 2 3 4 5
}

for string in countingUp{
    print(string) //one two
}
for (index,string) in countingUp.enumerated(){ //string dizisi
    print("\(index) : \(string)") //0 one 1 two
}
for (key,value) in nameByParkingSpace{ //sözlük
    print("\(key) : \(value)")
    //15 : Mehmet
    //13 : Ahmet
}
nameByParkingSpace[14]="Emre"
for (key,value) in nameByParkingSpace{ //sözlük
    print("\(key) : \(value)")
    //15 : Mehmet
    //14 : Emre
    //13 : Ahmet
}

enum PieType{ //Turta Tipi
    case apple //elma
    case apricot //kayısı
    case peach //şeftali
}
let favoritePie = PieType.apricot
print(favoritePie)

let name:String
//name = "Emre" //1.de atar
//name = "Emre" //2. de hata verir

switch favoritePie{
case .apple:
    name = "Apple Pie"
case .apricot:
    name = "Apricot Pie"
case .peach:
    name = "Peach Pie"
}
print(name)

let macOsVersion : Int = 12
switch macOsVersion{
case 0...8:
    print("A big cat")
case 9:
    print("Mavericks")
case 10:
    print("Yosemite")
default:
    print("Wow, new Mac Version")
}

enum PieType2: String{
    case apple = "Apple Pie"
    case apricot = "Apricot Pie"
    case peach = "Peach Pie"
}
let favoritePie2 = PieType2.apple
favoritePie2.rawValue //Apple Pie

// Ortak özellikler
// İçlerine değerler alabiliyorlar
// Kendi fonksiyonları da olabiliyor.
// Class ve Struct Fark
// Class Referance type
// Hafıza yer tutuyor değiştiriliyor.
// Struct Değer tipi
// Hafızada Kopyalanıyor.
class ClassName{
    
}

struct StructName{
    
}
