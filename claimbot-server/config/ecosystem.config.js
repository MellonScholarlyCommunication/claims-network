module.exports = {
    apps : [
     {
      name   : "bot-server",
      script : "LOG4JS=error yarn run server"
     },
     //{
     // name   : "bot-fetcher",
     // script : "LOG4JS=info yarn run fetch"
     //},
     {
      name   : "bot-accepted",
      script : "LOG4JS=info npx ldn-inbox-server handler ./accepted --config ./config/accepted_config.json5 -hn @handler/notification_handler/multi.js --loop"
     },
     {
      name   : "bot-inbox",
      script : "LOG4JS=info npx ldn-inbox-server handler @inbox -hn @handler/notification_handler/multi.js --loop"
     },
     {
      name   : "bot-outbox",
      script : "LOG4JS=info npx ldn-inbox-server handler @outbox -hn @handler/notification_handler/multi.js --loop"
     }
    ]
  }