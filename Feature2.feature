Feature: login
Given launch site
Scenario Outline: validate userid field box
Scenario Outline: validate pwd field box
When enter uname as "<u>"
And enter pwd as "<p>"
And click login button
Then check userid outcome with "<uc>" criteria
And check password outcome with "<pc>" criteria
When close site
Examples: 
|     u     |     uc     |     p     |     pc    |
| Admin     |  valid     |  M1ndqLp  | valid     |
|           | invalid    |  M1ndqLp  | valid     |
| admin     | invalid    |  M1ndqLP  | valid     |
|Admin      | valid      |           | invalid   |
|Admin      |  valid     |  mindqlp  | invalid   |





















