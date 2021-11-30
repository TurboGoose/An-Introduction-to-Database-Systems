(: Работаем с svg изображением столбчатой диаграммы с прошлой пары :) 

(: Удалим последний пррямоугольник из диаграммы :)
(: let $i:= doc('result')//*:rect[last()] 
return delete node $i :)

(: Вставим новый элемент внутрь последнего :)
let $lr := doc('result')//rect[last()]
return insert node <C></C> into $lr