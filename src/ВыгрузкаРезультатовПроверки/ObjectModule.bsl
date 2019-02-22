﻿
#Область ОписаниеПеременных

Перем ИменаВидовМодулей;
Перем ИменаОбъектовСФормами;
Перем ИсточникПроверки;
Перем ТаблицаСинонимовОбъектов;
Перем ШаблонПоискаУказанияСтроки;
Перем ДлинаШаблонаПоискаУказанияСтроки;

Перем ФорматЭкспортаReportJSON Экспорт;
Перем ФорматЭкспортаGenericIssue Экспорт;
Перем ВерсияОбработки Экспорт;

Перем ФорматОшибкиТолькоКод Экспорт;
Перем ФорматОшибкиТолькоНаименование Экспорт;
Перем ФорматОшибкиКодНаименование Экспорт;

Перем ВерсияАПК;

#КонецОбласти

#Область ПрограммныйИнтерфейс

Процедура ИнициализироватьПервичныеДанные() Экспорт
	
	ИменаВидовМодулей = Новый Массив;
	ИменаВидовМодулей.Добавить("Модуль объекта");
	ИменаВидовМодулей.Добавить("Модуль менеджера");
	ИменаВидовМодулей.Добавить("Модуль обычного приложения");
	ИменаВидовМодулей.Добавить("Модуль сеанса");
	ИменаВидовМодулей.Добавить("Модуль внешнего соединения");
	ИменаВидовМодулей.Добавить("Модуль команды");
	ИменаВидовМодулей.Добавить("Модуль менеджера значения");
	ИменаВидовМодулей.Добавить("Модуль набора записей");
	ИменаВидовМодулей.Добавить("Модуль приложения");
	ИменаВидовМодулей.Добавить("Модуль управляемого приложения");	
	
	ИменаОбъектовСФормами = Новый Соответствие;
	ИменаОбъектовСФормами.Вставить("Обработки", "DataProcessors"); 
	ИменаОбъектовСФормами.Вставить("Отчеты", "Reports"); 
	ИменаОбъектовСФормами.Вставить("Справочники", "Catalogs");
	ИменаОбъектовСФормами.Вставить("Документы", "Documents");
	ИменаОбъектовСФормами.Вставить("Общие.ПланыОбмена", "ExchangePlans");
	ИменаОбъектовСФормами.Вставить("Задачи", "Tasks"); 
	ИменаОбъектовСФормами.Вставить("ЖурналыДокументов", "DocumentJournals");
	ИменаОбъектовСФормами.Вставить("ПланыВидовХарактеристик", "ChartsOfCharacteristicTypes");
	ИменаОбъектовСФормами.Вставить("БизнесПроцессы", "BusinessProcesses");
	ИменаОбъектовСФормами.Вставить("РегистрыНакопления", "AccumulationRegisters");
	ИменаОбъектовСФормами.Вставить("РегистрыСведений", "InformationRegisters");
	ИменаОбъектовСФормами.Вставить("РегистрыРасчета", "CalculationRegisters");
	ИменаОбъектовСФормами.Вставить("РегистрыБухгалтерии", "AccountingRegisters");
	ИменаОбъектовСФормами.Вставить("ПланыСчетов", "ChartsOfAccounts");
	ИменаОбъектовСФормами.Вставить("Перечисления", "Enums");
	
	ТаблицаСинонимовОбъектов = ТаблицаСинонимовОбъектов();
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.Конфигурация, "", "");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.ПланОбмена, "Общие.ПланыОбмена", "ExchangePlans");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.КритерийОтбора, "Общие.КритерииОтбора", "FilterCriteria");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.ХранилищеНастроек, "Общие.ХранилищаНастроек", "SettingsStorages");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.ОбщаяКоманда, "Общие.ОбщиеКоманды", "CommonCommands");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.Константа, "Констант", "Constants");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.Справочник, "Справочник", "Catalogs");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.Документ, "Документы", "Documents");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.ЖурналДокументов, "ЖурналыДокументов", "DocumentJournals");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.Перечисление, "Перечисления", "Enums");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.Отчет, "Отчеты", "Reports");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.Обработка, "Обработки", "DataProcessors");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.ПланВидовХарактеристик, "ПланыВидовХарактеристик", "ChartsOfCharacteristicTypes");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.ПланСчетов, "ПланыСчетов", "ChartsOfAccounts");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.ПланВидовРасчета, "ПланыВидовРасчета", "ChartsOfCalculationTypes");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.РегистрСведений, "РегистрыСведений", "InformationRegisters");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.РегистрНакопления, "РегистрыНакопления", "AccumulationRegisters");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.РегистрБухгалтерии, "РегистрыБухгалтерии", "AccountingRegisters");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.РегистрРасчета, "РегистрыРасчета", "CalculationRegisters");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.БизнесПроцесс, "БизнесПроцессы", "BusinessProcesses");
	ДобавитьВТаблицуСинонимов(ТаблицаСинонимовОбъектов, Перечисления.ТипыОбъектов.Задача, "Задачи", "Tasks");
	
КонецПроцедуры

Процедура ЭкспортироватьОшибкиАПК() Экспорт
	
	ВыборкаОшибокАПК = ВыборкаОшибокАПК();
	
	Если ВыборкаОшибокАПК = Неопределено Тогда
		СообщитьПользователю("Нет данных для выгрузки");
		Возврат;
	КонецЕсли;
	
	РезультатыПроверки = РезультатыПроверки();	
	МассивГруппировок = Новый Массив;
	
	ОбработатьОшибкиАПК(ВыборкаОшибокАПК, РезультатыПроверки, МассивГруппировок);
	ПодготовитьОшибкиАПК(РезультатыПроверки, МассивГруппировок);
	ВыгрузитьОшибкиАПК(РезультатыПроверки, МассивГруппировок);
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция ВыборкаОшибокАПК()

	Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ
	               |	ОшибкиПроверкиКонфигурации.Объект КАК Объект,
	               |	ОшибкиПроверкиКонфигурации.Объект.ТипОбъекта КАК ТипОбъекта,
	               |	ОшибкиПроверкиКонфигурации.Объект.Путь КАК Путь,
	               |	ВЫБОР
	               |		КОГДА ОшибкиПроверкиКонфигурации.Критичная
	               |			ТОГДА ЗНАЧЕНИЕ(Перечисление.УровниКритичностиОшибок.Обязательно)
	               |		ИНАЧЕ ЗНАЧЕНИЕ(Перечисление.УровниКритичностиОшибок.Рекомендация)
	               |	КОНЕЦ КАК Критичность,
	               |	ОшибкиПроверкиКонфигурации.Уточнение КАК ТекстОшибки,
	               |	""platform"" КАК КодОшибки,
	               |	ОшибкиПроверкиКонфигурации.МестоОбнаружения КАК МестоОбнаружения,
	               |	"""" КАК Уточнение,
	               |	ИСТИНА КАК ПроверкаПлатформой
	               |ИЗ
	               |	РегистрСведений.ОшибкиПроверкиКонфигурации КАК ОшибкиПроверкиКонфигурации
	               |ГДЕ
	               |	ОшибкиПроверкиКонфигурации.Версия = &Версия
	               |	И ОшибкиПроверкиКонфигурации.МестоОбнаружения <> """"
	               |
	               |ОБЪЕДИНИТЬ ВСЕ
	               |
	               |ВЫБРАТЬ
	               |	НайденныеОшибки.Объект,
	               |	НайденныеОшибки.Объект.ТипОбъекта,
	               |	НайденныеОшибки.Объект.Путь,
	               |	НайденныеОшибки.Ошибка.Критичность,
	               |	НайденныеОшибки.Ошибка.Наименование,
	               |	НайденныеОшибки.Ошибка.Код,
	               |	НайденныеОшибки.МестоОбнаружения,
	               |	НайденныеОшибки.Уточнение,
	               |	ЛОЖЬ
	               |ИЗ
	               |	РегистрСведений.НайденныеОшибки КАК НайденныеОшибки
	               |ГДЕ
	               |	НайденныеОшибки.Объект.Владелец = &Версия
	               |	И НайденныеОшибки.МестоОбнаружения <> """"";
	Запрос.УстановитьПараметр("Версия", АктуальнаяВерсияКонфигурации(Конфигурация));
	РезультатЗапроса = Запрос.Выполнить();
	Если РезультатЗапроса.Пустой() Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	ВыборкаДанных = РезультатЗапроса.Выбрать();
	Возврат ВыборкаДанных;
	
КонецФункции

Функция АктуальнаяВерсияКонфигурации(КонфигурацияПоиска)
	
	Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ ПЕРВЫЕ 1
	               |	ПроверкаВерсии.Версия КАК Версия
	               |ИЗ
	               |	Документ.ПроверкаВерсии КАК ПроверкаВерсии
	               |ГДЕ
	               |	ПроверкаВерсии.Конфигурация = &Конфигурация
	               |	И ПроверкаВерсии.Проведен
	               |
	               |УПОРЯДОЧИТЬ ПО
	               |	ПроверкаВерсии.Дата УБЫВ";
	Если ВерсияРавнаИлиБольше(ВерсияАПК, "1.2.2") Тогда
		Запрос.Текст = СтрЗаменить(Запрос.Текст, "ПроверкаВерсии.Версия", "ПроверкаВерсии.ВерсияКонфигурации");	
	КонецЕсли;
	Запрос.УстановитьПараметр("Конфигурация", КонфигурацияПоиска);
	РезультатЗапроса = Запрос.Выполнить();
	Если РезультатЗапроса.Пустой() Тогда
		Возврат Справочники.Версии.ПустаяСсылка();
	КонецЕсли;
	
	Выборка = РезультатЗапроса.Выбрать();
	Выборка.Следующий();
	Возврат Выборка.Версия;
	
КонецФункции

Функция АбсолютныйПутьОбъекта(ТекущийОбъект, ТипОбъекта, МестоОбнаружения, ПутьКОбъекту)
	
	СтрокаПоискаСинонима = ТаблицаСинонимовОбъектов.Найти(ТипОбъекта);
	Значение = "";
	Если СтрокаПоискаСинонима <> Неопределено И СтрНайти(МестоОбнаружения, "стр.") Тогда
		
		ИмяМодуля = "";
		Если СтрНайти(МестоОбнаружения, "Модуль объекта") > 0 Тогда
			ИмяМодуля = "ObjectModule"; 		
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль менеджера") > 0 Тогда
			ИмяМодуля = "ManagerModule";
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль обычного приложения") > 0 Тогда
			ИмяМодуля = "OrdinaryApplicationModule";
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль сеанса") > 0 Тогда
			ИмяМодуля = "SessionModule";
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль внешнего соединения") > 0 Тогда
			ИмяМодуля = "ExternalConnectionModule";
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль команды") > 0 Тогда
			ИмяМодуля = "CommandModule";
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль менеджера значения") > 0 Тогда
			ИмяМодуля = "ValueManagerModule";
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль набора записей") > 0 Тогда
			ИмяМодуля = "RecordSetModule";
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль приложения") > 0 Тогда
			ИмяМодуля = "ApplicationModule";
		ИначеЕсли СтрНайти(МестоОбнаружения, "Модуль управляемого приложения") > 0 Тогда
			ИмяМодуля = "ManagedApplicationModule";
		Иначе
			Сообщить("Неопознаный модуль: " + МестоОбнаружения);
		КонецЕсли;	
		
		Если Не ПустаяСтрока(ИмяМодуля) Тогда 
			Если ТипОбъекта = Перечисления.ТипыОбъектов.Конфигурация Тогда
				Значение = СтрШаблон("Ext/%1.bsl", ИмяМодуля);	
			Иначе
				Значение = СтрШаблон("%1/%2/Ext/%3.bsl", СтрокаПоискаСинонима.СинонимXML, ТекущийОбъект.Наименование, ИмяМодуля);
			КонецЕсли;
		КонецЕсли;
		
	ИначеЕсли ТипОбъекта = Перечисления.ТипыОбъектов.Форма Или ТипОбъекта = Перечисления.ТипыОбъектов.УправляемаяФорма Тогда
		
		ОбъектРодитель = ТекущийОбъект.Родитель;
		
		СинонимXML = "";
		Для Каждого КлючЗначение Из ИменаОбъектовСФормами Цикл

			СтрокаПоиска = Лев(ПутьКОбъекту, СтрДлина(КлючЗначение.Ключ + 1));
			Если СтрокаПоиска = КлючЗначение.Ключ + "." Тогда

				СинонимXML = КлючЗначение.Значение;
				
				Прервать;
	
			КонецЕсли;

		КонецЦикла;
		
		Если Не ПустаяСтрока(СинонимXML) Тогда
			
			Значение = СтрШаблон("%1/%2/Forms/%3/Ext/Form/Module.bsl", СинонимXML, ОбъектРодитель.Наименование, ТекущийОбъект.Наименование);
			
		Иначе
			
			Сообщить("Синоним не найден: " + ПутьКОбъекту);
			
		КонецЕсли;
		
	КонецЕсли;
		
	Возврат Значение;
	
КонецФункции

Функция ЗначениеКритичностиСтрокой(ВходящееЗначение)
		
	Значение = "Information";
	
	Если ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Обязательно Тогда
		Значение = "Error";
	ИначеЕсли ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Рекомендация Тогда
		Значение = "Hint";	
	ИначеЕсли ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Совместимо Тогда
		Значение = "Error";
	КонецЕсли;
	
	Возврат Значение;	
	
КонецФункции

Функция ЗначениеКритичностиGenericIssue(ВходящееЗначение)
	
	Значение = "INFO";
	
	Если ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Обязательно Тогда
		Значение = "CRITICAL";
	ИначеЕсли ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Рекомендация Тогда
		Значение = "INFO";	
	ИначеЕсли ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Совместимо Тогда
		Значение = "CRITICAL";
	КонецЕсли;
	
	Возврат Значение;
	
КонецФункции

Функция ТипОшибкиGenericIssue(ВходящееЗначение)
	
	Значение = "CODE_SMELL";
	
	Если ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Обязательно Тогда
		Значение = "BUG";
	ИначеЕсли ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Рекомендация Тогда
		Значение = "CODE_SMELL";	
	ИначеЕсли ВходящееЗначение = Перечисления.УровниКритичностиОшибок.Совместимо Тогда
		Значение = "BUG";
	КонецЕсли;
	
	Возврат Значение;
	
КонецФункции

Функция ТекстОшибки(Знач ВыборкаОшибокАПК)
	
	сборкаТекстаОшибки = Новый Массив;
	текстОшибки = СокрЛП( ВыборкаОшибокАПК.ТекстОшибки );
	
	Если ВыводитьУточнение( ВыборкаОшибокАПК ) Тогда
		
		Если СтрЗаканчиваетсяНа( текстОшибки, "." ) Тогда
			
			текстОшибки = Лев( текстОшибки, СтрДлина( текстОшибки ) -1 );
			
		КонецЕсли;
		
		текстОшибки = текстОшибки + " (" + ВыборкаОшибокАПК.Уточнение + ").";
		
	КонецЕсли;
	
	Если ЗначениеЗаполнено( ВыборкаОшибокАПК.МестоОбнаружения ) Тогда
		
		текстОшибки = текстОшибки + Символы.ПС + ВыборкаОшибокАПК.МестоОбнаружения;
		
	КонецЕсли;
	
	Возврат текстОшибки;

КонецФункции

Функция ВыводитьУточнение( Знач ВыборкаОшибокАПК )

	Если Не ЗначениеЗаполнено( ВыборкаОшибокАПК.Уточнение ) Тогда
		Возврат Ложь;
	КонецЕсли;
	
	массивКодовОшибки = Новый Массив;
	массивКодовОшибки.Добавить( "1025" );
	массивКодовОшибки.Добавить( "1036" );
	
	Возврат Не массивКодовОшибки.Найти( КодОшибки(ВыборкаОшибокАПК) ) = Неопределено;

КонецФункции

Функция ПредставлениеОшибки( Знач ВыборкаОшибокАПК )
	
	Если ВыборкаОшибокАПК.ПроверкаПлатформой Тогда
		// независимо от формата представление ошибок
		Возврат ВыборкаОшибокАПК.КодОшибки;	
	Иначе
		
		Представление = "";
		Если НРег(ФорматПредставленияОшибки) = НРег(ФорматОшибкиТолькоКод) Тогда
			Представление = КодОшибки(ВыборкаОшибокАПК); 		
		ИначеЕсли НРег(ФорматПредставленияОшибки) = НРег(ФорматОшибкиТолькоНаименование) Тогда 
			Представление = ВыборкаОшибокАПК.ТекстОшибки;		
		Иначе // ФорматПредставленияОшибки = ФорматОшибкиКодНаименование
			Представление = "" + КодОшибки(ВыборкаОшибокАПК) + " : " + ВыборкаОшибокАПК.ТекстОшибки;	
		КонецЕсли;
		
		Возврат Представление;
		
	КонецЕсли;
	
	Возврат ИсточникПроверки + "-" + КодОшибки( ВыборкаОшибокАПК );

КонецФункции

Функция КодОшибки( Знач ВыборкаОшибокАПК )
	
	стрКод = ВыборкаОшибокАПК.КодОшибки;
	
	Если Не ЗначениеЗаполнено( стрКод ) Тогда
		
		Возврат "";
		
	КонецЕсли;
	
	отЧисло = Новый ОписаниеТипов("Число",
			  Новый КвалификаторыЧисла(10, 0, ДопустимыйЗнак.Неотрицательный));
			  
	код = отЧисло.ПривестиЗначение( стрКод );
	
	Возврат Формат(код, "ЧН=0; ЧГ=");

КонецФункции

Функция ВыгрузитьОшибкиАПК(РезультатыПроверки, МассивГруппировок)
	
	Если нРег(ФорматЭкспорта) = ФорматЭкспортаGenericIssue Тогда
		Возврат ВыгрузитьОшибкиАПКGenericIssue(РезультатыПроверки, МассивГруппировок);	
	Иначе
		Возврат ВыгрузитьОшибкиАПКReportJSON(РезультатыПроверки, МассивГруппировок);	
	КонецЕсли;
	
КонецФункции

Функция ВыгрузитьОшибкиАПКReportJSON(РезультатыПроверки, МассивГруппировок)
	
	Результат = Истина;
	
	КоличествоДляВыгрузки = РезультатыПроверки.НайтиСтроки(Новый Структура("Проверено", Истина)).Количество();
	Сообщить("Для выгрузки: " + КоличествоДляВыгрузки + " ошибок");
	
	индикатор = ИндикаторПроцесса( КоличествоДляВыгрузки, "Выгрузка" );
	
	КоличествоВыгружено = 0;
	
	ИмяФайла = КаталогПроекта + ПолучитьРазделительПути() + "acc-json.json";
	
	Запись = Новый ЗаписьJSON;
	Запись.ПроверятьСтруктуру = Ложь;
	ПараметрыЗаписи = Новый ПараметрыЗаписиJSON();
	Запись.ОткрытьФайл(ИмяФайла,,, ПараметрыЗаписи);
	
	Запись.ЗаписатьНачалоОбъекта(); // корень
	Запись.ЗаписатьИмяСвойства("date");
	Запись.ЗаписатьЗначение(Формат(ТекущаяДата(), "ДФ='yyyy-MM-dd hh:mm:ss'"));
	Запись.ЗаписатьИмяСвойства("fileinfos");
	Запись.ЗаписатьНачалоМассива(); // fileinfos
	
	Для Каждого Группировка Из МассивГруппировок Цикл
		
		СтрокиПроверки = РезультатыПроверки.НайтиСтроки(Новый Структура("АбсолютныйПуть, Проверено", Группировка, Истина));	
		
		Если СтрокиПроверки.Количество() = 0 Тогда
			Продолжить;
		КонецЕсли;
		
		Запись.ЗаписатьНачалоОбъекта(); // file
		
		Запись.ЗаписатьИмяСвойства("path");
		Запись.ЗаписатьЗначение("file:///" + СтрЗаменить(КаталогИсходныхКодов, "\", "/") + "./" + Группировка);
		
		Запись.ЗаписатьИмяСвойства("diagnostics");
		Запись.ЗаписатьНачалоМассива(); // diagnostics
		
		Для Каждого СтрокаПроверки Из СтрокиПроверки Цикл
			
			КоличествоВыгружено = КоличествоВыгружено + 1;
			
			ОбработатьИндикатор( индикатор, КоличествоВыгружено );
			
			Запись.ЗаписатьНачалоОбъекта(); // item diagnostics	
			Запись.ЗаписатьИмяСвойства("range");		
			Запись.ЗаписатьНачалоОбъекта(); // range
			
			Запись.ЗаписатьИмяСвойства("start");	
			Запись.ЗаписатьНачалоОбъекта(); 
			Запись.ЗаписатьИмяСвойства("line");
			Запись.ЗаписатьЗначение(СтрокаПроверки.НачальнаяСтрока - 1);
			Запись.ЗаписатьИмяСвойства("character");
			Запись.ЗаписатьЗначение(СтрокаПроверки.НачальнаяКолонка - 1);
			Запись.ЗаписатьКонецОбъекта();
			
			Запись.ЗаписатьИмяСвойства("end");	
			Запись.ЗаписатьНачалоОбъекта(); 
			Запись.ЗаписатьИмяСвойства("line");
			Запись.ЗаписатьЗначение(СтрокаПроверки.КонечнаяСтрока - 1);
			Запись.ЗаписатьИмяСвойства("character");
			Запись.ЗаписатьЗначение(СтрокаПроверки.КонечнаяКолонка - 1); // нужно определять длину строки
			Запись.ЗаписатьКонецОбъекта();
			
			Запись.ЗаписатьКонецОбъекта(); // range
			
			// severity
			Запись.ЗаписатьИмяСвойства("severity");
			Запись.ЗаписатьЗначение(СтрокаПроверки.Статус);
			
			// code
			Запись.ЗаписатьИмяСвойства("code");
			Запись.ЗаписатьЗначение(СтрокаПроверки.КодОшибки);
			
			// source
			Запись.ЗаписатьИмяСвойства("source");
			Запись.ЗаписатьЗначение(СтрокаПроверки.ИсточникПроверки);
			
			// message
			Запись.ЗаписатьИмяСвойства("message");
			Запись.ЗаписатьЗначение(СтрокаПроверки.ТекстОшибки);
			
			// relatedInformation
			Запись.ЗаписатьИмяСвойства("relatedInformation");
			Запись.ЗаписатьЗначение(Неопределено);		
			Запись.ЗаписатьКонецОбъекта(); // item diagnostics
			
		КонецЦикла;
		
		Запись.ЗаписатьКонецМассива(); // diagnostics	
		Запись.ЗаписатьКонецОбъекта(); // file
		
	КонецЦикла;
	
	Запись.ЗаписатьКонецМассива(); // fileinfos
	Запись.ЗаписатьКонецОбъекта(); // корень
	Запись.Закрыть();
	
	Сообщить( "Файл с ошибками создан: " + ИмяФайла );

	Возврат Результат;
	
КонецФункции

Функция ВыгрузитьОшибкиАПКGenericIssue(РезультатыПроверки, МассивГруппировок)
	
	Результат = Истина;	
	ИмяФайла = КаталогПроекта + ПолучитьРазделительПути() + "acc-generic-issue.json";
	КоличествоВыгружено = 0;
	
	КоличествоДляВыгрузки = РезультатыПроверки.НайтиСтроки(Новый Структура("Проверено", Истина)).Количество();
	Сообщить(СтрШаблон("Для выгрузки: %1 ошибок", КоличествоДляВыгрузки));
	
	Индикатор = ИндикаторПроцесса(КоличествоДляВыгрузки, "Выгрузка");
	
	Запись = Новый ЗаписьJSON;
	Запись.ПроверятьСтруктуру = Ложь;
	ПараметрыЗаписи = Новый ПараметрыЗаписиJSON();
	Запись.ОткрытьФайл(ИмяФайла,,, ПараметрыЗаписи);
	
	Запись.ЗаписатьНачалоОбъекта(); // корень
	
	Запись.ЗаписатьИмяСвойства("issues");
	Запись.ЗаписатьНачалоМассива(); // issues
	
	Для Каждого Группировка Из МассивГруппировок Цикл
			
		СтрокиПроверки = РезультатыПроверки.НайтиСтроки(Новый Структура("АбсолютныйПуть, ФайлНайден", Группировка, Истина));	
		
		Если СтрокиПроверки.Количество() = 0 Тогда
			Продолжить;
		КонецЕсли;
		
		Для Каждого СтрокаПроверки Из СтрокиПроверки Цикл
			
			КоличествоВыгружено = КоличествоВыгружено + 1;	
			ОбработатьИндикатор(Индикатор, КоличествоВыгружено);
			
			Запись.ЗаписатьНачалоОбъекта(); // issue
			Запись.ЗаписатьИмяСвойства("engineId");
			Запись.ЗаписатьЗначение(СтрокаПроверки.ИсточникПроверки);
			
			Запись.ЗаписатьИмяСвойства("ruleId");
			Запись.ЗаписатьЗначение(СтрокаПроверки.КодОшибки);
			
			Запись.ЗаписатьИмяСвойства("severity");
			Запись.ЗаписатьЗначение(СтрокаПроверки.Статус);
			
			Запись.ЗаписатьИмяСвойства("type");
			Запись.ЗаписатьЗначение(СтрокаПроверки.ТипОшибки);
			
			Запись.ЗаписатьИмяСвойства("primaryLocation");
			Запись.ЗаписатьНачалоОбъекта(); // primaryLocation
			
			Запись.ЗаписатьИмяСвойства("message");
			Запись.ЗаписатьЗначение(СтрокаПроверки.ТекстОшибки);
			
			Запись.ЗаписатьИмяСвойства("filePath");
			Если ВыводитьОтносительныеПути Тогда
				Запись.ЗаписатьЗначение(ОтносительныйКаталогИсходныхКодов + "/" + Группировка);        
			Иначе
				Запись.ЗаписатьЗначение("" + СтрЗаменить(КаталогИсходныхКодов, "\", "/") + "./" + Группировка);
			КонецЕсли;
			
			Если СтрокаПроверки.Проверено И Не СтрокаПроверки.ОшибкаНаВесьМодуль Тогда
			
				Запись.ЗаписатьИмяСвойства("textRange");
				Запись.ЗаписатьНачалоОбъекта(); // textRange
				
				Запись.ЗаписатьИмяСвойства("startLine");
				Запись.ЗаписатьЗначение(СтрокаПроверки.НачальнаяСтрока);
				
				Запись.ЗаписатьИмяСвойства("endLine");
				Запись.ЗаписатьЗначение(СтрокаПроверки.КонечнаяСтрока);
				
				Запись.ЗаписатьИмяСвойства("startColumn");
				Запись.ЗаписатьЗначение(СтрокаПроверки.НачальнаяКолонка);
				
				Запись.ЗаписатьИмяСвойства("endColumn");
				Запись.ЗаписатьЗначение(СтрокаПроверки.КонечнаяКолонка);
				
				Запись.ЗаписатьКонецОбъекта(); // textRange			
				
			КонецЕсли;
			
			Запись.ЗаписатьКонецОбъекта(); // primaryLocation
		
			Запись.ЗаписатьИмяСвойства("effortMinutes");
			Запись.ЗаписатьЗначение(0);
			
			Запись.ЗаписатьКонецОбъекта(); // issue	
		
		КонецЦикла;
		
	КонецЦикла;
	
	Запись.ЗаписатьКонецМассива(); // issues
			
	Запись.ЗаписатьКонецОбъекта(); // корень
	Запись.Закрыть();
	
	Сообщить( "Файл с ошибками создан: " + ИмяФайла );
	
	Возврат Результат;
			
КонецФункции

Функция ПодготовитьОшибкиАПК(РезультатыПроверки, МассивГруппировок)

	Результат = Истина;
	
	КоличествоДляОбработки = РезультатыПроверки.Количество();
	КоличествоОбработано = 0;
	КоличествоПроверено = 0;
	
	индикатор = ИндикаторПроцесса( КоличествоДляОбработки, "Обработано" );
	
	Для Каждого ПутьКОбъекту Из МассивГруппировок Цикл
	
		НайденныеСтроки = РезультатыПроверки.НайтиСтроки(Новый Структура("АбсолютныйПуть", ПутьКОбъекту));
		
		ПутьКФайлу = СтрЗаменить(КаталогИсходныхКодов + ПолучитьРазделительПути() + ПутьКОбъекту, "/", "\"); // ? 
		Файл = Новый Файл(ПутьКФайлу);
		Существует = Файл.Существует();
		
		ТекстовыйДокумент = Новый ТекстовыйДокумент;
		Если Существует Тогда
			ТекстовыйДокумент.Прочитать(Файл.ПолноеИмя, КодировкаТекста.UTF8);
		КонецЕсли;
		
		ПроверкаПройдена = Существует;
		Для Каждого НайденнаяСтрока Из НайденныеСтроки Цикл
			
			КоличествоОбработано = КоличествоОбработано + 1;
			
			ОбработатьИндикатор( индикатор, КоличествоОбработано );
					
			Если ПроверкаПройдена Тогда
				
				НайденнаяСтрока.ФайлНайден = Истина;
				
				Если НайденнаяСтрока.ОшибкаНаВесьМодуль Тогда
					
					ПроверкаПройдена = Ложь;
					КоличествоСтрок = ТекстовыйДокумент.КоличествоСтрок();
					Для НомерСтроки = 1 По КоличествоСтрок Цикл
						
						СтрокаИзСодержимого = ТекстовыйДокумент.ПолучитьСтроку(НомерСтроки);
						ДлинаСтроки = СтрДлина(СтрокаИзСодержимого);
						Если ДлинаСтроки > 0 Тогда
							
							ПроверкаПройдена = Истина;	
							НачальныйУказатель = 1;
							КонечныйУказатель = ДлинаСтроки;
							НайденнаяСтрока.НачальнаяСтрока = НомерСтроки;
							
							Прервать;
							
						КонецЕсли;
						
					КонецЦикла;
					
					
				Иначе
					
					// в некоторых файлах почему то идет сдвиг - 1
					// например Catalogs/БанковскиеСчета/Forms/ФормаЭлемента/Ext/Form/Module.bsl
					
					СтрокаИзСодержимого = ТекстовыйДокумент.ПолучитьСтроку(НайденнаяСтрока.НачальнаяСтрока);
					ДлинаСтроки = СтрДлина(СтрокаИзСодержимого);
					СодержимоеСтроки = СокрЛП(СтрокаИзСодержимого);
					НачальныйУказатель = СтрНайти(СтрокаИзСодержимого, СодержимоеСтроки);
					КонечныйУказатель = 1;
					
					Если НачальныйУказатель > 0 И ДлинаСтроки <> 0 Тогда
						КонечныйУказатель = НачальныйУказатель + СтрДлина(СодержимоеСтроки) - 1;
						Если КонечныйУказатель = 0 Тогда // предположим что это пустая строка
							
							// для generic issues
							НайденнаяСтрока.ОшибкаНаВесьМодуль = Истина;
							
							КонечныйУказатель = 2;
						КонецЕсли;
						
						Если НачальныйУказатель = КонечныйУказатель Тогда
							Если КонечныйУказатель = 1 Тогда
								НайденнаяСтрока.ОшибкаНаВесьМодуль = Истина;
							Иначе	
								НачальныйУказатель = НачальныйУказатель - 1;						
							КонецЕсли;
						КонецЕсли;
						
					Иначе
						ПроверкаПройдена = Ложь;	
					КонецЕсли;
										
				КонецЕсли;
				
				Если ПроверкаПройдена Тогда
					
					НайденнаяСтрока.НачальнаяКолонка = НачальныйУказатель;
					НайденнаяСтрока.КонечнаяКолонка = КонечныйУказатель;
					НайденнаяСтрока.КонечнаяСтрока = НайденнаяСтрока.НачальнаяСтрока;
					
					КоличествоПроверено = КоличествоПроверено + 1;
					
				КонецЕсли;
				
			КонецЕсли;
			
			НайденнаяСтрока.Проверено = ПроверкаПройдена;
			
		КонецЦикла;
		
		ТекстовыйДокумент = Неопределено;
		
	КонецЦикла;

	
	Возврат Результат;
	
КонецФункции

Функция ОбработатьОшибкиАПК(ВыборкаОшибокАПК, РезультатыПроверки, МассивГруппировок)
	
	Результат = Истина;
	
	КоличествоОшибокОбщее = ВыборкаОшибокАПК.Количество();
	Сообщить( "Ошибок к подготовке: " + КоличествоОшибокОбщее );
	
	КоличествоОшибок = 0;
	КоличествоОбработано = 0;
	
	индикатор = ИндикаторПроцесса( КоличествоОшибокОбщее, "Подготовлено" );
	
	Пока ВыборкаОшибокАПК.Следующий() Цикл
		
		КоличествоОшибок = КоличествоОшибок + 1;
		
		ОбработатьИндикатор( индикатор, КоличествоОшибок );
				
		АбсолютныйПуть = АбсолютныйПутьОбъекта(
			ВыборкаОшибокАПК.Объект, 
			ВыборкаОшибокАПК.ТипОбъекта, 
			ВыборкаОшибокАПК.МестоОбнаружения, 
			ВыборкаОшибокАПК.Путь); 
			
		// Нет пути к исходнику - нет смысл обрабатывать дальше
		Если ПустаяСтрока(АбсолютныйПуть) Тогда
			Продолжить;		
		КонецЕсли;
		
		ОшибкаНаВесьМодуль = Ложь;
		
		МестоОбнаруженияСтроки = 1;
		МестоОбнаруженияКолонки = 1;
		ПозицияВТексте = СтрНайти(ВыборкаОшибокАПК.МестоОбнаружения, ШаблонПоискаУказанияСтроки); 
		
		Если ПозицияВТексте > 0 Тогда
			
			ЧастьСтроки = Прав(ВыборкаОшибокАПК.МестоОбнаружения, СтрДлина(ВыборкаОшибокАПК.МестоОбнаружения) - ПозицияВТексте - ДлинаШаблонаПоискаУказанияСтроки);
			Попытка
				МестоОбнаруженияСтроки = Число(СтрЗаменить(СокрЛП(ЧастьСтроки), " ", ""));
			Исключение
				МестоОбнаруженияСтроки = 1;
			КонецПопытки;
			
		Иначе
			
			ЕстьСовпадение = Ложь;
			Для Каждого ЭлементПоиска Из ИменаВидовМодулей Цикл
				Если СтрНайти(ВыборкаОшибокАПК.МестоОбнаружения, ЭлементПоиска) > 0 Тогда
					ЕстьСовпадение = Истина;
					Прервать;
				КонецЕсли;
			КонецЦикла;
			
			Если ЕстьСовпадение Тогда
				ОшибкаНаВесьМодуль = Истина;
				
				МестоОбнаруженияСтроки = 1;
				МестоОбнаруженияКолонки = 1;
			КонецЕсли;
			
		КонецЕсли;
		
		Результат = РезультатыПроверки.Добавить();
		Результат.Объект = ВыборкаОшибокАПК.Объект;
		Результат.АбсолютныйПуть = АбсолютныйПуть;
		Результат.Путь = ВыборкаОшибокАПК.Путь;
		Результат.ФайлНайден = Ложь;
		Результат.ТекстОшибки = ТекстОшибки(ВыборкаОшибокАПК); 
		Результат.КодОшибки = ПредставлениеОшибки(ВыборкаОшибокАПК);
		
		Результат.НачальнаяСтрока = МестоОбнаруженияСтроки;
		Результат.НачальнаяКолонка = МестоОбнаруженияКолонки;
		
		Если МассивГруппировок.Найти(Результат.АбсолютныйПуть) = Неопределено Тогда
			МассивГруппировок.Добавить(Результат.АбсолютныйПуть);
		КонецЕсли;
		
		//Результат.Статус = "Error";
		Если нРег(ФорматЭкспорта) = ФорматЭкспортаGenericIssue Тогда
			Результат.Статус = ЗначениеКритичностиGenericIssue(ВыборкаОшибокАПК.Критичность);
			Результат.ТипОшибки = ТипОшибкиGenericIssue(ВыборкаОшибокАПК.Критичность);
		Иначе
			Результат.Статус = ЗначениеКритичностиСтрокой(ВыборкаОшибокАПК.Критичность);	
			Результат.ТипОшибки = "";
		КонецЕсли;
		Результат.ИсточникПроверки = ИсточникПроверки;
		Результат.ОшибкаНаВесьМодуль = ОшибкаНаВесьМодуль;
		
		КоличествоОбработано = КоличествоОбработано + 1;
		
	КонецЦикла;
	
	Сообщить( "Подготовлено ошибок: " + КоличествоОбработано );
	
	Возврат Результат;
	
КонецФункции

Функция РезультатыПроверки()
	
	РезультатыПроверки = Новый ТаблицаЗначений;
	РезультатыПроверки.Колонки.Добавить("Объект");
	РезультатыПроверки.Колонки.Добавить("АбсолютныйПуть");
	РезультатыПроверки.Колонки.Добавить("Путь");
	РезультатыПроверки.Колонки.Добавить("ТекстОшибки");
	РезультатыПроверки.Колонки.Добавить("КодОшибки");
	РезультатыПроверки.Колонки.Добавить("НачальнаяСтрока");
	РезультатыПроверки.Колонки.Добавить("НачальнаяКолонка");
	РезультатыПроверки.Колонки.Добавить("КонечнаяСтрока");
	РезультатыПроверки.Колонки.Добавить("КонечнаяКолонка");
	РезультатыПроверки.Колонки.Добавить("Статус");
	РезультатыПроверки.Колонки.Добавить("ТипОшибки");
	РезультатыПроверки.Колонки.Добавить("ИсточникПроверки");
	РезультатыПроверки.Колонки.Добавить("ФайлНайден");
	РезультатыПроверки.Колонки.Добавить("Проверено");
	РезультатыПроверки.Колонки.Добавить("ОшибкаНаВесьМодуль");
	Возврат РезультатыПроверки;
	
КонецФункции

Функция ТаблицаСинонимовОбъектов()
	
	ТаблицаСинонимов = Новый ТаблицаЗначений;
	ТаблицаСинонимов.Колонки.Добавить("ТипОбъекта");
	ТаблицаСинонимов.Колонки.Добавить("Синоним");
	ТаблицаСинонимов.Колонки.Добавить("СинонимXML");
	Возврат ТаблицаСинонимов;
	
КонецФункции

Процедура ДобавитьВТаблицуСинонимов(Таблица, ТипОбъекта, Синоним, СинонимXML)
	
	НоваяСтрока = Таблица.Добавить();
	НоваяСтрока.ТипОбъекта = ТипОбъекта;
	НоваяСтрока.Синоним = Синоним;
	НоваяСтрока.СинонимXML = СинонимXML;
	
КонецПроцедуры

#Область Прочее

// Формирует и выводит сообщение, которое может быть связано с элементом
// управления формы.
//
// Параметры:
//   ТекстСообщенияПользователю - Строка - текст сообщения.
//   КлючДанных                 - ЛюбаяСсылка - на объект информационной базы.
//                                Ссылка на объект информационной базы, к которому это сообщение относится,
//                                или ключ записи.
//   Поле                       - Строка - наименование реквизита формы.
//   ПутьКДанным                - Строка - путь к данным (путь к реквизиту формы).
//   Отказ                      - Булево - Выходной параметр.
//                               Всегда устанавливается в значение Истина.
//
// Пример:
//
//  1. Для вывода сообщения у поля управляемой формы, связанного с реквизитом объекта:
//	ОбщегоНазначенияКлиентСервер.СообщитьПользователю(
//		НСтр("ru='Сообщение об ошибке.'"),,
//		"ПолеВРеквизитеФормыОбъект",
//		"Объект");
//
//  Альтернативный вариант использования в форме объекта:
//	ОбщегоНазначенияКлиентСервер.СообщитьПользователю(
//		НСтр("ru='Сообщение об ошибке.'"),,
//		"Объект.ПолеВРеквизитеФормыОбъект");
//
//  2. Для вывода сообщения рядом с полем управляемой формы, связанным с реквизитом формы:
//	ОбщегоНазначенияКлиентСервер.СообщитьПользователю(
//		НСтр("ru='Сообщение об ошибке.'"),,
//		"ИмяРеквизитаФормы");
//
//  3. Для вывода сообщения связанного с объектом информационной базы.
//	ОбщегоНазначенияКлиентСервер.СообщитьПользователю(
//		НСтр("ru='Сообщение об ошибке.'"), ОбъектИнформационнойБазы, "Ответственный",,Отказ);
//
//  4. Для вывода сообщения по ссылке на объект информационной базы.
//	ОбщегоНазначенияКлиентСервер.СообщитьПользователю(
//		НСтр("ru='Сообщение об ошибке.'"), Ссылка,,, Отказ);
//
// Случаи некорректного использования:
//  1. Передача одновременно параметров КлючДанных и ПутьКДанным.
//  2. Передача в параметре КлючДанных значения типа отличного от допустимых.
//  3. Установка ссылки без установки поля (и/или пути к данным).
//
Процедура СообщитьПользователю(Знач ТекстСообщенияПользователю, Знач КлючДанных = Неопределено, Знач Поле = "",
	Знач ПутьКДанным = "", Отказ = Ложь)
	
	Сообщение = Новый СообщениеПользователю;
	Сообщение.Текст = ТекстСообщенияПользователю;
	Сообщение.Поле = Поле;
	
	ЭтоОбъект = Ложь;
	
	#Если Не ТонкийКлиент И Не ВебКлиент Тогда
	Если КлючДанных <> Неопределено
		И XMLТипЗнч(КлючДанных) <> Неопределено Тогда
		
		ТипЗначенияСтрокой = XMLТипЗнч(КлючДанных).ИмяТипа;
		ЭтоОбъект = СтрНайти(ТипЗначенияСтрокой, "Object.") > 0;
	КонецЕсли;
	#КонецЕсли
	
	Если ЭтоОбъект Тогда
		Сообщение.УстановитьДанные(КлючДанных);
	Иначе
		Сообщение.КлючДанных = КлючДанных;
	КонецЕсли;
	
	Если НЕ ПустаяСтрока(ПутьКДанным) Тогда
		Сообщение.ПутьКДанным = ПутьКДанным;
	КонецЕсли;
	
	Сообщение.Сообщить();
	
	Отказ = Истина;
	
КонецПроцедуры

Функция ИндикаторПроцесса( Знач КоличествоПроходов, Знач ПредставлениеПроцесса )
	
	Индикатор = Новый Структура;
	
	Индикатор.Вставить("КоличествоПроходов", КоличествоПроходов);
	Индикатор.Вставить("ПредставлениеПроцесса", ПредставлениеПроцесса);
		
	Индикатор.Вставить("ДатаНачалаПроцесса", ТекущаяДата());
	
	Индикатор.Вставить("МинимальныйПериодОбновления", 1);
	Индикатор.Вставить("ДатаСледующегоОбновления", Дата('00010101'));
	
	Возврат Индикатор;
	
КонецФункции

Процедура ОбработатьИндикатор(Индикатор, Счетчик = 0)
	
	#Если Клиент Тогда
		
		ОбработкаПрерыванияПользователя();
		
		ОбновитьИндикатор = Истина;
		ТекущаяДата = ТекущаяДата();
		Если ТекущаяДата >= Индикатор.ДатаСледующегоОбновления Тогда
			Индикатор.ДатаСледующегоОбновления = ТекущаяДата + Индикатор.МинимальныйПериодОбновления;
		Иначе
			ОбновитьИндикатор = Ложь;
		КонецЕсли;
		
		Если ОбновитьИндикатор Тогда
			
			ТекущаяДата = ТекущаяДата();
			ПрошлоВремени = ТекущаяДата - Индикатор.ДатаНачалаПроцесса;
			Осталось = ПрошлоВремени * (Индикатор.КоличествоПроходов / Счетчик - 1);
			Часов = Цел(Осталось / 3600);
			Осталось = Осталось - (Часов * 3600);
			Минут = Цел(Осталось / 60);
			Секунд = Цел(Цел(Осталось - (Минут * 60)));
			ОсталосьВремени = Формат(Часов, "ЧЦ=2; ЧН=00; ЧВН=") + ":"
			+ Формат(Минут, "ЧЦ=2; ЧН=00; ЧВН=") + ":"
			+ Формат(Секунд, "ЧЦ=2; ЧН=00; ЧВН=");
			ТекстОсталось = "Осталось: ~" + ОсталосьВремени;
			
			ТекстСостояния = Индикатор.ПредставлениеПроцесса + " "
			+ Формат(Счетчик / Индикатор.КоличествоПроходов * 100, "ЧЦ=3; ЧДЦ=0") + "%  " + ТекстОсталось;
			
			Состояние(ТекстСостояния);
			
		КонецЕсли;
		
		Если Счетчик = Индикатор.КоличествоПроходов Тогда
			Состояние("");
		КонецЕсли;
		
	#КонецЕсли
	
КонецПроцедуры

Функция ПолучитьВерсиюАПК()
	
	// 1.2.2
	Возврат Метаданные.Версия;
	
КонецФункции

Функция ВерсияРавнаИлиБольше(Версия, ПоискВерсии)
	
	Разделитель = ".";
	ВерсияПодходит = Ложь;
	
	МассивВерсии = СтрРазделить(Версия, Разделитель);
	МассивПоискаВерсии = СтрРазделить(ПоискВерсии, Разделитель);
	
	МинИндекс = Мин(МассивВерсии.Количество(), МассивПоискаВерсии.Количество());
	МинИндекс = ?(МинИндекс = 0, 0, МинИндекс - 1); 
	
	КоличествоСовпадений = 0;	
	Для Индекс = 0 По МинИндекс Цикл
		
		ЗначениеВерсии = Число(МассивВерсии[Индекс]); 
		ЗначениеПоискаВерсии = Число(МассивПоискаВерсии[Индекс]); 
		
		Если ЗначениеВерсии >= ЗначениеПоискаВерсии Тогда
			КоличествоСовпадений = КоличествоСовпадений + 1;	
		КонецЕсли;
	
	КонецЦикла;
	
	Если КоличествоСовпадений = МинИндекс + 1 Тогда
		ВерсияПодходит = Истина;
	КонецЕсли;
		
	Возврат ВерсияПодходит;
	
КонецФункции

#КонецОбласти

#КонецОбласти

ИсточникПроверки = "acc";
ШаблонПоискаУказанияСтроки = "стр.";
ДлинаШаблонаПоискаУказанияСтроки = СтрДлина(ШаблонПоискаУказанияСтроки);

ФорматЭкспортаReportJSON = нРег("ReportJSON");
ФорматЭкспортаGenericIssue = нРег("GenericIssue");

ФорматОшибкиТолькоКод = "code";
ФорматОшибкиТолькоНаименование = "name";
ФорматОшибкиКодНаименование = "codename";

ВерсияАПК = ПолучитьВерсиюАПК();

ВерсияОбработки = "1.0.0";


