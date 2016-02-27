<box>

  <div class="box-cover">
    <color onclick="{toggleColorPicker}"></color>
    <color-picker></color-picker>
  <div>

<script>

  /* Private Variables */
  var isColorPickerOpened = false;

  /* On riotjs mount*/
  this.on('mount', function(){
    init.call(this, this.opts.color);
  });

  /* Revealing Methods */
  this.toggleColorPicker = toggleColorPicker.bind(this);

  /* Private Methods */
  function init(color){
    this.tags.color.setColor(color);
  }

  function toggleColorPicker(){

    var colorPicker = this.tags["color-picker"];

    if(!isColorPickerOpened){
      colorPicker.open();
    }else{
      colorPicker.close()
    }

    isColorPickerOpened = !isColorPickerOpened;

  }

</script>

<style scoped>

  .box-cover{
    display: inline-block;
    width: 50px;
    height: 50px;
    border: 2px solid #0E0E0E;
    border-radius: 7px;
    position: relative;
  }

</style>

</box>
