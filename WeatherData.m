//A copy of the WeatherData.m file for Power BI to fetch historical weather data for multiple cities in Qatar
let
    // Define API parameters
    API_Key = WeatherAPIKey, // Ensure this variable is set in your Power BI environment or replace with your actual API key
    Cities = {"Doha", "Al Rayyan", "Al Wakrah", "Al Khor", "Mesaieed"},
    StartDate = #date(2023, 1, 1),  // Start of historical data range
    EndDate = #date(2023, 12, 31),  // End of historical data range

    // Generate date range (1 year of daily data)
    DateList = List.Dates(StartDate, Duration.Days(EndDate - StartDate) + 1, #duration(1, 0, 0, 0)),

    // Fetch weather data for each city and date
    WeatherData = List.Accumulate(
        Cities,
        {},  // Initial empty list
        (state, city) => 
            state & List.Transform(
                DateList,
                (date) => 
                    let
                        // Convert date to Unix timestamp (seconds since 1970-01-01)
                        EpochStart = #datetime(1970, 1, 1, 0, 0, 0),
                        Duration = DateTime.From(date) - EpochStart,
                        UnixTime = Duration.TotalSeconds(Duration),

                        // Build API URL
                        URL = "http://api.openweathermap.org/data/2.5/weather?q=" & city & "&dt=" & Text.From(UnixTime) & "&appid=" & API_Key & "&units=metric",

                        // Fetch API response with error handling
                        Response = try Json.Document(Web.Contents(URL)) otherwise null,

                        // Safely extract fields with defaults for missing data
                        Main = if Response <> null then Response[main] else [temp = null, humidity = null],
                        Weather = if Response <> null and Record.HasFields(Response, {"weather"}) then Response[weather]{0}? else [main = "Unknown"]
                    in
                        [  
                            City = city,  
                            Date = date,  
                            Temp = if Main[temp] <> null then Main[temp] else -999,  // Default for missing temperature
                            Humidity = if Main[humidity] <> null then Main[humidity] else -1,  // Default for missing humidity
                            WeatherCondition = if Weather[main] <> null then Weather[main] else "Invalid Data"  // Default for missing weather
                        ]
            )
    ),

    // Convert list of records to a table
    TableData = Table.FromRecords(WeatherData),

    // Clean up column types
    SetTypes = Table.TransformColumnTypes(
        TableData, 
        {  
            {"City", type text},  
            {"Date", type date},  
            {"Temp", type number},  
            {"Humidity", type number},  
            {"WeatherCondition", type text}  
        }
    ),

    // Optional: Buffer the table to reduce API calls during testing
    BufferedTable = Table.Buffer(SetTypes)
in
    BufferedTable