<cfcomponent extends="Base">

	<cffunction name="ShouldReturnFalseIfAllButOneAreTrue">
		<cfset local.result = any(_struct(),_lengthIsBiggerThanThree) />
		<cfset assertFalse(local.result) />
	</cffunction>
	
	<cffunction name="ShouldReturnTrueIfAllPass]">
		<cfset local.result = any(_struct(),_lengthIsBiggerThanTwo) />
		<cfset assertTrue(local.result) />
	</cffunction>
</cfcomponent>