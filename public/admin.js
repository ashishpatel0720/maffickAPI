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
            <a class="button is-primary is-inverted">
              <span>Visit Website</span>
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

Vue.component("event-form",{
    props:{
        title:{required:true}
    },
    template:`
<section class="section" >
<div class="container is-fluid">
<div class="columns">
<div class="column is-7-desktop is-offset-2-desktop">
<h1 class="title" style="margin-top:1em;">{{title}}</h1>
<div class="field">
    <label class="label">Name</label>
    <div class="control">
        <input class="input" type="text" placeholder="event name" >
    </div>
</div>

<div class="field">
    <label class="label">Username</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input is-success" type="text" placeholder="Text input" value="bulma">
        <span class="icon is-small is-left">
      <i class="fa fa-user"></i>
    </span>
        <span class="icon is-small is-right">
      <i class="fa fa-check"></i>
    </span>
    </div>
    <p class="help is-success">This username is available</p>
</div>

<div class="field">
    <label class="label">Email</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input is-danger" type="email" placeholder="Email input" value="hello@">
        <span class="icon is-small is-left">
      <i class="fa fa-envelope"></i>
    </span>
        <span class="icon is-small is-right">
      <i class="fa fa-warning"></i>
    </span>
    </div>
    <p class="help is-danger">This email is invalid</p>
</div>

<div class="field">
    <label class="label">Subject</label>
    <div class="control">
        <div class="select">
            <select>
                <option>Select dropdown</option>
                <option>With options</option>
            </select>
        </div>
    </div>
</div>

<div class="field">
    <label class="label">Message</label>
    <div class="control">
        <textarea class="textarea" placeholder="Textarea"></textarea>
    </div>
</div>

<div class="field">
    <div class="control">
        <label class="checkbox">
            <input type="checkbox">
            I agree to the <a href="#">terms and conditions</a>
        </label>
    </div>
</div>

<div class="field">
    <div class="control">
        <label class="radio">
            <input type="radio" name="question">
            Yes
        </label>
        <label class="radio">
            <input type="radio" name="question">
            No
        </label>
    </div>
</div>

<div class="field is-grouped">
    <div class="control">
        <button class="button is-primary">Submit</button>
    </div>
    <div class="control">
        <button class="button is-link">Cancel</button>
    </div>
</div>
</div>
</div>   
</div>
</section>
`
});


new Vue({
    el:"#app",
});
