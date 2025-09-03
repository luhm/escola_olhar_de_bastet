CREATE TABLE [fato_contrato] (
  [fact_cf_id] interger PRIMARY KEY,
  [employee_id] integer,
  [school_id] interger,
  [date_id] interger,
  [salary_type] nvarchar(255),
  [monthly_hours] interger,
  [total_cost] interger,
  [funcao] nvarchar(255)
)
GO

CREATE TABLE [fato_hora_aula] (
  [fact_ha_id] interger PRIMARY KEY,
  [employee_id] integer,
  [school_id] interger,
  [date_id] interger,
  [subject_id] interger,
  [salary_type] nvarchar(255),
  [days_worked] interger,
  [sup_hours] interger,
  [daily_hours] interger,
  [period_hours] interger,
  [total_hours] interger,
  [total_cost] interger,
  [funcao] nvarchar(255)
)
GO

CREATE TABLE [dim_employee] (
  [employee_id] interger PRIMARY KEY,
  [employee_name] nvarchar(255),
  [state] nvarchar(255),
  [job_title] nvarchar(255),
  [category] nvarchar(255)
)
GO

CREATE TABLE [dim_school] (
  [school_id] interger PRIMARY KEY,
  [school_name] nvarchar(255),
  [value_per_hour] float
)
GO

CREATE TABLE [dim_tempo] (
  [date_id] interger PRIMARY KEY,
  [month] nvarchar(255),
  [trimestre] interger
)
GO

CREATE TABLE [dim_subject] (
  [subject_id] interger PRIMARY KEY,
  [subject_name] nvarchar(255)
)
GO

ALTER TABLE [fato_contrato] ADD FOREIGN KEY ([school_id]) REFERENCES [dim_school] ([school_id])
GO

ALTER TABLE [fato_contrato] ADD FOREIGN KEY ([date_id]) REFERENCES [dim_tempo] ([date_id])
GO

ALTER TABLE [fato_contrato] ADD FOREIGN KEY ([employee_id]) REFERENCES [dim_employee] ([employee_id])
GO

ALTER TABLE [fato_hora_aula] ADD FOREIGN KEY ([employee_id]) REFERENCES [dim_employee] ([employee_id])
GO

ALTER TABLE [fato_hora_aula] ADD FOREIGN KEY ([school_id]) REFERENCES [dim_school] ([school_id])
GO

ALTER TABLE [fato_hora_aula] ADD FOREIGN KEY ([date_id]) REFERENCES [dim_tempo] ([date_id])
GO

ALTER TABLE [fato_hora_aula] ADD FOREIGN KEY ([subject_id]) REFERENCES [dim_subject] ([subject_id])
GO
