-- seeds.sql
-- Datos semilla para pruebas

-- Insertamos 3 usuarios
INSERT INTO usuarios (usuario_id, nombre, email) VALUES 
(1, 'Ana Gauss', 'ana@math.com'),
(2, 'Isaac Newton', 'isaac@gravity.com'),
(3, 'Alan Turing', 'alan@enigma.com');

-- Insertamos transacciones (Historial)
-- Ana compra mucho y reciente (Cliente VIP)
INSERT INTO ordenes (usuario_id, monto, fecha) VALUES 
(1, 150.00, '2023-12-01'),
(1, 200.50, '2023-12-15'),
(1, 50.00,  '2023-12-28');

-- Isaac compró hace mucho (Cliente en Riesgo)
INSERT INTO ordenes (usuario_id, monto, fecha) VALUES 
(2, 500.00, '2023-01-10');

-- Alan compró recientemente pero poco (Cliente Nuevo/Promedio)
INSERT INTO ordenes (usuario_id, monto, fecha) VALUES 
(3, 20.00, '2023-12-25');