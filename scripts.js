
    let count = 0;
    let btn_plus = document.getElementById("buttonCountPlus");
    let btn_minus = document.getElementById("buttonCountMinus");
    let disp = document.getElementById("CountNumber");
    let btn = document.getElementById("myBtnn");

    btn_plus.onclick = function () {
        count++;
        disp.value = count;
    }

    btn_minus.onclick = function () {
        if(disp.value >1){
        count--;
        disp.value = count;
        }
    }

    btn.onclick = function () {
      toastr.error('ВОЙДИТЕ В АККАУНТ');
  }



  

    var big = document.querySelector('.big')
    if (document.querySelectorAll('.images a')) {
      document.querySelectorAll('.images a').forEach(item => {
        item.addEventListener('mouseover', e => {
          big.src = item.href
        })
        item.addEventListener('click', e => {
          e.preventDefault()
          e.stopPropagation()
        })
      })
    }