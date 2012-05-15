<html>
<head>
	<title>JavaScript For ColdFusion Devs</title>
	<style>
		body { font-size: 2em; }
	</style>
</head>
<body>	
	<cfswitch expression="#section#">
		<cfcase value="numbers" delimiters="">
			<cfscript>
				result = 0.06 + 0.01;

				String = createObject("java","java.lang.String");
						
				writedump(result);
				writeOutput("<br>");
				writedump(String.valueOf(result));
			</cfscript>
		</cfcase>
		<cfcase value="arrays">
			<cfset createArray()>
		</cfcase>
		<cfcase value="forin">
			<cfscript>
				myStruct = {foo = "Foo", bar = "Bar", baz = "Baz"};

				for(myKey in myStruct){
					myVar = myStruct[myKey];
					writedump(var="#myVar#");
					writeOutput("<br>");
				}
			</cfscript>
		</cfcase>
	</cfswitch>
</body>
</html>

<cffunction name="createArray">
	<cfset var myArray = ["Foo","Bar","Bazz"]>
	
	<cfset changeArray(myArray)>
	<cfdump var="#myArray#">
</cffunction>

<cffunction name="changeArray">
	<cfargument name="theArray" type="array" />
	<cfset arguments.theArray[2] = "Win!" />
	<cfdump var="#theArray#">
</cffunction>