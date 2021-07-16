function TypingText(typed_id,strings_id){
     new Typed('#'+typed_id, {
         stringsElement: '#'+strings_id,
         typeSpeed: 60,
         backSpeed: 30,
         startDelay: 1000,
         loop: true,
         loopCount: Infinity
    });

}
