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
    #check No. of comment
    Length Should Be  ${response.json()}  ${500}
    #check first comment
    Should Be Equal  ${response.json()[0]['id']}  ${1}
    Should Be Equal  ${response.json()[0]['name']}  id labore ex et quam laborum
    Should Be Equal  ${response.json()[0]['email']}  Eliseo@gardner.biz
    Should Be Equal  ${response.json()[0]['body']}  laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium
    #check format of comment
    Should Contain Match    ${response.json()[0]}  id
	Should Contain Match    ${response.json()[0]}  name
	Should Contain Match    ${response.json()[0]}  email
	Should Contain Match    ${response.json()[0]}  body
*** Keywords ***