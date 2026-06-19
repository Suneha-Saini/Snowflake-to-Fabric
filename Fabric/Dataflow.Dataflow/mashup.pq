[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[BindToDefaultDestination = true]
shared AGG_FARM_YEARLY = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "AGG_FARM_YEARLY", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared AGG_MONTHLY_PERFORMANCE = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "AGG_MONTHLY_PERFORMANCE", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CROP = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_CROP", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_DATE = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_DATE", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_FARM = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_FARM", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_REGION = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_REGION", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_STATION = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_STATION", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_CROP_WEATHER = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_CROP_WEATHER", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FARM_WEEKLY_DASHBOARD = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FARM_WEEKLY_DASHBOARD", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared MONTHLY_TRENDS = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "MONTHLY_TRENDS", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared REGIONAL_CROP_PERFORMANCE = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "REGIONAL_CROP_PERFORMANCE", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared STATION_COMPARISON = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "STATION_COMPARISON", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared TEMPERATURE_ANALYSIS = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "TEMPERATURE_ANALYSIS", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared WEATHER_CROP_IMPACT = let
  Source = Snowflake.Databases("ek33240.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "WEATHER_DW", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "WEATHER_CROP_IMPACT", Kind = "Table"]}[Data]
in
  #"Navigation 3";
shared DefaultDestination = let
  Source = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  #"Navigation 1" = Source{[workspaceId = "6ddbb19a-d5aa-4b11-b05a-b7489a627ee0"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "fdce960a-aed3-45d8-b1b3-a53d225cdf1d"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "dbo", ItemKind = "Schema"]}[Data]
in
  #"Navigation 3";
