-- CreateTable
CREATE TABLE "Users" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "name" TEXT NOT NULL,
    "lastname" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "active" BOOLEAN NOT NULL
);

-- CreateTable
CREATE TABLE "Notificaciones" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "idSolicitante" TEXT NOT NULL,
    CONSTRAINT "Notificaciones_idSolicitante_fkey" FOREIGN KEY ("idSolicitante") REFERENCES "Users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Items" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "nombre" TEXT NOT NULL,
    "marca" TEXT NOT NULL,
    "numero_serie" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "Items_en_ubicacion" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "item_id" TEXT NOT NULL,
    "ubicacion_id" TEXT NOT NULL,
    "cantidad" INTEGER NOT NULL,
    CONSTRAINT "Items_en_ubicacion_item_id_fkey" FOREIGN KEY ("item_id") REFERENCES "Items" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Items_en_ubicacion_ubicacion_id_fkey" FOREIGN KEY ("ubicacion_id") REFERENCES "Ubicaciones" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Ubicaciones" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "sector" TEXT NOT NULL,
    "tipo_ubicacion" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_email_key" ON "Users"("email");
