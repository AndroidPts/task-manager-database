# Task Manager — База данных PostgreSQL

## Структура
| Файл | Описание |
|------|----------|
| `schema.sql` | Создание таблиц Users, Tasks, TaskLogs |
| `seed.sql` | Тестовые данные |
| `queries.sql` | Примеры SQL-запросов |

## Связи таблиц
- Users → Tasks: один-ко-многим (ON DELETE CASCADE)
- Tasks → TaskLogs: один-ко-многим (ON DELETE CASCADE)

## Запуск
```bash
psql -U postgres -d taskmanager -f schema.sql
psql -U postgres -d taskmanager -f seed.sql


## Связанные репозитории

- [Серверная часть](https://github.com/AndroidPts/task-manager-server)
- [Клиентская часть](https://github.com/AndroidPts/task-manager-client)