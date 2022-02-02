import UIKit
//Итоговый проект - Модуль 13
//Студент Теплов Олег

//Кортежи
let someTuple = (age: 20, name: "Oleg", surname: "Petrov")
let someTwoTuple = (age: 26, name: "Ivan", surname: "Ivanov")
//Получение значений по индексу
someTuple.0
someTuple.1
someTuple.2
//Получение значений по параметру
someTwoTuple.age
someTwoTuple.name
someTwoTuple.surname

//Массивы
//Создайте массив "Дни Месяца"
var dayMonth = [31,28,31,30,31,30,31,31,30,31,30,31]
//Выведите кол-во дней в каждом месяце
for dayMonth in dayMonth{
    print(dayMonth)
}
//Используйте еще один массив с именами месяцев+кол-вом дней
var nameMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
//используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
for i in 0...11{
    print("Month \(nameMonth[i]) \(dayMonth[i]) days")
}

//сделайте тоже самое, но используя массив кортежей с параметрами (имя месяца, количество дней)
var monthesArray:[(month: String, days: Int)] = []

for i in 0...11{
    monthesArray.append((month: nameMonth[i], days: dayMonth[i]))
}

//выводим имена и количество дней месяца в обратном порядке
for i in stride(from: 11, through: 0, by: -1){
    print("Months \(nameMonth[i]) \(dayMonth[i]) days")
}

//для произвольно выбранной даты (месяц и день) посчитайте количество дней до конца года
//Объявляем произвольную дату
let arbitraryDate = (day:5, month:"September")
//индекс месяца масива
let indexMonth = nameMonth.firstIndex(of: arbitraryDate.month)!
//Подсчитаем, сколько дней осталось до конца года
var daysBeforeTheEndOfTheYear = 0
daysBeforeTheEndOfTheYear = dayMonth[indexMonth] - arbitraryDate.day
for i in (indexMonth+1)..<dayMonth.count{
    daysBeforeTheEndOfTheYear+=dayMonth[i]
}
print(daysBeforeTheEndOfTheYear)
//фух, на это у меня ушло пол дня:)

//Создайте словарь, как журнал студентов
var students:[String:Int] = ["Nikilay Petrov":5, "Alexander Ivanov":4, "Oleg Serov":3, "Nikita Ionov":2]
//Повысьте оценку за экзамен
students["Oleg Serov"] = 4
//Если оценка положительная/удовлетворительная, то Поздравление, если отрицательная, то пересдача
switch students["Oleg Serov"]{
    case 3,4,5:
        print("Поздравляем! Оценка за экзамен \(students["Oleg Serov"]!)")
    case 1, 2:
        print("Ваша оценка \(students["Oleg Serov"]!). Запешитесь на пересдачу!")
    default:
        print("Не прибыл на сдачу экзамена")
}
//Добавьте еще несколько студентов — это ваши новые одногруппники!
students["Vera Nika"] = 4
students["Ivan Kozlov"] = 3
//Удалите одного студента — он отчислен
students.removeValue(forKey: "Nikita Ionov")

//Посчитайте средний балл всей группы по итогам экзамена
var gpa = 0
for(_, value) in students{
    gpa+=value
}
print(gpa/students.count)


