import module namespace oa="http://basex.org/ns/oauth" at "../oauth.xqy";
let $CONSUMER-KEY:="x3BV0jZchuaXQC2FwtudmA"
let $CONSUMER-SECRET:="dhIDywScOlJ0DgvoXs51F6aQqAj20udRTcsPhOJ0Ho"

let $access-token := "your token"
let $access-token-secret := "your secret"

let $service-document:=oa:twitter-service($CONSUMER-KEY,$CONSUMER-SECRET)
let $options
  := <oa:options>
       <screen_name>apb1704</screen_name>
       <count>25</count>
       <page>1</page>
     </oa:options>
return
  oa:signed-request($service-document,
                    "GET", "http://twitter.com/statuses/user_timeline.xml",
                    $options, $access-token, $access-token-secret)