INSERT INTO "Users" (email, "passwordHash", "fullName") VALUES
('admin@example.com', 'hash123', 'Администратор Системы'),
('Zaharprasolov8@gmail.com', 'hash456', 'Прасолов Захар');

INSERT INTO "Tasks" ("userId", title, priority, "dueDate", status) VALUES
(2, 'Сдать отчёт по практике', 'high', '2026-04-26', 'done'),
(2, 'Заполнить ежедневник', 'low', '2026-04-27', 'process'),
(2, 'Купить билеты в кино', 'medium', '2026-04-28', 'new'),
(2, 'Подготовить презентацию', 'high', '2026-05-02', 'new');

INSERT INTO "TaskLogs" ("taskId", "oldStatus", "newStatus") VALUES
(1, 'new', 'process'),
(1, 'process', 'done'),
(2, 'new', 'process');