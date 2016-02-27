<color>

  <div id="boxColor" class="box-color" ><div>

<script>

  /* On riotjs mount*/
  this.on('mount', function(){});

  /* Revealing Methods */
  this.setColor = setColor.bind(this);

  /* Private Methods */
  function setColor( color ){
    this.boxColor.style.backgroundColor = color;
  }

</script>

<style scoped>

  .box-color{
    width: 100%;
    height: 100%;
    background-color: red;
    cursor: pointer;
    -webkit-transition: all 0.2s ease-out;
    -moz-transition: all 0.2s ease-out;
    -ms-transition: all 0.2s ease-out;
    -o-transition: all 0.2s ease-out;
    transition: all 0.2s ease-out;
  }

</style>

</color>
