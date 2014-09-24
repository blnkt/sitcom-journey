// var tag = document.createElement('script');
// tag.src = 'https://www.youtube.com/iframe_api';
// var firstScriptTag = document.getElementsByTagName('script')[0];
// firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// var player;
// var currentScene = gon.scenes[1]

// function onYouTubeIframeAPIReady(){
//   player = new YT.Player('player', {
//     height: 315,
//     width: 560,
//     playerVars: {'rel': 0, 'showinfo': 0, 'hidecontrols': 1 },
//     events : {
//       'onReady' : onPlayerReady
//     }
//   });
// }

// function onPlayerReady(event){
//   player.addEventListener('onStateChange', onPlayerStateChange);
//   console.log(YT.PlayerState);
//     event.target.playVideo();
// }
// function onPlayerStateChange(event){
//   if(event.data === YT.PlayerState.PLAYING){
//     console.log('playing')
//   }
//   if(event.data === YT.PlayerState.ENDED){
//     currentScene = scenes[scenes.indexOf(currentScene) + 1]
//     player.loadVideoById({videoId:currentScene.youtube_id, startSeconds:currentScene.start_time, endSeconds:currentScene.end_time});
//   }
// }
