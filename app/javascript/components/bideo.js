import Bideo from 'bideo.js'

const backgroundVideo = () => {
  const background = document.querySelector('#background_video');
  if (background){
    const bv = new Bideo();
    console.log(bv);
    console.log('hello');
    bv.init({
      // Video element
      videoEl: document.querySelector('#background_video'),
      
      // Container element
      container: document.querySelector('body'),
      
      // Resize
      resize: true,

      // autoplay: false,

      // Array of objects containing the src and type
      // of different video formats to add
      src: [
        {
          src: 'https://stream.mux.com/00p3M2DI5DFpOcGG3hfLPeVIQpGaHBT00c/high.mp4?token=eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InQ5UHZucm9ZY0hQNjhYSmlRQnRHTEVVSkVSSXJ0UXhKIn0.eyJleHAiOjE2MDYyNTc2NzAsImF1ZCI6InYiLCJzdWIiOiIwMHAzTTJESTVERnBPY0dHM2hmTFBlVklRcEdhSEJUMDBjIn0.qJ4WdcSdQIl0uy9ni9lwexKdyggL1M4X-Elxagq3YP7GLSyrnewqdA9DwQ7TSj1OuPZ1BAOqrhCJ9DYvV0DEWdV7Ful6TTVvT2-8NoVcqwlE3-1zifqo-lS5WwsVDqSa2IY5LjrJJiKkxYRgXR_0-QTwlI6tlB73-iW5RovrAgosqdZiVJ-m6DpPQ5_IlyXNqgSft97RUuyHpzzOUcS1yOq_JkKEg3IXI3IJrRfUSel8JNB5PMUVD67TOcc86FaABAY0HeTMbNdAwmwRCxrotGBu7H2y6jK9g0jQQ46e2gkXbR_ZK9mNyqT_rv9jq08_O2S-Y0BdF8oA54K3QZRmGg',
          type: 'video/mp4'
        },
        // {
        //   src: 'https://res.cloudinary.com/dzyd1ynmn/video/upload/v1605729430/video_1_hjvyyv.mp4',
        //   type: 'video/mp4'
        // }
      ],

      // What to do once video loads (initial frame)
      onLoad: function () {
        document.querySelector('#video_cover').style.display = 'none';
      }
  
    });
  }

}

  export { backgroundVideo };