*** Settings ***
Library	Collections			
Library	RequestsLibrary

*** Variables ***
*** Test Cases ***
Get Comments
    Create Session  api  https://jsonplaceholder.typicode.com
    ${response}=  Get Request  api  /comments
    Should Be Equal  ${response.status_code}  ${200}
    Should Be Equal As Strings  ${response.status_code}	 200
    # Log To Console  ${response}
    # Dictionary Should Contain Value	
*** Keywords ***