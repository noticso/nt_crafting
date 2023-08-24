$(function () {
    function display(bool) {
        if (bool) {
            $(".grid").show();
        } else {
            $(".grid").hide();
        }
    }
    display(false)
    let container = document.getElementById('container')
    document.onkeydown = (event) => {
        if(event.which == 27){
            $.post(`https://${GetParentResourceName()}/exit`, JSON.stringify({}))
        }
    };    
    window.addEventListener('message', function(event) {
        
        let data = event.data;
        let items = data.items
        if (data.type === "ui") {
            if (data.status == true) {
                display(true)
               for(const[k,v] of Object.entries(items)){
                    if(container.querySelector(`#${v.id}`) === null){
                        let div = $(`<div class="item" ></div>`)
                        div.attr('id', v.id)
                        let img = $(`<img src="${v.img}"></img>`).appendTo(div)
                        let h1 = $(`<h1>${v.name}</h1>`).appendTo(div)
                        let obj = []
                        for([m,q] of Object.entries(v.material)){
                            obj.push(" "+q+" "+m.replaceAll(/_/g, ' '))
                        }
                        let p = $(`<p class="material">${obj}</p>`).appendTo(div)
                        let levelSys = $(`<p class="material">Level Required: ${v.levelRequired}</p>`).appendTo(div)
                        let pointSys = $(`<p class="material">Points earned: ${v.points}</p>`).appendTo(div)
                        let quantity = $(`<input type='number'  min='1' placeholder='Quantity' class='input' id='${v.id}-input'>`).appendTo(div)
                        let button = $(`<button class="button" onclick=craft(${JSON.stringify(v.id)})>CRAFT</button>`).appendTo(div)
                        $('#container').append(div)
                    } else{
                    }
                }
            } else {
                display(false)
            }
        }
        if (data.type === 'level'){
            $(".points").text("Current Points: " + data.exp)
            $(".level").text("Current Rank: " + data.rank)
        }
    })
})