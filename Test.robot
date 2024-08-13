*** Settings ***
Library     SeleniumLibrary
Library     XML
Library    Screenshot

*** Variables ***
${CHROME_OPTIONS}    headless
${CHROME_OPTIONS}    no-sandbox
${CHROME_OPTIONS}    disable-dev-shm-usage
${CHROME_OPTIONS}    remote-debugging-pipe
${URL}          https://www.instagram.com/
${USERNAME}     jeanpaula
${PASSWORD}     test121212
${USERNAME FIELD}   //*[@id="loginForm"]/div/div[1]/div/label/input
${PASSWORD FIELD}   //*[@id="loginForm"]/div/div[2]/div/label/input

*** Test Cases ***
InstaLoginWrong
    Open Browser                    ${URL}  chrome    chrome_options=${CHROME_OPTIONS}
    Log To Console                  Browser opened
    Maximize Browser Window
    Sleep                           3
    Input Text                      ${USERNAME FIELD}   ${USERNAME}
    Log To Console                  Username Added
    Input Text                      ${PASSWORD FIELD}   ${PASSWORD}
    Log To Console                  Password addedd
    Take Screenshot                 screenshots/test.png
    Sleep                           3
    Close Browser

*** Keywords ***
