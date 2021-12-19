var itemType = ''

$(document).ready(function(){

    window.addEventListener("message", function(event){

        switch (event.data.action) {
            case 'open':
                $('producao').fadeIn(100)
                itemType = event.data.type
                OpenNUI(event.data.config)
            break;
        }
        document.onkeyup = function(data){
            if(data.which == 27) {
                $('producao').fadeOut(100)
                $.post("https://jd_menu/close")
            }
        }
    })
})


function OpenNUI(event){

    $('.itens').empty()
    event.forEach((value,key) => {
        value.forEach((value,key) => {
            $('.itens').append(` 
                <div class="craft">
                    <div class="topo">
                        <img class="itemproduction" src="img/${value.index}.png" alt="">
                        <div class="ingredientes" id="${key}">
                        </div>
                    </div>
                    <div class="pictures" id="image-${key}">

                    </div>
                    <div data-type = "${itemType}"" data-config = "${value.item}" onclick = CriarItem(this) class="montar">MONTAR</div>
                </div>
            `)
            value.ingrediente.forEach((value) => {
                $(`#${key}`).append(`<small>${value.qtd}X ${value.index}</small>`)
                $(`#image-${key}`).append(`<img class="" src="img/${value.item}.png" alt="">`)
            })
        })
    })
}


function CriarItem(action){
    $('producao').fadeOut(100)
    $.post("https://jd_menu/close")
    $.post("https://jd_menu/CraftItem",JSON.stringify({config : action.dataset.config, type : action.dataset.type}))
}