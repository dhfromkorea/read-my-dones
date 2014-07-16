functional spec
- can write todos and mark dones
- can recognize the revision (- -> +)
- can listen for revision events
- can send notification to plivo
- can trigger a call to dh
- can read out text to speech


technical spec
- listen for any changes in the todo.txt within the dropbox folder (on the dropbox server side)
- on promise callback, parse revision data
- and send the request to plivo
- write in coffeescript
- deploy via Azure
- event listener (long-polling)
- dropbox API
- node express server
- plivo lib


vision
- listen for an email from idonethis
- parse an email to send a POST request to my server
- my server make a POST request with the input

- a human being that send you a voice mail with what you have achieved
- text to speech (free)
- tts (paid)

- dropbox API
- event listener for any revision
-
=======
