USE [Staging]
GO
/****** Object:  Table [dbo].[DimClientes]    Script Date: 11/06/2023 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimClientes](
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
/****** Object:  Table [dbo].[DimCuentas]    Script Date: 11/06/2023 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimCuentas](
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
/****** Object:  Table [dbo].[DimEmpleados]    Script Date: 11/06/2023 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimEmpleados](
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
/****** Object:  Table [dbo].[DimPrestamos]    Script Date: 11/06/2023 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPrestamos](
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
/****** Object:  Table [dbo].[FactTransacciones]    Script Date: 11/06/2023 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactTransacciones](
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[ClienteID] [int] NULL,
	[CuentaID] [int] NULL,
	[EmpleadoID] [int] NULL,
	[PrestamoID] [int] NULL,
	[Saldo] [decimal](10, 2) NULL,
	[MontoPrestamo] [decimal](10, 2) NULL,
	[TasaInteres] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[DimCuentas]  WITH NOCHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[DimClientes] ([ClienteID])
GO
ALTER TABLE [dbo].[DimPrestamos]  WITH NOCHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[DimClientes] ([ClienteID])
GO
ALTER TABLE [dbo].[FactTransacciones]  WITH NOCHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[DimClientes] ([ClienteID])
GO
ALTER TABLE [dbo].[FactTransacciones]  WITH NOCHECK ADD FOREIGN KEY([CuentaID])
REFERENCES [dbo].[DimCuentas] ([CuentaID])
GO
ALTER TABLE [dbo].[FactTransacciones]  WITH NOCHECK ADD FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[DimEmpleados] ([EmpleadoID])
GO
ALTER TABLE [dbo].[FactTransacciones]  WITH NOCHECK ADD FOREIGN KEY([PrestamoID])
REFERENCES [dbo].[DimPrestamos] ([PrestamoID])
GO
