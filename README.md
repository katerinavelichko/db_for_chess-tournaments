# Шахматные турниры - База данных

Этот проект представляет собой базу данных для учета информации о шахматных турнирах, участниках, партиях и результатах.

## Установка

1. Склонируйте репозиторий на свой локальный компьютер.
2. Убедитесь, что у вас установлена СУБД (PostgreSQL).
3. Создайте новую базу данных с использованием предоставленных SQL-скриптов.

## Структура базы данных

База данных состоит из нескольких таблиц:

1. `tournaments` - информация о шахматных турнирах, включая название, даты проведения.
2. `players` - данные об участниках турниров, такие как имя, рейтинг и страна.
3. `games` - информация о каждой отдельной партии, включая результат.
4. `inventory` - информация об имеющихся шахматных комплектах.
5. `clubs` - данные о шахматных клубах, их местоположении и контактной информации.
6. `judges` - информация о судьях.
7. `location` - информация о различных местах проведения турниров.

## Использование

Вы можете использовать эту базу данных для отслеживания информации о проведенных шахматных турнирах, участниках, партиях и результатах, а также для управления инвентарем шахматных комплектов, контактной информацией шахматных клубов, данных о судьях и местах проведения турниров.

Примеры SQL-запросов:

1. Получить список всех клубов и их контактную информацию:
   ```sql
   SELECT * FROM clubs;
   ```

2. Получить список всех судей и их роли на турнирах:
   ```sql
   SELECT * FROM judges;
   ```
## Модели

![Концептуальная модель](https://github.com/katerinavelichko/db_for_chess-tournaments/raw/main/models/conceptual_model-1.png)
![Логическая модель](https://github.com/katerinavelichko/db_for_chess-tournaments/raw/main/models/logic_model-1.png)


