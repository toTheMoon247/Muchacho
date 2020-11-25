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
          src: 'https://stream.mux.com/00p3M2DI5DFpOcGG3hfLPeVIQpGaHBT00c/high.mp4?token=eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InQ5UHZucm9ZY0hQNjhYSmlRQnRHTEVVSkVSSXJ0UXhKIn0.eyJleHAiOjE2MDYzMTM1NDYsImF1ZCI6InYiLCJzdWIiOiIwMHAzTTJESTVERnBPY0dHM2hmTFBlVklRcEdhSEJUMDBjIn0.s6P5C9G3eif91fxA-Xux2KrtGl9fO2t6oK5JvgdQ_eZa1SrOicJaVvanX4Jj_-duHOd4b94jsFFQCSsaTMaKJJMKTsthbDPwPOO2-NnzylZqArGF21OJhiprdEUctuwJ5PL3wrSfgXfAAavK2yPfC5TrZAnDVO264QWPHbWD2rCc93p5eqyAHI0rdeccLgRxdTS2NJIlIyhp-vd9ftigjjgtE1X1v054r_c0RD_GHUo2XW-ic5dbq2WfbVjh5u_tcrjIyJteQxbQ5dtk3yc9XUS8WnNjOUN84ie3xOAvsnuG7b2DbvrdVASgX4bD7EdvFqTa5d97zrUxPN9cT-K2jA',
          type: 'video/mp4'
        },
        // {
        //   src: 'https://res.cloudinary.com/dzyd1ynmn/video/upload/v1605729430/video_1_hjvyyv.mp4',
        //   type: 'video/mp4'
        // }
      ],

      // What to do once video loads (initial frame)
      
  
    });
  }

}

  export { backgroundVideo };