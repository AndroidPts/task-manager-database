-- 1. Получение задач с фильтром по статусу
SELECT * FROM "Tasks" WHERE "userId" = 5 AND status = 'done';

-- 2. Смена статуса с записью в историю
BEGIN;
INSERT INTO "TaskLogs" ("taskId", "oldStatus", "newStatus") VALUES (12, 'process', 'done');
UPDATE "Tasks" SET status = 'done' WHERE id = 12;
COMMIT;

-- 3. Статистика за неделю
SELECT COUNT(*) AS total,
       SUM(CASE WHEN status = 'done' THEN 1 ELSE 0 END) AS completed
FROM "Tasks" WHERE "dueDate" >= CURRENT_DATE - INTERVAL '7 days';