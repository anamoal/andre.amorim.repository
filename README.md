# andre.amorim.repository

Steps to run tests:

1- Install ruby,cucumber(skype me or search on google if you dont have it installed already)

2-Inside the folder run on terminal command "cucumber features/api_exercise.feature"

3-Probably must happen any problem of missing gems in the first time so is needed install all required gems

Folder "FAILED_TESTS" : Here is supposed save all failed tests and error messages

Folder "LOGS": Here is supposed save all responses from REST

Notes:
-The workflow i used in exercise was the model page-object so that in this exercise the flow is:

"api_exercise.feature" ----> "api_exercise_steps.rb" ----> "api_exercise.rb"

-To set up the tests i used the "env.rb" and "hooks.rb" in support folder

-I left "SetupBrowser.rb"  just to show my knowledges about tests crossbrowser and mobile tests