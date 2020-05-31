/****** 

Used for enumerating each value within a group.
The group is defined by the call to PARTITION BY 

******/
SELECT TOP(1000)

	  ROW_NUMBER() OVER (
	  PARTITION BY [PolicyNumber]
	  ORDER BY [PolicyNumber] DESC) AS row_num
	  ,t1.[PolicyNumber]
	  ,t1.[Longitude] 
	  ,t1.[Latitude]
     
  FROM [dataiku].[PREFERREDREPORTS_netrate_data_feed_fixed_dates] AS t1
  WHERE [PolicyNumber] IS NOT NULL;


