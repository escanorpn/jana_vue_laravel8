<template>
  <div >
    <stack :column-min-width="320" :gutter-width="8" :gutter-height="8" :monitor-images-loaded="true">
      <stack-item v-for="(item, i) in mp" :key="i" style=" box-shadow:rgb(40 18 10 / 59%) 0px 32px 32px;transition: transform 300ms" >
      
          <img   :src="url+item.url" alt="Card image cap" class="ms1"/>
         
        <!-- {{ item.source }} -->
      </stack-item>
    </stack>

  </div>
</template>
<script>
// import { PhotoCollageWrapper } from "vue-photo-collage";
 import { Stack, StackItem } from 'vue-stack-grid';
// import Gallery from "vuejs-image-gallery";
import { photos } from "./photos";
import axios from "axios"
// import mlist from "./slist.vue"


export default {
  components: {
    // PhotoCollageWrapper,
    Stack,
    StackItem,
	// Gallery
  // mlist
  },
  methods: {
    itemClickHandler(data, column) {
      const item = Object.assign({}, data);
      alert(`itemId=${item.id}, column=${column}`);
    },
    
    async fetchItems() {
      // alert("dd")
        this.products=[];
        var murl=this.$store.state.mUrl;
       const mData = { 
            nm:"peter" ,
          };
    
          axios({
              method: 'POST',
              // url: 'http://localhost/nw/vap/regApi.php?apicall=signup'
              url: murl+'api.php?apicall=v_gallery',
              data: mData,
              config: { headers: {'Content-Type': 'multipart/form-data' }}
          })
          .then((response) => {
            const results = response.data
            const myData = response.data.data
            // console.log("response: "+JSON.stringify(response));
            console.log("responseG: "+ JSON.stringify(myData));
            
          
            if(results.val==2){
              console.log(myData)
                this.mp = myData
                this.products = myData
            }
          

          })
          .catch(function (response) {
              //handle error
              console.log("error"+response)
          });             

  }
  },
  data() {
    return {
      products: photos,
      mp:photos,
   url:this.$store.state.mUrl,
           
      collage: {
        gapSize: "1em",
        borderRadius: "1em",
        width: "auto",
        height: ["calc(50vh - 2em)", "calc(50vh - 1em)"],
        layout: [2, 3],
       
        showNumOfRemainingPhotos: true,
      },
    };
  },
  mounted() {
    this.fetchItems()
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