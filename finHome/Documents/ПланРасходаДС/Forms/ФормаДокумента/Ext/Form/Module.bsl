﻿&НаСервере
Процедура ПередЗаписьюНаСервере()
	
	Если Не ЗначениеЗаполнено(Объект.Дата) Тогда
		
		Объект.Дата = ТекущаяДатаСеанса();
		
	КонецЕсли;
		
КонецПроцедуры
