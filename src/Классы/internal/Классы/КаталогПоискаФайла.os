Перем ПриоритетПоиска;
Перем КаталогПоиска;
Перем НаименованиеФайлаПоиска;
Перем РасширениеФайлаПоиска;
Перем НайденныйФайл;

// Возвращает приоритет данного файла
//
//  Возвращаемое значение:
//   Число - приоритет поиска
//
Функция Приоритет() Экспорт
	Возврат ПриоритетПоиска;
КонецФункции

// Возвращает расширение файла для поиска
//
//  Возвращаемое значение:
//   Строка - текущее расширение файла поиска
//
Функция РасширениеФайла() Экспорт
	Возврат РасширениеФайлаПоиска;
КонецФункции

// Возвращает полный путь к найденному файлу 
//
//  Возвращаемое значение:
//   Строка - полный путь к найденному файлу 
//
Функция ИмяФайла() Экспорт
	Возврат НайденныйФайл;
КонецФункции

// Выполняет поиск файла в каталоге
//
//  Возвращаемое значение:
//   Булево - результат поиска, истина - файл найдет
//
Функция ПоискФайла() Экспорт
	
	ПолноеНаименованиеФайлаПоиска = СформироватьПолноеНаименование();

	ФайлПараметровПоиска = Новый Файл(ОбъединитьПути(КаталогПоиска, ПолноеНаименованиеФайлаПоиска));

	РезультатПоиска = ФайлПараметровПоиска.Существует();

	НайденныйФайл = ФайлПараметровПоиска.ПолноеИмя;
	
	Возврат РезультатПоиска;

КонецФункции

Функция СформироватьПолноеНаименование()

	Возврат СтрШаблон("%1.%2", НаименованиеФайлаПоиска, РасширениеФайлаПоиска);
	
КонецФункции

Процедура ПриСозданииОбъекта(ВходящийКаталогПоиска, ВходящееНаименованиеПоиска, ВходящиееРасширениеФайлаПоиска, Приоритет)
	
	КаталогПоиска = ВходящийКаталогПоиска;
	НаименованиеФайлаПоиска = ВходящееНаименованиеПоиска;
	РасширениеФайлаПоиска = ВходящиееРасширениеФайлаПоиска;
	ПриоритетПоиска = Приоритет;

КонецПроцедуры