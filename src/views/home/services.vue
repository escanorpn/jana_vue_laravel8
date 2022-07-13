<template>
<article id="" class="Services" >
	<div class="panel-image" v-bind:style="mBg"   
	
	>
		<div class="panel-image-prop" style="padding-top: 60%">
		</div>
	</div>
	<div class="panel-content" style="background: linear-gradient(181deg, white 9%, white 85%, #d9d0d0 1%) center center / cover fixed;background-color: #af8c56">

		<div class="wrap" style="max-width: 1200px;">
			<div class="card text-center" style="width: 100%; max-width: 1200px; margin-right: auto; margin-left: auto; margin-top: -142px;background: linear-gradient(180deg,rgb(136 34 30) 15%, rgb(255, 255, 255) 3%, rgb(255, 255, 255) 81%, rgb(60 13 11) 4%);box-shadow:rgb(40 18 10 / 59%) 0px 32px 32px;"><div class="card-body">
				<h2 style="color:white;text-shadow: 1px 1px 2px black;margin-top: -15px;text-shadow: 4px 2px 2px #2c0406;">
					<b>Products and Services</b>
				</h2>
			<!-- <div class="container">
				<div class="row">
				<div class="col-md-4"><div class="card white lighten-1 black-text text-center" style="max-width: 700px; margin-left: auto; margin-right: auto; margin-top: 32px;"><div class="card-body" style="color: rgb(1, 5, 9);">
				<h5>EXHIBITION STANDS AND TRADE SHOW BOOTHS
				</h5>
				<br>
					<a role="button" class="btn-floating btn t btn-sm Ripple-parent waves-effect waves-light" style="padding: 8px; border-radius: 12px;background: linear-gradient(315deg,#3f0d12,#a71d31 74%);">More<div class="Ripple " style="top: 0px; left: 0px; width: 0px; height: 0px;"></div>
					</a>
						</div>
					</div>
				</div>

			</div>
		</div> -->
		<mlist :posts="products" />
	</div>
</div>
</div>
</div>

</article>
</template>
<script>

import mlist from "./slist.vue"
// import { mdbBtn,} from 'mdbvue';
import axios from "axios";
// import $ from 'jquery'
export default {
name: 'sHomePage',
components: {
	mlist,
},
data() {
return {
	products: [],
	mItems: [],
	sending: false,
	dList:false,
	cRequest:false,
	mWx:'0px',
	mWy:'0px',

}
},
computed: {
  mBg() {
    return {
    backgroundImage: `url(${require('../../assets/img/bg/2.jpg')})`,
	backgroundAttachment: "fixed",
	height: "50vh",
	backgroundPositionX: this.mWx,
	backgroundPositionY: this.mWy,
	backgroundPosition: "center",
	backgroundRepeat: "no-repeat",	
	backgroundSize: "cover",
    };
  }
},
methods:{
    async fetchServices() {
	this.products=[];
        var murl=this.$store.state.mUrl;
		const mData = { 
			nm:"peter" ,
		};
    
		axios({
			method: 'POST',
			// url: 'http://localhost/nw/vap/regApi.php?apicall=signup'
			url: murl+'api.php?apicall=h_services',
			data: mData,
			config: { headers: {'Content-Type': 'multipart/form-data' }}
		})
		.then((response) => {
			const results = response.data
			const myData = response.data.data
			// console.log("response: "+JSON.stringify(response));
			console.log("response1: "+ JSON.stringify(myData));
			
			if(results.val==2){
			console.log(myData)
				this.products = myData.map(post => ({
				
			id: post.pro.sid,
			name: post.pro.head,
			description: post.pro.description,
			img: post.im,
		
			
			}))
			}
		

		}).catch(function (response) {
			//handle error
			console.log("error"+response)
		});

    },
},
mounted() {
 this.fetchServices();
},




};
</script>

<style scoped>

@import  "../../assets/css/soft-design-system.css?v=1.0.5";
.wrap {
margin-left: auto;
margin-right: auto;
width:90%;
max-width: 900px;
}
.bg {
/* The image used */
background-image: url("../../assets/img/curved-images/curved1.jpg");
/* background-image: url("../assets/img/3.jpg"); */

/* Full height */
height: 100%;

/* Center and scale the image nicely */
background-position: center;
background-repeat: no-repeat;
background-size: cover;
}
h1 {
font-weight: bolder;
letter-spacing: 8px;
}
h1, h5 {
text-transform: uppercase;
}

h5 {
letter-spacing: 3px;
font-weight: 300;
}

.hr-light {
border-top: 3px solid #fff;
width: 80px;
}
.navbar {
transition: 1s;
}
.navbar .md-form {
margin: 0;
}
.top-nav-collapse {
background-color: #78909c !important;
}
@media (max-width: 990px){
.navbar {
background-color: #78909c !important;
}
}
.gradient {
background: -moz-linear-gradient(45deg, rgba(42, 27, 161, 0.7), rgba(29, 210, 177, 0.7) 100%);
background: -webkit-linear-gradient(45deg, rgba(42, 27, 161, 0.7), rgba(29, 210, 177, 0.7) 100%);
background: -webkit-gradient(linear, 45deg, from(rgba(42, 27, 161, 0.7)), to(rgba(29, 210, 177, 0.7)));
background: -o-linear-gradient(45deg, rgba(42, 27, 161, 0.7), rgba(29, 210, 177, 0.7) 100%);
background: linear-gradient(45deg, rgba(42, 27, 161, 0.7), rgba(29, 210, 177, 0.7) 100%);
}
h6 {
line-height: 1.7;
}
</style>