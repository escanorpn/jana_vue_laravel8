<template>
  <div class="mTopu" style="max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
    margin-top: -200px;
    width: 99%;">
      
      <!-- <div style="background-color:#001529;height:63px;margin-top:-50px;" ></div> -->
 <md-progress-bar md-mode="indeterminate" v-if="sending" />
  <mdb-card style="width:98%;max-width:1200px;margin-bottom:3%;padding-top:42px;padding-bottom:42px;margin-top; " >
    <mdb-card-body>
         
    <mdb-card style="width:98%;max-width:1220px;margin-left:auto;margin-right:auto; " >
    <mdb-card-body>
      <mdb-row>
            <h1 class="cHead" style="text-align: center;">Who We Are</h1>
        <mdb-card style="width:90%;max-width:1220px;margin-bottom:3%;padding-top:4px;padding-bottom:42px;margin-top;" >
        <mdb-card-body style="margin-left:auto;margin-right:auto;">
         
            <div style="padding:22px">Le Meilleur Global Exhibitions is one of the leading companies in the organization of
trade promotional activities and Event Management Services, with over 10 years
experience in the industry.
Le Meilleur organizes National and International Conferences,
Exhibitions, Trade Fairs, Seminars, Summits, Workshops, Branding, Business Meetings,
Cultural Programs and other business promotion related activities.
We are associated with leading organizations, Corporates, Chambers of Commerce,
Associations and Agencies of Government of India and State Governments such as
Korea, Qatar as well as partners of various organizations from around the world.
You want a successful event! You want to work with Le Meilleur Global Exhibitions, a
company that lets your brand speak on your behalf.</div>
        </mdb-card-body>
        </mdb-card>
    </mdb-row>
    </mdb-card-body>
    </mdb-card>
      
 
         
    <mdb-card style="width:98%;max-width:1220px;margin-left:auto;margin-right:auto; " >
    <mdb-card-body>
      <mdb-row>
            <h1 class="cHead" style="text-align: center;">Our Mission:</h1>
        <mdb-card style="width:90%;max-width:1220px;margin-bottom:3%;padding-top:0px;padding-bottom:42px;margin-top;" >
        <mdb-card-body style="margin-left:auto;margin-right:auto;">
         
          <div style="padding:22px">To provide quality services that provides our clients with infrastructure to grow their
            business.
          </div>
        </mdb-card-body>
        </mdb-card>
    </mdb-row>
    </mdb-card-body>
    </mdb-card>


         
    <mdb-card style="width:98%;max-width:1220px;margin-left:auto;margin-right:auto; " >
    <mdb-card-body>
      <mdb-row>
            <h1 class="cHead" style="text-align: center;">Why Le Meilleur?
</h1>
        <mdb-card style="width:90%;max-width:1220px;margin-bottom:3%;padding-top:0px;padding-bottom:42px;margin-top;" >
        <mdb-card-body style="margin-left:auto;margin-right:auto;">
         
          <div style="padding:22px">
          <ol>
            <li>
                We exceed client’s expectations by carefully listening, strategizing and skillfully
                implementing tasks assigned.
            </li>
            <li>
                Our vast experience of over 10 years in the industry, gives us an upper hand and
earns us trust and reliability with our clients.
            </li>
            <li>
                We invest in up-to-date equipment and a lot of research to boost our creativity in
setting up different venues. This gives us a competitive edge.
            </li>
            <li>
               We have well stocked warehouses and this allows us to provide affordable
solutions to our clients since we don’t have to out-source equipment from other
events companies.
            </li>
            <li>
               We adhere to agreed time frame of execution of tasks unconditionally.
            </li>
          </ol> 
 

 

          </div>
        </mdb-card-body>
        </mdb-card>
    </mdb-row>
    </mdb-card-body>
    </mdb-card>
    </mdb-card-body>
  </mdb-card>

  




  </div>
</template>

<script>
  import {  mdbCard, mdbCardBody,   mdbRow,} from 'mdbvue';
  
//   import { validationMixin } from 'vuelidate';
//   import {
//     required,
 
//     minLength,
//     maxLength
//   } from 'vuelidate/lib/validators'

const axios = require('axios');

export default {
    components: {
        // UploadImages,
        mdbCard,
        mdbCardBody,
        // mdbInput,
       
        mdbRow,
        // mdbDatatable2 
      },
      
  props: ['cid'],
  data() {
    return {
      confirmDirty: false,
      mData:null, 
      error:false,
      emsg:null,
      // residences,
      autoCompleteResult: [],
      formItemLayout: {
        labelCol: {
          xs: { span: 24 },
          sm: { span: 8 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },
      },
      tailFormItemLayout: {
        wrapperCol: {
          xs: {
            span: 24,
            offset: 0,
          },
          sm: {
            span: 16,
            offset: 8,
          },
        },
      },
    };
  },
  beforeCreate() {
    this.form = this.$form.createForm(this, { name: 'register' });
  },
  methods: {
    
      sendInquery () {
        this.sending = true
        var murl=this.$store.state.mUrl;
        // var form_data = new FormData();

      // console.log("form_data: "+this.mData.nmz);
      
// Display the key/value pairs
// for (var pair of form_data.entries()) {
//     console.log(pair[0]+ ', ' + pair[1]); 
// }
 var mCarray=[];
 if(this.$cookies.isKey("mp")){
    mCarray=JSON.parse(this.$cookies.get("mp"))
 }
 const article = { 
    nm:this.mData.name ,
    phone:this.mData.phone,
    em:this.mData.email,
    msg:this.mData.msg,
    mCarray:mCarray
 };
 
      console.log("form_data: "+JSON.stringify(article));
      axios({
          method: 'POST',
          // url: 'http://localhost/nw/vap/regApi.php?apicall=signup'
          url: murl+'api.php?apicall=mail',
          data: article,
          config: { headers: {'Content-Type': 'multipart/form-data' }}
      })
      .then((response) => {
        this.sending = false
        console.log("response: "+ JSON.stringify(response));
        // console.log("response1: "+ JSON.stringify(response.data));
       
    if(response.data.code==1){ 
            this.emsg = response.data.message;
            //  this.clearForm1();
            this.error = true
           
          }
      })
      .catch(function (response) {
          //handle error
          console.log("error"+response)
      });
        // Instead of this timeout, here you can call your API
      //  this.sending = false
      },
    handleSubmit(e) {
      e.preventDefault();

      this.form.validateFieldsAndScroll((err, values) => {
        if (!err) {
          this.mData=values;
          this.sendInquery();
          console.log('Received values of form: ', values);
        }
      });
    },
    handleConfirmBlur(e) {
      const value = e.target.value;
      this.confirmDirty = this.confirmDirty || !!value;
    },
    compareToFirstPassword(rule, value, callback) {
      const form = this.form;
      if (value && value !== form.getFieldValue('password')) {
        callback('Two passwords that you enter is inconsistent!');
      } else {
        callback();
      }
    },
    validateToNextPassword(rule, value, callback) {
      const form = this.form;
      if (value && this.confirmDirty) {
        form.validateFields(['confirm'], { force: true });
      }
      callback();
    },
    handleWebsiteChange(value) {
      let autoCompleteResult;
      if (!value) {
        autoCompleteResult = [];
      } else {
        autoCompleteResult = ['.com', '.org', '.net'].map(domain => `${value}${domain}`);
      }
      this.autoCompleteResult = autoCompleteResult;
    },
  },
};
</script>

<style lang="scss" scoped>
.cHead{
     text-shadow: 1px 1px 2px #d76563;
    font-weight: 600;
    color: #410f0e;
    font-size: 22px;
    
}
.card .card-body{
    padding: 0px;
}
.card .card-body h1{
  font-weight: 900;
}

</style>