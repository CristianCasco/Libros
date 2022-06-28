
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/11/2022 13:53:28
-- Generated from EDMX file: C:\Users\Personal\source\repos\PrestamoLibros\LibrosEDM\ModeloAplicacion\Modelo.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PRESTAMOLIBROS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Libros'
CREATE TABLE [dbo].[Libros] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoLibro] char(3)  NOT NULL,
    [Titulo] varchar(50)  NOT NULL,
    [ISPN] varchar(50)  NOT NULL,
    [EditorialId] int  NOT NULL,
    [EditorialId1] int  NOT NULL,
    [MateriaId] int  NOT NULL,
    [IdiomaId] int  NOT NULL
);
GO

-- Creating table 'Editorials'
CREATE TABLE [dbo].[Editorials] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoEditorial] char(3)  NOT NULL,
    [DescripcionEditorial] varchar(50)  NOT NULL,
    [EditorialId] int  NOT NULL
);
GO

-- Creating table 'Materias'
CREATE TABLE [dbo].[Materias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoMateria] char(3)  NOT NULL,
    [DescripcionMateria] varchar(50)  NOT NULL
);
GO

-- Creating table 'Autors'
CREATE TABLE [dbo].[Autors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoAutor] char(3)  NOT NULL,
    [Apellido] varchar(50)  NOT NULL,
    [Nombre] varchar(50)  NOT NULL
);
GO

-- Creating table 'DetalleAutors'
CREATE TABLE [dbo].[DetalleAutors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LibrosId] int  NOT NULL,
    [AutorId] int  NOT NULL
);
GO

-- Creating table 'Idiomas'
CREATE TABLE [dbo].[Idiomas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoIdioma] char(3)  NOT NULL,
    [DescripcionIdioma] varchar(50)  NOT NULL
);
GO

-- Creating table 'CopiaLibroes'
CREATE TABLE [dbo].[CopiaLibroes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NumeroCopia] char(3)  NOT NULL,
    [LibrosId] int  NOT NULL
);
GO

-- Creating table 'Clientes'
CREATE TABLE [dbo].[Clientes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TipoClienteId] int  NOT NULL
);
GO

-- Creating table 'TipoClientes'
CREATE TABLE [dbo].[TipoClientes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoTipoCliente] char(3)  NOT NULL,
    [DescripcionTipoCliente] varchar(50)  NOT NULL
);
GO

-- Creating table 'AlquilerLibroes'
CREATE TABLE [dbo].[AlquilerLibroes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoAlquiler] char(3)  NOT NULL,
    [FechaAlquiler] varchar(50)  NOT NULL,
    [FechaDevolucionEstimada] varchar(50)  NOT NULL,
    [FechaDevolucionReal] varchar(50)  NOT NULL,
    [ClienteId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Libros'
ALTER TABLE [dbo].[Libros]
ADD CONSTRAINT [PK_Libros]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Editorials'
ALTER TABLE [dbo].[Editorials]
ADD CONSTRAINT [PK_Editorials]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Materias'
ALTER TABLE [dbo].[Materias]
ADD CONSTRAINT [PK_Materias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Autors'
ALTER TABLE [dbo].[Autors]
ADD CONSTRAINT [PK_Autors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetalleAutors'
ALTER TABLE [dbo].[DetalleAutors]
ADD CONSTRAINT [PK_DetalleAutors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Idiomas'
ALTER TABLE [dbo].[Idiomas]
ADD CONSTRAINT [PK_Idiomas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CopiaLibroes'
ALTER TABLE [dbo].[CopiaLibroes]
ADD CONSTRAINT [PK_CopiaLibroes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [PK_Clientes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoClientes'
ALTER TABLE [dbo].[TipoClientes]
ADD CONSTRAINT [PK_TipoClientes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AlquilerLibroes'
ALTER TABLE [dbo].[AlquilerLibroes]
ADD CONSTRAINT [PK_AlquilerLibroes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [EditorialId1] in table 'Libros'
ALTER TABLE [dbo].[Libros]
ADD CONSTRAINT [FK_EditorialLibros]
    FOREIGN KEY ([EditorialId1])
    REFERENCES [dbo].[Editorials]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EditorialLibros'
CREATE INDEX [IX_FK_EditorialLibros]
ON [dbo].[Libros]
    ([EditorialId1]);
GO

-- Creating foreign key on [MateriaId] in table 'Libros'
ALTER TABLE [dbo].[Libros]
ADD CONSTRAINT [FK_MateriaLibros]
    FOREIGN KEY ([MateriaId])
    REFERENCES [dbo].[Materias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MateriaLibros'
CREATE INDEX [IX_FK_MateriaLibros]
ON [dbo].[Libros]
    ([MateriaId]);
GO

-- Creating foreign key on [LibrosId] in table 'DetalleAutors'
ALTER TABLE [dbo].[DetalleAutors]
ADD CONSTRAINT [FK_LibrosDetalleAutor]
    FOREIGN KEY ([LibrosId])
    REFERENCES [dbo].[Libros]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LibrosDetalleAutor'
CREATE INDEX [IX_FK_LibrosDetalleAutor]
ON [dbo].[DetalleAutors]
    ([LibrosId]);
GO

-- Creating foreign key on [AutorId] in table 'DetalleAutors'
ALTER TABLE [dbo].[DetalleAutors]
ADD CONSTRAINT [FK_AutorDetalleAutor]
    FOREIGN KEY ([AutorId])
    REFERENCES [dbo].[Autors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AutorDetalleAutor'
CREATE INDEX [IX_FK_AutorDetalleAutor]
ON [dbo].[DetalleAutors]
    ([AutorId]);
GO

-- Creating foreign key on [IdiomaId] in table 'Libros'
ALTER TABLE [dbo].[Libros]
ADD CONSTRAINT [FK_IdiomaLibros]
    FOREIGN KEY ([IdiomaId])
    REFERENCES [dbo].[Idiomas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_IdiomaLibros'
CREATE INDEX [IX_FK_IdiomaLibros]
ON [dbo].[Libros]
    ([IdiomaId]);
GO

-- Creating foreign key on [LibrosId] in table 'CopiaLibroes'
ALTER TABLE [dbo].[CopiaLibroes]
ADD CONSTRAINT [FK_LibrosCopiaLibro]
    FOREIGN KEY ([LibrosId])
    REFERENCES [dbo].[Libros]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LibrosCopiaLibro'
CREATE INDEX [IX_FK_LibrosCopiaLibro]
ON [dbo].[CopiaLibroes]
    ([LibrosId]);
GO

-- Creating foreign key on [ClienteId] in table 'AlquilerLibroes'
ALTER TABLE [dbo].[AlquilerLibroes]
ADD CONSTRAINT [FK_ClienteAlquilerLibro]
    FOREIGN KEY ([ClienteId])
    REFERENCES [dbo].[Clientes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteAlquilerLibro'
CREATE INDEX [IX_FK_ClienteAlquilerLibro]
ON [dbo].[AlquilerLibroes]
    ([ClienteId]);
GO

-- Creating foreign key on [TipoClienteId] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [FK_TipoClienteCliente]
    FOREIGN KEY ([TipoClienteId])
    REFERENCES [dbo].[TipoClientes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TipoClienteCliente'
CREATE INDEX [IX_FK_TipoClienteCliente]
ON [dbo].[Clientes]
    ([TipoClienteId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------