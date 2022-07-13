<template>
  <div style="margin: 1em">
   <Gallery
      :images="images"
      :imageWidth="720"
      :imageHeight="auto"
      :popUpMaxWidth="720"
      :mdCols="4"
      :smCols="4"
      :xsCols="6"
      :lgCols="2"
    />
    <photo-collage-wrapper @itemClick="itemClickHandler" v-bind="collage" />
  </div>
</template>

<script>
import { PhotoCollageWrapper } from "vue-photo-collage";
import Gallery from "vuejs-image-gallery";



export default {
  components: {
    PhotoCollageWrapper,
	  Gallery
  },
  methods: {
    itemClickHandler(data, column) {
      const item = Object.assign({}, data);
      alert(`itemId=${item.id}, column=${column}`);
    },
  },
  data() {
    return {
            images: [{
                    id: 1,
                    imgSrc: require("../../assets/img/1.jpg")
                },
                {
                    id: 2,
                    imgSrc: require("../../assets/img/1.jpg")
                },
           
            ],
      collage: {
        gapSize: "1em",
        borderRadius: "1em",
        width: "auto",
        height: ["calc(50vh - 2em)", "calc(50vh - 1em)"],
        layout: [2, 3],
        photos: [
          {
            source:
              "https://images.unsplash.com/photo-1517088455889-bfa75135412c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e5548929376f93d8b1b7a21097df03bd&auto=format&fit=crop&w=749&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1526656892012-7b336603ed46?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=31c8e58b58c25dfcc18452ed29b52951&auto=format&fit=crop&w=334&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1521024221340-efe7d7fa239b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9ad8a99d809d3fa3a9e8dff3ecc81878&auto=format&fit=crop&w=750&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1523038793606-2fd28f837a85?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=919b76f4229e41416653aeb10e84e94a&auto=format&fit=crop&w=334&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1516832970803-325be7a92aa5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=93d7ac9abad6167aecb49ebd67fd5b6d&auto=format&fit=crop&w=751&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1526938972776-11558ad4de30?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=973795a277e861265b0fabbf4a96afe2&auto=format&fit=crop&w=750&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1464550838636-1a3496df938b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f22dbf6c13ea7c21e803aa721437b691&auto=format&fit=crop&w=888&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1526938972776-11558ad4de30?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=973795a277e861265b0fabbf4a96afe2&auto=format&fit=crop&w=750&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1464550838636-1a3496df938b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f22dbf6c13ea7c21e803aa721437b691&auto=format&fit=crop&w=888&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1526938972776-11558ad4de30?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=973795a277e861265b0fabbf4a96afe2&auto=format&fit=crop&w=750&q=80",
          },
          {
            source:
              "https://images.unsplash.com/photo-1464550838636-1a3496df938b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f22dbf6c13ea7c21e803aa721437b691&auto=format&fit=crop&w=888&q=80",
          },
        ],
        showNumOfRemainingPhotos: true,
      },
    };
  },
};
</script>

<style>
#app,
body {
  margin: 0;
  padding: 0;
}
</style>