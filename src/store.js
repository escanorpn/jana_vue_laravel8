import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)




export default new Vuex.Store({
  state: {
    docs: true,
    mcolor: "#45100f",
    button_c:"#e9ecef",
    button_bg: "linear-gradient(315deg,#3f0d12,#a71d31 74%)",
    button_sh: "rgb(38 3 3) 1px 5px 5px",
    mKey: "mKey1mKey1mKey1mKey1mKey1mKey1m1",
    // mUrl: "http://localhost/w/15/vue_mdb_ant/src/s/s1/",
    // mUrl: "http://localhost/w/lmg2/src/s/s1/",
    // http://localhost/w/vue/src/s/s2/public/api/product1
    mUrl: " http://localhost/w/vue/src/s/s2/public/api/auth/",
    nUrl: " http://localhost/w/vue/src/s/s2/public/api/",
    // mUrl: "https://lmg.lmglobalexhibitions.com/src/s/s1/",
    // mUrl: "http://192.168.43.73/w/15/vue_mdb_ant/src/s/s1/",
    // mUrl: "http://s15minutes.kilaqitu.com/s1/",
    // mUrl: "https://s15.15minuteslogistics.co/s1/",

    },
    mutations: {
        toggleDocs(state, value) {
            state.docs = value;
        }
    },
    actions: {

    }
})