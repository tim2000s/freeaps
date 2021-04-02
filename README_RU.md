# FreeAPS X

FreeAPS X - система искуственной поджелудочной железы для iOS на основе алгоритмов [OpenAPS Reference](https://github.com/openaps/oref0)

[Полная документация OpenAPS](https://openaps.readthedocs.io/en/latest/)

FreeAPS X использует оригинальные JavaScript файлы oref0 и предоставляет пользовательский интерфейс (UI) для управления и настроек системы.

## Требования к смартфону

- Все iPhone с поддержкой iOS 14 и выше.

## Поддерживаемые помпы

Для управления инсулиновой помпой используется модифицированная версия библиотеки [rileylink_ios](https://github.com/ps2/rileylink_ios), поддерживает тот же список помп:

- Medtronic 515 or 715 (any firmware)
- Medtronic 522 or 722 (any firmware)
- Medtronic 523 or 723 (firmware 2.4 or lower)
- Medtronic Worldwide Veo 554 or 754 (firmware 2.6A or lower)
- Medtronic Canadian/Australian Veo 554 or 754 (firmware 2.7A or lower)
- Omnipod "Eros" pods

Для управления помпой необходимо устройство [RileyLink](https://getrileylink.org), oRange, Pickle, GNARL, Emalink или аналоги.

## Текущее состояние FreeAPS X

FreeAPS X находится в состоянии активной разработки.

**Не рекомендуется использовать систему повседневно для контроля гликемии!**

Для тестирования на текущий момент доступна бета-версия приложения

## Реализовано

- Все базовые функции oref0
- Все базовые функции oref1 (SMB, UAM и другие)
- Autotune
- Autosens
- Использование Nightscout в качестве CGM
- Использование локального сервера в качестве CGM (программы Spike, Diabox)
- Загрузка состояния системы в Nightscout
- Удаленный ввод углеводов и временных целей через Nightscout

## Не реализовано (планируется в будущих версиях)

- Режим открытой петли
- Уведомления на смартфоне о состоянии системы
- Возможность отмены болюса
- Загрузка профиля в Nightscout
- Виджет на рабочий стол
- Приложение для часов
- Удаленный ввод болюса и управление помпой
- Плагины
- Поддержка Dexcom
- Пооддержка программы Здоровье
- Поробное описание функций внутри приложения

## Документация

*В разработке*

## Сообщество

- [Английская Telegram группа](https://t.me/freeapsx_eng)
- [Русская Telegram группа](https://t.me/freeapsx)
