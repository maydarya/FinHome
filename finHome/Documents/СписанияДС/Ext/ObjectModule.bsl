﻿
Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	
	Если ЭтотОбъект.Списания.Количество() = 0 Тогда
		Отказ = Истина;
		Возврат;
	КонецЕсли;
	
КонецПроцедуры

Процедура ОбработкаПроведения(Отказ, РежимПроведения)
	
	СоздатьДвиженияПоРегиструДвиженийДС();
	СоздатьДвиженияПоРегиструСписанийДС();
	
КонецПроцедуры     

Процедура СоздатьДвиженияПоРегиструСписанийДС()
	
	УдалитьЗаписиПоРегиструСписаний();
	НаборЗаписей = РегистрыНакопления.СписанияДС.СоздатьНаборЗаписей();
	НаборЗаписей.Отбор.Регистратор.Установить(ЭтотОбъект.Ссылка);
	НаборЗаписей.Прочитать();
	
	Для каждого Стр Из ЭтотОбъект.Списания Цикл
		
		НСтр = НаборЗаписей.Добавить();
		НСтр.Регистратор = ЭтотОбъект.Ссылка;
	    НСтр.Период = ЭтотОбъект.Дата;
		НСтр.ЧленСемьи = Стр.ЧленСемьи;
		НСтр.ВидДС = Стр.ВидДС;
		НСтр.СтатьяРасходов = Стр.СтатьяРасходов;
		НСтр.Сумма = Стр.Сумма;
		
	КонецЦикла;
	
	НаборЗаписей.Записать();
		
КонецПроцедуры


Процедура СоздатьДвиженияПоРегиструДвиженийДС()
	
	УдалитьДвиженияПоРегиструДвиженийДС();
	НаборЗаписей = РегистрыНакопления.ДвиженияДС.СоздатьНаборЗаписей();
	НаборЗаписей.Отбор.Регистратор.Установить(ЭтотОбъект.Ссылка);
	НаборЗаписей.Прочитать();
	
	Для каждого Стр Из ЭтотОбъект.Списания Цикл
		
		НСтр = НаборЗаписей.Добавить();
		НСтр.Регистратор = ЭтотОбъект.Ссылка;
		НСтр.ВидДвижения = ВидДвиженияНакопления.Расход;
	    НСтр.Период = ЭтотОбъект.Дата;
		НСтр.ЧленСемьи = Стр.ЧленСемьи;
		НСтр.ВидДС = Стр.ВидДС;
		НСтр.Сумма = Стр.Сумма;
		
	КонецЦикла;
	
	НаборЗаписей.Записать();
	
КонецПроцедуры

Процедура ОбработкаУдаленияПроведения(Отказ)
	
	УдалитьДвиженияПоРегиструДвиженийДС();   
	
КонецПроцедуры

Процедура УдалитьДвиженияПоРегиструДвиженийДС()
	
	НаборЗаписей = РегистрыНакопления.ДвиженияДС.СоздатьНаборЗаписей();
	НаборЗаписей.Отбор.Регистратор.Установить(ЭтотОбъект.Ссылка);
	НаборЗаписей.Прочитать();
	НаборЗаписей.Очистить();
	НаборЗаписей.Записать();
	
КонецПроцедуры

Процедура УдалитьЗаписиПоРегиструСписаний()

	НаборЗаписей = РегистрыНакопления.СписанияДС.СоздатьНаборЗаписей();
	НаборЗаписей.Отбор.Регистратор.Установить(ЭтотОбъект.Ссылка);
	НаборЗаписей.Прочитать();
	НаборЗаписей.Очистить();
	НаборЗаписей.Записать();

	
КонецПроцедуры
