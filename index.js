function funcao1(){
    document.write('enviado com sucesso');
}
{/* <input type="text" oncopy="myFunction()" value="Try to copy this text"></input> */}
function exibirCat(categoria){
    // alert(categoria);
    let elementos = document.getElementsByClassName("produtos");
    console.log(elementos);
    for(var i=0; i<elementos.length;  i++){
        console.log(elementos[i].id);
        if(categoria==elementos[i].id)
        elementos[i].style = "display:inline-block";
        else
        elementos[i].style = "display:none";
    }

}
// function funcaoimg(){
//     document.write('Dê 2 cliques');
// }

let exibirTodos= () => {
let elementos = document.getElementsByClassName("produtos");
for(var i=0; i<elementos.length; i++){
    elementos[i].style="display:inline-block";
}
};
let destaque = (imagem) => {
    console.log(Imagem);
    imagem.width = 240;
    if(imagem.width==240)
    imagem.width=120;
    else imagem.width = 240;
};
window.onresize = function(){
    console.log(window.innerWidth);
    window.scroll(0, window.innerWidth);
};
  document.onscroll = function(){
      console.log('redimencionando');
  }