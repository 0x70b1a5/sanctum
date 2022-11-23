::  sanctum: a random Imperial thought, every day
::
/+  thought, pal, server, default-agent
::
|%
+$  state-0
  $:  %0
      picture=(unit mime)
  ==
::
+$  card  card:agent:gall
::
+$  eyre-id  @ta
--
::
=|  state-0
=*  state  -
::
^-  agent:gall
::
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
::
++  on-init
  ^-  (quip card _this)
  :_  this
  [%pass /eyre/connect %arvo %e %connect [~ /sanctum] dap.bowl]~
::
++  on-save  !>(state)
::
++  on-load
  |=  ole=vase
  ^-  (quip card _this)
  =/  old=state-0  !<(state-0 ole)
  [~ this(state old)]
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+  mark  (on-poke:def mark vase)
    ::  %handle-http-request: incoming from eyre
    ::
      %handle-http-request
    =,  mimes:html
    =+  !<([=eyre-id =inbound-request:eyre] vase)
    ?>  authenticated.inbound-request
    ::  parse request url into path and query args
    ::
    =/  ,request-line:server
      (parse-request-line:server url.request.inbound-request)
    ::
    =;  payload=simple-payload:http
      :_  this(state state)
      %+  give-simple-payload:app:server
        eyre-id
      payload
    ::
    |^  ?+  site  [[404 ~] `(as-octs 'unexpected route')]
            [%sanctum %study ~]
          =-  [[302 ['location' -]~] ~]
          'https://wh40k.lexicanum.com/wiki/Thought_for_the_day'
        ::
            [%sanctum %sanctum ~]
          =;  svg
            ?~  picture
              [[200 ['content-type' 'image/svg+xml']~] `svg]
            :_  `q.u.picture
            :-  200
            :~  :-  'content-type'   (en-mite p.u.picture)
                :-  'cache-control'  'public, max-age=3600'
            ==
          %-  as-octt
          %-  en-xml:html
          ;svg
            =viewport  "0 0 100 100"
            =height    "100"
            =width     "100"
            =version   "1.1"
            =xmlns     "http://www.w3.org/2000/svg"
            ;defs
              ;radialGradient  =id  "bg"  =cx  "0"  =cy  "0"
                ;stop  =offset  "0%"    stop-color="#ffffff"
                ;stop  =offset  "75%"   stop-color="#ffc300"
                ;stop  =offset  "100%"  stop-color="#913f00"
            ;rect
              =fill    "url(#bg)"
              =width   "100"
              =height  "100";
            ;+  show-thought
          ==
        ==
    ::
    ++  ti  ~+
      (wild:pal (div now.bowl ~d1) weight)
    ::
    ++  think
      ^-  tape  ~+
      %-  trip
      (snag ti thought)
    ::
    ++  weight  (lent thought)
    ::
    ::NOTE  thought length ranges from 14 to 448 characters
    ++  sizes
      |=  t=tape
      ^-  @ud
      =+  l=(lent t)
      ?:  (lth l 120)  7
      ?:  (lth l 180)  6
      ?:  (lth l 300)  5
      ?:  (lth l 480)  4
      3
    ::
    ++  show-thought
      ^-  manx
      =+  siz=(sizes verse)
      =/  align=tape
        ?:((gth siz 6) "left" "justify")
      ;foreignObject
        =x  "10"
        =y  "10"
        =width  "80"
        =height  "80"
        ;div
          =xmlns  "http://www.w3.org/1999/xhtml"
          =style  """
                  color: #445; font-family: serif;
                  font-size: {((d-co:co 1) siz)}pt;
                  line-height: 1.1em;
                  text-align: justify;
                  """
          ; {verse}
        ==
      ==
    --
  ==
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?>  =(our.bowl src.bowl)
  ?+  path  (on-watch:def path)
    [%http-response *]  [~ this]
  ==
::
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ?+  sign-arvo  (on-arvo:def wire sign-arvo)
      [%eyre %bound *]
    ~?  !accepted.sign-arvo
      [dap.bowl 'eyre bind rejected!' binding.sign-arvo]
    [~ this]
  ==
::
++  on-leave  on-leave:def
++  on-agent  on-agent:def
++  on-peek   on-peek:def
++  on-fail   on-fail:def
--

