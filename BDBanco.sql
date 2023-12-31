USE [BDBanco]
GO
/****** Object:  Table [dbo].[Asignaciones]    Script Date: 11/06/2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaciones](
	[AsignacionID] [int] NOT NULL,
	[EmpleadoID] [int] NULL,
	[CuentaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AsignacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/06/2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cuentas]    Script Date: 11/06/2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cuentas](
	[CuentaID] [int] NOT NULL,
	[ClienteID] [int] NULL,
	[TipoCuenta] [varchar](50) NULL,
	[Saldo] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CuentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 11/06/2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Cargo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpleadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PagosPrestamos]    Script Date: 11/06/2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosPrestamos](
	[PagoID] [int] NOT NULL,
	[PrestamoID] [int] NULL,
	[MontoPago] [decimal](10, 2) NULL,
	[FechaPago] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PagoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 11/06/2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamos](
	[PrestamoID] [int] NOT NULL,
	[ClienteID] [int] NULL,
	[MontoPrestamo] [decimal](10, 2) NULL,
	[TasaInteres] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PrestamoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transacciones]    Script Date: 11/06/2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transacciones](
	[TransaccionID] [int] NOT NULL,
	[CuentaID] [int] NULL,
	[FechaTransaccion] [date] NULL,
	[Monto] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransaccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (1, 1, 1)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (2, 2, 2)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (3, 3, 3)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (4, 4, 4)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (5, 5, 5)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (6, 6, 6)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (7, 7, 7)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (8, 8, 8)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (9, 9, 9)
INSERT [dbo].[Asignaciones] ([AsignacionID], [EmpleadoID], [CuentaID]) VALUES (10, 10, 10)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (1, N'Juan', N'Perez', N'Calle 123', N'1234567890')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (2, N'Maria', N'Lopez', N'Avenida 456', N'0987654321')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (3, N'Pedro', N'Gomez', N'Plaza Principal', N'9876543210')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (4, N'Laura', N'Rodriguez', N'Carrera 789', N'0123456789')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (5, N'Carlos', N'Gonzalez', N'Avenida Central', N'5678901234')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (6, N'Ana', N'Martinez', N'Calle 456', N'3456789012')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (7, N'Luis', N'Hernandez', N'Avenida 789', N'9012345678')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (8, N'Sofia', N'Sanchez', N'Carrera 123', N'4567890123')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (9, N'Jorge', N'Ramirez', N'Plaza Central', N'2345678901')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (10, N'Isabel', N'Torres', N'Calle Principal', N'7890123456')
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (1, 1, N'Ahorros', CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (2, 2, N'Corriente', CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (3, 3, N'Ahorros', CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (4, 4, N'Corriente', CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (5, 5, N'Ahorros', CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (6, 6, N'Corriente', CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (7, 7, N'Ahorros', CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (8, 8, N'Corriente', CAST(6000.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (9, 9, N'Ahorros', CAST(3500.00 AS Decimal(10, 2)))
INSERT [dbo].[Cuentas] ([CuentaID], [ClienteID], [TipoCuenta], [Saldo]) VALUES (10, 10, N'Corriente', CAST(4500.00 AS Decimal(10, 2)))
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (1, N'Carlos', N'Lopez', N'Cajero')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (2, N'Ana', N'Garcia', N'Gerente')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (3, N'Pedro', N'Hernandez', N'Analista')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (4, N'Laura', N'Perez', N'Cajero')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (5, N'Jorge', N'Gomez', N'Analista')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (6, N'Sofia', N'Torres', N'Gerente')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (7, N'Luis', N'Ramirez', N'Cajero')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (8, N'Isabel', N'Sanchez', N'Analista')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (9, N'Juan', N'Martinez', N'Cajero')
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Cargo]) VALUES (10, N'Maria', N'Rodriguez', N'Analista')
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(0x73450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (2, 2, CAST(500.00 AS Decimal(10, 2)), CAST(0x74450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (3, 3, CAST(750.00 AS Decimal(10, 2)), CAST(0x75450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (4, 4, CAST(600.00 AS Decimal(10, 2)), CAST(0x76450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (5, 5, CAST(400.00 AS Decimal(10, 2)), CAST(0x77450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (6, 6, CAST(200.00 AS Decimal(10, 2)), CAST(0x78450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (7, 7, CAST(1000.00 AS Decimal(10, 2)), CAST(0x79450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (8, 8, CAST(250.00 AS Decimal(10, 2)), CAST(0x7A450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (9, 9, CAST(300.00 AS Decimal(10, 2)), CAST(0x7B450B00 AS Date))
INSERT [dbo].[PagosPrestamos] ([PagoID], [PrestamoID], [MontoPago], [FechaPago]) VALUES (10, 10, CAST(800.00 AS Decimal(10, 2)), CAST(0x7C450B00 AS Date))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (1, 1, CAST(5000.00 AS Decimal(10, 2)), CAST(0.05 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (2, 2, CAST(3000.00 AS Decimal(10, 2)), CAST(0.03 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (3, 3, CAST(2000.00 AS Decimal(10, 2)), CAST(0.04 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (4, 4, CAST(4000.00 AS Decimal(10, 2)), CAST(0.06 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (5, 5, CAST(2500.00 AS Decimal(10, 2)), CAST(0.05 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (6, 6, CAST(1500.00 AS Decimal(10, 2)), CAST(0.04 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (7, 7, CAST(3500.00 AS Decimal(10, 2)), CAST(0.05 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (8, 8, CAST(4500.00 AS Decimal(10, 2)), CAST(0.06 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (9, 9, CAST(6000.00 AS Decimal(10, 2)), CAST(0.07 AS Decimal(5, 2)))
INSERT [dbo].[Prestamos] ([PrestamoID], [ClienteID], [MontoPrestamo], [TasaInteres]) VALUES (10, 10, CAST(2000.00 AS Decimal(10, 2)), CAST(0.03 AS Decimal(5, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (1, 1, CAST(0x6F450B00 AS Date), CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (2, 2, CAST(0x70450B00 AS Date), CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (3, 3, CAST(0x71450B00 AS Date), CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (4, 4, CAST(0x72450B00 AS Date), CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (5, 5, CAST(0x73450B00 AS Date), CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (6, 6, CAST(0x74450B00 AS Date), CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (7, 7, CAST(0x75450B00 AS Date), CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (8, 8, CAST(0x76450B00 AS Date), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (9, 9, CAST(0x77450B00 AS Date), CAST(750.00 AS Decimal(10, 2)))
INSERT [dbo].[Transacciones] ([TransaccionID], [CuentaID], [FechaTransaccion], [Monto]) VALUES (10, 10, CAST(0x78450B00 AS Date), CAST(600.00 AS Decimal(10, 2)))
ALTER TABLE [dbo].[Asignaciones]  WITH CHECK ADD FOREIGN KEY([CuentaID])
REFERENCES [dbo].[Cuentas] ([CuentaID])
GO
ALTER TABLE [dbo].[Asignaciones]  WITH CHECK ADD FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleados] ([EmpleadoID])
GO
ALTER TABLE [dbo].[Cuentas]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
ALTER TABLE [dbo].[PagosPrestamos]  WITH CHECK ADD FOREIGN KEY([PrestamoID])
REFERENCES [dbo].[Prestamos] ([PrestamoID])
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
ALTER TABLE [dbo].[Transacciones]  WITH CHECK ADD FOREIGN KEY([CuentaID])
REFERENCES [dbo].[Cuentas] ([CuentaID])
GO
