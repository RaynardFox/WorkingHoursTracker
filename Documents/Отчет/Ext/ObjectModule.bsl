﻿
Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	Если НЕ ЗначениеЗаполнено(Исполнитель) Тогда Сообщить("Не выбран исполнитель (автор отчета)!");
		Отказ = Истина; Возврат;
	КонецЕсли;	
	// регистр Задания 
	Движения.Задания.Записывать = Истина;
	Для Каждого ТекСтрокаЗадачи Из Задачи Цикл
		Движение = Движения.Задания.Добавить();
		Движение.Период = Дата;
		
		Движение.Задание = ТекСтрокаЗадачи.Задача;
		Движение.Контрагент = ?(ЗначениеЗаполнено(ТекСтрокаЗадачи.Контрагент),ТекСтрокаЗадачи.Контрагент,ТекСтрокаЗадачи.Задача.Контрагент) ;
		Движение.Время = ТекСтрокаЗадачи.Часов;
		Движение.ОписаниеРабот = ТекСтрокаЗадачи.ОписаниеВыполненныхРабот;
		Движение.Исполнитель = Исполнитель;
	КонецЦикла;
	

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры
