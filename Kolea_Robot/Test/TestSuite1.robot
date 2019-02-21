*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown
                
Default Tags    Sanity
                
*** Test Cases ***
MyTestCase
    [Tags]    Smoke
    Log    Hello Kolea...
    
MySecondTest
    Set Tags    Regression1
    Log    I am inside my 2nd test    
    
FirstSeleniumTest
    
    # Open Browser    ${URL}    Chrome 
    # Set Browser Implicit Wait    5
     # # Input Text    name=q     @{SEARCH_INPUT}[0]
    # Input Text    name=q    &{SEARCH_TEXT}[input1]
    # Press Keys    name=q     ENTER
    # #Click Button    name=btnK 
    Google_Search        
    Sleep    5 
    Click Element   link=Wikipedia
    
    Click Element    link=English 
    # Input Text    id=searchInput   @{SEARCH_INPUT}[1]   
    Input Text    id=searchInput   &{SEARCH_TEXT}[input2]
    Press Keys    id=searchInput    ENTER 
    
    Close Browser
    
    Log    Test completed 
    Log    This test was executed by %{username} on %{OS}    
        
*** Variables ***
${URL}    https://google.com/
@{SEARCH_INPUT}    wikipedia    Coldwar Steve
&{SEARCH_TEXT}    input1=Wikipedia    input2=Coldwar Steve

*** Keywords ***
Google_Search
    
    Open Browser    ${URL}    Chrome 
    Set Browser Implicit Wait    5
    Input Text    name=q    &{SEARCH_TEXT}[input1]
    Press Keys    name=q     ENTER
    
     
    

           