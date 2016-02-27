<color-picker>

  <ul class="box-color-picker {opened : opened}">
    <li class="{color.color}" each="{color in colors}" onclick="{setColor}"></li>
  </ul>

<script>

  /* Public Variables */
  this.opened = false;
  this.colors = [
    { color : "red" },
    { color : "green" },
    { color : "blue" },
    { color : "yellow" }
  ];

  /* On riotjs mount*/
  this.on('mount', function(){});

  /* Revealing Methods */
  this.open = open.bind(this);
  this.close = close.bind(this);
  this.setColor = setColor.bind(this);

  /* Private Methods */
  function open(){
    this.opened = true;
  }

  function close(){
    this.opened = false;
  }

  function setColor(event){
    this.parent.tags.color.setColor(event.item.color.color);
  }

</script>

<style scoped>

  .box-color-picker{
    position: absolute;
    width: 74px;
    height: 18px;
    top: 0;
    left: 50px;
    border: 1px solid;
    list-style-type: none;
    padding: 0;
    vertical-align: middle;
    overflow: hidden;
    width: 0;
    -webkit-transition: all 0.2s ease-out;
    -moz-transition: all 0.2s ease-out;
    -ms-transition: all 0.2s ease-out;
    -o-transition: all 0.2s ease-out;
    transition: all 0.2s ease-out;
  }
  .box-color-picker.opened{
    width: 74px;
  }
  .box-color-picker li{
    float: left;
    border: 1px solid;
    display: inline-block;
    width: 10px;
    height: 10px;
    margin: 3px;
    cursor: pointer;
  }
  .box-color-picker li.red{
    background-color: red;
  }
  .box-color-picker li.green{
    background-color: green;
  }
  .box-color-picker li.blue{
    background-color: blue;
  }
  .box-color-picker li.yellow{
    background-color: yellow;
  }

</style>

</color-picker>
