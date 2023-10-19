Start
@echo off
setlocal enabledelayedexpansion

echo Welcome to the Addition Math Quiz!
set /a score=0

:: Loop for 10 addition questions with numbers up to 3 digits
for /l %%i in (1,1,10) do (
    set /a num1=!random! %% 1000
    set /a num2=!random! %% 1000

    :: Calculate the correct answer
    set /a answer=num1+num2

    :: Ask the question
    set /p "response=Question %%i: !num1! + !num2!=? "
    
    :: Check the answer
    if !response! equ !answer! (
        echo Correct!
        set /a score+=1
    ) else (
        echo Incorrect. The correct answer is !answer!
    )
}

echo.
echo Your score: %score% out of 10
pause
