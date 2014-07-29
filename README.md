WRITE MY OWN PARSER

technical spec
- can send an appropriate type of request to dropbox
- can parse the dones
- can get the change data (boolean and revision data)
- can schedule the execution of the script that does polling using cron


functional spec
- can write todos and mark dones
- can recognize the revision (- -> +)
- can listen for revision events
- can send notification to plivo
- can trigger a call to dh
- can read out text to speech


memo
- have to manually change the lib to allow pathPrefix
- parse


find regex match for
- done content
- done date
- project
- context  /(?:\W|^)(@)([\S_]+[A-Za-z0-9_](?!\S))/ig;


x Download Todo.txt mobile app @Phone
x 2014-07-25 2014-07-25 get glasses


(A) Call Mom @Phone +Family
(A) Schedule annual checkup +Health
(B) Outline chapter 5 +Novel @Computer
(C) Add cover sheets @Office +TPSReports
Plan backyard herb garden @Home
Pick up milk @GroceryStore
Research self-publishing services +Novel @Computer

