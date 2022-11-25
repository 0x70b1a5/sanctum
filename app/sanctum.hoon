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
              ;radialGradient  =id  "bg"  =cx  "0.25"  =cy  "-0.05"
                ;stop  =offset  "0%"    =stop-color  "#ffffff";
                ;stop  =offset  "75%"   =stop-color  "#ffc300";
                ;stop  =offset  "100%"  =stop-color  "#dc9900";
              ==
              ;style  =type  "text/css"
                ; {caslon}
              ==
            ==
            ;rect
              =fill    "url(#bg)"
              =width   "200"
              =height  "200";
            ;g  =transform  "scale(0.05 0.05) translate(300 1400)"
              ::  eagle body
              ::
              ;g  =transform  "translate(38 -90)"
                ;path  =id  "path4245-9"  =d  "M642.3,180.1L564.8,412l34.4,22.3L565.3,494l15,14l30.7-67.5l6.3,4.4  l-29.1,70.7l19.3,17l20.8-81.5c4.8-2.2,6.1,0,6.8,3.1l-15.5,89.8l23,23.9l23-23.9L650,454.3c0.5-3.1,2-5.3,6.8-3.1l20.8,81.5  l19.3-17l-29.1-70.7l6.3-4.4l30.7,67.5l15-14l-33.9-59.6l34.4-22.3L642.3,180.1L642.3,180.1z";
              ==
              ::  eagle head, wings and feet
              ::
              ;g
                ;path  =d  "M583.7,169.2c0,0,20.8-7.8,24.4,0.5c3.6,8.2,0.2,34.1-19.9,56.2c0,0-21.3,33.2-38.9,43.6c8.7-0.7,40.7,11.4,47,27.4 l50.8-127l-37-42.6c-61.3,37.3-136.2,29.3-146-0.5s-2-77.9,24.9-99c8.7-6.8,27.1-14.5,28.6-28.1H0l0,0l42.9,48.9l415.5-17.2 c0,0-10.1,11.4-13.6,22L83.2,88.4l34.8,36.1l320.4-53c0,0-3.6,9-3.6,18.7L160,160.2l34.6,31.4l239.1-89.6c0,0,0,14.5,2.9,20.6 L233.5,224.4l31.2,22.7l175.9-110.3c0,0,5.1,13,9.5,17.4L313.7,282.4l27.4,19.1L460.8,165c1.9,4.3,15.8,12.6,15.8,12.6L394,317.3 c15.2,10.2,34.4,4.3,34.4,4.3l60.7-139.7c11.8,4.9,19.8,3.9,19.8,3.9l-41.9,124.9c19.8-3.2,29.3-15.5,29.3-15.5l25.4-109.2 c9.2,1,18.6-0.9,18.6-0.9c-0.7,13.3-14.5,89.1-14.5,89.1s31-38.7,38.2-40.9c0,0-11.1-40.4-11.8-49.9c0,0,10.1-0.7,16.5-5.6 c0,0,8.7,26.8,9,35.4c9.2-8.2,15-20.6,15-20.6S587.1,188,583.7,169.2";
                ;path  =d  "M555.4,63.7c-8.2,0.2-20.8,3.4-29.5,6.5c1,10.1,6.6,16.7,9.4,25.4c1,3.1,1.9,11.6,2.7,15.5c0.9,3.9,4.8,2.6,4.8,2.6 s-1.4-10.4,6.3-21.1c0,0,27.8-3.1,31.5-8.7c-9.4-6-11.8-15.3-19.1-19.1C560.3,64.1,558.1,63.7,555.4,63.7L555.4,63.7z";
                ;path  =d  "M551.3,41.9L551.3,41.9l4.4,14.1c33.4,11.8,20.4,20.8,46.9,35.4l3.7-28.5L661.2,44L551.3,41.9z M589.1,66.8L589.1,66.8 c-5.6,0-10.1-4.4-10.1-10.1l0,0c0-5.6,4.4-10.1,10.1-10.1c5.6,0,10.1,4.4,10.1,10.1S594.6,66.8,589.1,66.8z";
                ;polygon  =points  "636.7,64.4 618.6,69.4 610.8,100.2 653.2,145.2 674.7,91.7";
                ;path  =d  "M749.1,36.3l-4.3,6.5l-44,1l54.9,19.3l3.7,28.5C786,76.9,773,68,806.4,56.1l1.9-11.4l-17.4-1.2l-3.9-3.1L749.1,36.3 L749.1,36.3z";
                ;path  =d  "M806.9,63.7c-2.7,0-4.9,0.2-6.3,1c-7.3,3.7-9.7,13.1-19.1,19.1c3.7,5.6,31.5,8.7,31.5,8.7c7.7,10.7,6.3,21.1,6.3,21.1 s3.9,1.4,4.8-2.6c1-3.9,1.9-12.4,2.7-15.5c2.7-8.5,8.4-15.2,9.4-25.4C827.7,67.1,815.1,63.9,806.9,63.7L806.9,63.7z";
                ;polygon  =points  "725.6,64.4 687.6,91.7 709.1,145.2 751.5,100.2 743.7,69.4";
                ;path  =d  "M840.7,185.9l25.4,109.2c0,0,9.5,12.1,29.3,15.5l-41.9-124.9c0,0,8,1,19.8-3.9l60.7,139.7c0,0,19.3,6,34.4-4.3 l-82.7-139.7c0,0,14-8.2,15.8-12.6l119.6,136.5l27.4-19.1L912.2,154.2c4.3-4.3,9.5-17.4,9.5-17.4l175.7,110.1l31.2-22.7  L925.5,122.5c2.9-6.1,2.9-20.6,2.9-20.6l239.1,89.6l34.8-31.4L927.6,90.3c0-9.9-3.6-18.7-3.6-18.7l320.4,53l34.8-36.1L917.3,53.7  c-3.6-10.6-13.6-22-13.6-22l415.6,17.4L1362.3,0H844.8l0,0c1.5,13.6,19.9,21.1,28.6,28.1c26.9,21.1,34.8,69.2,24.9,99 c-9.7,29.8-84.7,38-146,0.5l-37,42.6l50.8,127c6.3-16,38.3-28.1,47-27.4c-17.7-10.4-38.9-43.6-38.9-43.6  c-20.1-22.2-23.5-48.1-19.9-56.2c3.6-8.2,24.4-0.5,24.4-0.5c-3.4,18.7-9,23.5-9,23.5s5.8,12.4,15,20.6c0.3-8.7,9-35.4,9-35.4  c6.3,4.9,16.5,5.6,16.5,5.6c-0.7,9.4-11.8,49.9-11.8,49.9c7.2,2,38.2,40.9,38.2,40.9s-13.8-75.7-14.5-89.1 C822.1,185.2,831.5,186.9,840.7,185.9";
                ;path  =d  "M754.6,338.4l-22,12.6l37.8,49.3c0,0-4.4,5.3-4.1,8.4c0.2,2.4,4.3,6.1,4.3,6.1l-19.8,22.8c0,0-11.8-0.5-16.4,2 c4.9,3.4,6.8,3.2,8.5,6.3c0.2,5.5-0.7,11.2-0.7,11.2c5.3-1.9,10.4-3.9,16-5.5c9,1.9,42.6,19.3,42.6,19.3s-25.7-30.8-27.4-34.8  c0.9-3.1,9.9-13.1,9.9-13.1c2.4-2.9,4.3-3.1,6,0.3c0,0,4.4,5.8,6.6,13.5c0.3,1.2-4.8,8.5-4.3,9.5c1.5,2.6,8.2-0.5,10.1,1.9  c9.2,11.6,14,28.1,14.3,30c-3.1,6.3-15.3,20.4-15.3,20.4s16.7-6.1,25.1-8.5c3.7-1,7,9.5,7,9.5c1.5-2,1.5-28.8,1.4-34.4 c-2.2-4.6-9.7-15.3-17.4-26.1c-1.4-1.9,2.9-8.7,1.7-10.4c-1.9-2.6-7.2,0.5-9.4-1.2c-5.8-4.1-9-10.6-9-10.6  c-1.4-3.1,0.3-4.9,3.2-5.5c0,0,8.9-1.9,14.7-1.7c15.5,24.2,18.6,46.9,18.6,46.9s3.2-39.7,0.5-54.7c0,0,11.9-8.5,11.2-10.7  c-0.5-1.7-12.4,0.3-12.4,0.3l-2.6-8.4c-0.7-2.7-2.9-3.1-4.1,0.2l-2.9,9.4l-29.7,5.8c-1.9,0.7-0.2-5.3-3.1-7.8 c-2-1.7-9.2,0.2-9.5-0.9L754.6,338.4L754.6,338.4z";
                ;path  =d  "M607,339l-34.3,59.6c-1,2.6-3.2,2.6-6.5,1.5l-42.8-8.4l1.5,62.5c0,0,2.6-21.5,18.2-45.7l16,2.7c2.9,0.5,4.4,2.4,3.2,5.5 c0,0-33.4,38.7-38.2,48.2c-0.3,5.6,2,20.3,3.6,22.3c0,0,6.1,0,9.9,1c8.4,2.4,23.9,10.1,23.9,10.1s-15-15.5-18.2-21.8  c0.9-3.6,28.3-55,28.3-55c1.9-3.4,5.1-1.5,7.5,1.4c0,0,8.7,9.2,9.4,12.4c-1.9,3.9-27.8,34.3-27.8,34.3l55.6-26.9L589,411  c-3.4-3.6-3.2-3.9-0.5-8.4l40-51.6L607,339z";
              ==
            ==
            ;+  show-thought
          ==
        ==
    ::
    ++  caslon
      ^~
      %-  trip
      '''
      @font-face {
        font-family: Caslon;
        font-style: normal;
        font-weight: 400;
        src: url(https://personal-server.fra1.digitaloceanspaces.com/Caslon-Antique.woff2) format('woff2')
      }
      '''
    ++  ti  ~+
      (wild:pal (div now.bowl ~d1) weight)
    ::
    ++  think
      ^-  tape  ~+
      %-  trip
      (snag ti thought.thought)
    ::
    ::NOTE  thought length ranges from 14 to 448 characters
    ++  sizes
      |=  t=tape
      ^-  @ud
      =+  l=(lent t)
      ?:  (lth l 40)   9
      ?:  (lth l 80)   8
      ?:  (lth l 120)  7
      ?:  (lth l 180)  6
      ?:  (lth l 300)  5
      ?:  (lth l 440)  4
      3
    ::
    ++  weight  
      ^-  (list @ud)
      :: don't really need to weight them since it's all one big list
      (turn thought.thought |=(* 1))
    ::
    ++  show-thought
      ^-  manx
      =+  siz=(sizes think)
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
                  color: #445;
                  font-family: Caslon, serif;
                  font-size: {((d-co:co 1) siz)}pt;
                  line-height: 1.1em;
                  text-align: justify;
                  """
          ; {think}
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

