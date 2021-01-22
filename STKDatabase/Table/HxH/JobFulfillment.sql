CREATE TABLE [dbo].[JobFulfillment]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
	[EntityName] [nvarchar](100) NULL,
	[OperationNo] [nvarchar](100) NULL,
	[JobId] [bigint] NULL,
	[JobQuantity] [decimal](18, 0) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Fulfilled] [bit] NULL,
	[QuantityLeft] [decimal](18, 0) NULL,
	[StartHour] [decimal](18, 0) NULL,
)
