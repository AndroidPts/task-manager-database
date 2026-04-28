-- Таблица Users
CREATE TABLE IF NOT EXISTS "Users" (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    "passwordHash" VARCHAR(255) NOT NULL,
    "fullName" VARCHAR(100) NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW()
);

-- Таблица Tasks
CREATE TABLE IF NOT EXISTS "Tasks" (
    id SERIAL PRIMARY KEY,
    "userId" INTEGER NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    priority VARCHAR(10) DEFAULT 'medium',
    "dueDate" DATE NOT NULL,
    status VARCHAR(10) DEFAULT 'new',
    "createdAt" TIMESTAMP DEFAULT NOW(),
    "updatedAt" TIMESTAMP DEFAULT NOW()
);

-- Таблица TaskLogs
CREATE TABLE IF NOT EXISTS "TaskLogs" (
    id SERIAL PRIMARY KEY,
    "taskId" INTEGER NOT NULL REFERENCES "Tasks"(id) ON DELETE CASCADE,
    "oldStatus" VARCHAR(20) NOT NULL,
    "newStatus" VARCHAR(20) NOT NULL,
    "changedAt" TIMESTAMP DEFAULT NOW()
);