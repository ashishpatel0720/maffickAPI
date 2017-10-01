window.Event=new Vue();

Vue.component('hero',{
    template:`
   <section class="hero is-primary is-medium" style="position:fixed;width:100%;z-index: 2">
  <div class="hero-head">
    <header class="nav">
      <div class="container">
        <div class="nav-left">
          <a class="nav-item">
              <span style="color:white;font-weight: bolder">Technosearch Admin</span>
          </a>
        </div>
        <span @click="toggleNavbar" :class="{'nav-toggle':true,'is-active':navBarToggle}">
          <span></span>
          <span></span>
          <span></span>
        </span>
        <div :class="{'nav-right':true,'nav-menu':true,'is-active':navBarToggle}">
          <a class="nav-item is-active" href="#add-event">
            Add Event
          </a>
          <a class="nav-item" href="#edit-event">
            Edit Event
          </a>
          <a class="nav-item">
            View Contacts
          </a>

          <span class="nav-item" >
            <a class="button is-primary is-inverted" href="/api/">
              <span>See API Docs</span>
            </a>
          </span>
        </div>
      </div>
    </header>
  </div>
</section> 
    `,
    data(){
        return {
            navBarToggle:false
        }
    },
    methods:{
        toggleNavbar(){
            this.navBarToggle=!this.navBarToggle;
        }
    }

});

Vue.component("event-add-form",{
    props:{
        title:{required:true},
        editform:{required:true}
    },
    template:`
<section class="section" >
<div class="container is-fluid">
<div class="columns">
<div class="column is-7-desktop is-offset-2-desktop">
<h1 class="title" style="margin-top:1em;">{{title}}</h1>

<!--//event name-->
<div class="field">
    <label class="label">Event Name</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input" type="text" placeholder="Enter event's name" v-model="eventdata.name"  :disabled="editform">
        <span class="icon is-small is-left">
      <i class="fa fa-calendar-o"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>

<!--category, longitude an lattitude-->
<div class="columns">
<div class="column is-4-tablet">
<div class="field ">
    <label class="label">Category</label>
    <p class="control">
        <div class="select">
            <select v-model="eventdata.category">
                <option value='empty'>Select a category</option>
                <option :value="category.name" v-for="category in categories">{{category.name}}</option>
            </select>
        </div>
    </p>
</div>
</div>
<!--longitude-->
<div class="column is-4-tablet">

<div class="field">
<label class="label">Longitude (optional)</label>
<p class="control">
<input type='text' class="input is-inline" placeholder="Enter longitude" v-model="eventdata.longitude">
</p>
</div>
</div>

<!--lattitude-->
<div class="column is-4-tablet">

<div class="field">
<label class="label">Lattitude (optional)</label>
<div class="control">
<input type='text' class="input is-inline" placeholder="lattitude" v-model="eventdata.lattitude">
</div>
</div>
</div>
</div>
<!--//description-->
<div class="field">
    <label class="label">Description</label>
    <div class="control">
        <textarea class="textarea" placeholder="Enter Event Description" v-model="eventdata.description"></textarea>
    </div>
</div>

<!--//problem-statement-->
<div class="field">
    <label class="label">Problem Statement</label>
    <div class="control">
        <textarea class="textarea" placeholder="Enter Problem Statement" v-model="eventdata.problem_statement"></textarea>
    </div>
</div>

<!--//date time-->
<div class="field">
    <label class="label">Date time (optional, follow valid format)</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input" type="text" placeholder="yyyy-mm-dd hh:mm:ss" v-model="eventdata.event_datatime">
        <span class="icon is-small is-left">
      <i class="fa fa-calendar"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>

</div>

<!--//Cordinator1-->
<h1 class='title'>Cordinator1</h1> 
<div class="field">
    <label class="label">Name</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input " type="name" placeholder="Name" v-model='eventdata.name1'>
        <span class="icon is-small is-left">
      <i class="fa fa-address-book-o"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>
<div class="field">
    <label class="label">Email</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input " type="email" placeholder="Email " v-model='eventdata.email1'>
        <span class="icon is-small is-left">
      <i class="fa fa-envelope"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>

<div class="field">
    <label class="label">Contact</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input" type="number" placeholder="Contact number " v-model='eventdata.contact1'>
        <span class="icon is-small is-left">
      <i class="fa fa-phone"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>
<div class="field">
    <label class="label">Description</label>
    <div class="control">
        <textarea class="textarea" placeholder="Enter Cordinator2's Description " v-model="eventdata.description1"></textarea>
    </div>
</div>



<!--//Cordinator2-->
<h1 class='title'>Cordinator2 (optional)</h1> 
<div class="field">
    <label class="label">Name</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input " type="name" placeholder="Name" v-model='eventdata.name2'>
        <span class="icon is-small is-left">
      <i class="fa fa-address-book-o"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>
<div class="field">
    <label class="label">Email</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input " type="email" placeholder="Email " v-model='eventdata.email2'>
        <span class="icon is-small is-left">
      <i class="fa fa-envelope"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>

<div class="field">
    <label class="label">Contact</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input" type="number" placeholder="Contact number " v-model='eventdata.contact2'>
        <span class="icon is-small is-left">
      <i class="fa fa-phone"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>
<div class="field">
    <label class="label">Description</label>
    <div class="control">
        <textarea class="textarea" placeholder="Enter Cordinator2's Description" v-model="eventdata.description2"></textarea>
    </div>
</div>
<div class="field is-grouped">
    <div class="control">
        <button @click='submitForm' class="button is-primary">Submit</button>
    </div>
    <div class="control">
        <!-- <button class="button is-link">Cancel</button> -->
    </div>
</div>
</div>
</div>   
</div>
</section>
`,
    data(){
        return {
            categories:[],
            eventdata: {
                category: "empty",
                contact1: "",
                contact2: "",
                description: "",
                description1: "",
                description2: "",
                email1: "",
                email2: "",
                event_datatime: "",
                faculty: "",
                lattitude: 0,
                longitude: 0,
                name: "",
                name1: "",
                name2: "",
                problem_statement: "",
            }
        }
    },
    methods:{
        submitForm(){
            axios.post("/api/events",this.eventdata)
                .then((response)=>{
                    Event.$emit('success',response);
                })
                .catch(function (response) {
                    Event.$emit('failure',response);
                    console.error("error in adding event");
                });
        }
    }
    ,
    created(){
        // console.log("before");console.log(this.categories);
        axios.get("/api/categories")
            .then((response)=> {
                this.categories=response.data.data;//last data was part of our api
            })
            .catch(function (response) {
                console.error("error happens");
            });
        // console.log("after");
        // console.log(this.categories);

    },
});

Vue.component("event-edit-form",{
    props:{
        title:{required:true},
        editform:{required:true}
    },
    template:`
<section class="section" >
<div class="container is-fluid">
<div class="columns">
<div class="column is-7-desktop is-offset-2-desktop">
<h1 class="title" style="margin-top:1em;">{{title}}</h1>


<!--//event data fetcher-->
<div class="columns">
    <div class="column is-7-tablet">
      <div class="field">
          <label class="label">Event Slug</label>
            <div class="control">
                <input class="input" type="text" placeholder="Enter event's slug" v-model="eventdata.slug">
            </div>
      </div>
    </div>
    <div class="column is-5-tablet">
      <div class="field">
          <label class="label">Fetch Event Data to edit</label>
            <div class="control">
             <button @click='fetchData' class='button is-success'> Fetch Data </button>
            </div>
      </div>
    </div>
</div>

<!--//event name-->
<div class="field">
    <label class="label">Event Name</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input" type="text" placeholder="Enter event's name" v-model="eventdata.name"  :disabled="editform">
        <span class="icon is-small is-left">
      <i class="fa fa-calendar-o"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>

<!--category, longitude an lattitude-->
<div class="columns">
<div class="column is-4-tablet">
<div class="field ">
    <label class="label">Category</label>
    <p class="control">
        <div class="select">
            <select v-model="eventdata.category">
                <option value='empty'>Select a category</option>
                <option :value="category.name" v-for="category in categories">{{category.name}}</option>
            </select>
        </div>
    </p>
</div>
</div>
<!--longitude-->
<div class="column is-4-tablet">

<div class="field">
<label class="label">Longitude (optional)</label>
<p class="control">
<input type='text' class="input is-inline" placeholder="Enter longitude" v-model="eventdata.longitude">
</p>
</div>
</div>

<!--lattitude-->
<div class="column is-4-tablet">

<div class="field">
<label class="label">Lattitude (optional)</label>
<div class="control">
<input type='text' class="input is-inline" placeholder="lattitude" v-model="eventdata.lattitude">
</div>
</div>
</div>
</div>
<!--//description-->
<div class="field">
    <label class="label">Description</label>
    <div class="control">
        <textarea class="textarea" placeholder="Enter Event Description" v-model="eventdata.description"></textarea>
    </div>
</div>

<!--//problem-statement-->
<div class="field">
    <label class="label">Problem Statement</label>
    <div class="control">
        <textarea class="textarea" placeholder="Enter Problem Statement" v-model="eventdata.problem_statement"></textarea>
    </div>
</div>

<!--//date time-->
<div class="field">
    <label class="label">Date time (optional, follow valid format)</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input" type="text" placeholder="yyyy-mm-dd hh:mm:ss" v-model="eventdata.event_datatime">
        <span class="icon is-small is-left">
      <i class="fa fa-calendar"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>

</div>

<!--//Cordinator1-->
<h1 class='title'>Cordinator1</h1> 
<div class="field">
    <label class="label">Name</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input " type="name" placeholder="Name" v-model='eventdata.name1'>
        <span class="icon is-small is-left">
      <i class="fa fa-address-book-o"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>
<div class="field">
    <label class="label">Email</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input " type="email" placeholder="Email " v-model='eventdata.email1'>
        <span class="icon is-small is-left">
      <i class="fa fa-envelope"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>

<div class="field">
    <label class="label">Contact</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input" type="number" placeholder="Contact number " v-model='eventdata.contact1'>
        <span class="icon is-small is-left">
      <i class="fa fa-phone"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>
<div class="field">
    <label class="label">Description</label>
    <div class="control">
        <textarea class="textarea" placeholder="Enter Cordinator2's Description " v-model="eventdata.description1"></textarea>
    </div>
</div>



<!--//Cordinator2-->
<h1 class='title'>Cordinator2 (optional)</h1> 
<div class="field">
    <label class="label">Name</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input " type="name" placeholder="Name" v-model='eventdata.name2'>
        <span class="icon is-small is-left">
      <i class="fa fa-address-book-o"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>
<div class="field">
    <label class="label">Email</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input " type="email" placeholder="Email " v-model='eventdata.email2'>
        <span class="icon is-small is-left">
      <i class="fa fa-envelope"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>

<div class="field">
    <label class="label">Contact</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input" type="number" placeholder="Contact number " v-model='eventdata.contact2'>
        <span class="icon is-small is-left">
      <i class="fa fa-phone"></i>
    </span>
        <span class="icon is-small is-right">
    </span>
    </div>
</div>
<div class="field">
    <label class="label">Description</label>
    <div class="control">
        <textarea class="textarea" placeholder="Enter Cordinator2's Description" v-model="eventdata.description2"></textarea>
    </div>
</div>
<div class="field is-grouped">
    <div class="control">
        <button @click='submitForm' class="button is-primary">Save Data</button>
    </div>
    <div class="control">
        <!-- <button class="button is-link">Cancel</button> -->
    </div>
</div>
</div>
</div>   
</div>
</section>
`,
    data(){
        return {
            categories:[],
            eventdata: {
                id:0,
                slug:'',
                category: "empty",
                contact1: "",
                contact2: "",
                description: "",
                description1: "",
                description2: "",
                email1: "",
                email2: "",
                event_datatime: "",
                faculty: "",
                lattitude: 0,
                longitude: 0,
                name: "",
                name1: "",
                name2: "",
                problem_statement: "",
            }
        }
    },
    methods:{
        submitForm(){
            if(this.eventdata.slug==""){
                Event.$emit('message',{message:"Please Enter slug and fatch data!",title:'Error'});
                return;
            }

            axios.put("/api/events/"+this.eventdata.slug+'/edit',this.eventdata)
                .then((response)=>{
                    Event.$emit('message',{message:"Event Data updated!",title:'Success'});
                    // Event.$emit('success',response);
                })
                .catch(function (response) {
                    Event.$emit('message',{message:"Couldn't able to update Data, try again!",title:'Error'});
                    // Event.$emit('success',response);

                    console.error("error in adding event");
                });
        },
        fetchData(){
            if(this.eventdata.slug==""){
                Event.$emit('message',{message:"Please Enter Slug",title:'Error'});
                return;
            }
            axios.get('/api/events/'+this.eventdata.slug)
                .then(response=>{
                    console.log(response);
                    if(response.data.data==undefined) //if data{} is not returned
                    {
                        Event.$emit('message',{message:"No Event found for this slug!",title:'Not Found'});
                        return;
                    }

                    this.eventdata=response.data.data[0];
                    Event.$emit('message',{message:"Data fetched and populated, Now you can edit!",title:'Fetched'});
                })
                .catch(response=>{
                    Event.$emit('message',{message:"Error Fetching Data, try again!",title:'Error'});
                });
        }
    }
    ,
    created(){
        // console.log("before");console.log(this.categories);
        axios.get("/api/categories")
            .then((response)=> {
                this.categories=response.data.data;//last data was part of our api
            })
            .catch(function (response) {
                console.error("error happens");
            });
        // console.log("after");
        // console.log(this.categories);

    },

});

Vue.component("modal",{
    'template':`
    <div class="modal is-active" v-show="isVisible">
  <div class="modal-background"></div>
  <div class="modal-card">
    <header class="modal-card-head">
      <p class="modal-card-title">{{title}}</p>
      <button class="delete" @click="isVisible=false" aria-label="close"></button>
    </header>
    <section class="modal-card-body">
    {{message}}
    </section>
    <footer class="modal-card-foot">
      <button @click="isVisible=false" class="button">Ok</button>
    </footer>
  </div>
</div>
     `,
    data(){
        return {
            title:'Message',
            isVisible:false,
            message:'this is message'
        }
    },
    created(){
        Event.$on('success', (response)=> {
            // alert('success')
            this.message=response.data.data[0];
            this.title='Success';
            this.isVisible=true;
        });
        Event.$on("failure",(response)=> {
            // alert('failure')
            // console.log('daa is '+data);
            this.message=response.response.data;
            this.title='Error';
            this.isVisible=true;
        });

        //generic message for simple usage
        Event.$on("message",(messagedata)=> {
            this.message=messagedata.message;
            this.title=messagedata.title;
            this.isVisible=true;
        });
    }
})
const app=new Vue({
    el:"#app",
});
