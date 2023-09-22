// Projeto Web
/* EXERCÍCIO - Trocar a cor dos botões e o botão Undo tem que desfazer a cor de todos botões
 */
 
// 1ª maneira, utilizando a classe do botão
function green() {
                  // complete the code within here, using getElementsByClassName
                  let green = document.getElementsByClassName('green');
                  for (one of green) {
                        if (one.style.backgroundColor == "green") {
                              one.style.backgroundColor = "black"
                              one.textContent = "Click to change this to green"
                        } else {
                              one.style.backgroundColor = "green"
                              one.textContent = "Click to back the color to black"
                        }
                  }
            }

            function blue() {
                  // complete the code within here, using getElementsByClassName
                  let blue = document.getElementsByClassName('blue')[0].backgroundColor = "blue";
            }

            function red() {
                  // complete the code within here, using getElementsByClassName
                  let red = document.getElementsByClassName("red");
                  for (one of red) {
                        one.style.backgroundColor = "red";
                  }
            }

            function undo() {
                  // complete the code within here. Note: this will be different code to the other functions above.
                  let undo = document.getElementsByClassName('undo')
                  for (bob of undo) {
                        bob.style.backgroundColor = "black";
                  }
            }

// 2ª maneira, trocar a cor pelo texto do botão
  // outra forma de fazer bem legal(remover os onclick="" dos botoes)
            // retorna uma HTMLCollection (lista de elementos html)
            // usar for e for of loop, forEach não funciona.
            let arr = document.getElementsByTagName('button');
            for (let i = 0; i < arr.length; i++) {
                  arr[i].onmousedown = () => {
                        if (arr[i].textContent.includes("red")) {
                              arr[i].style.backgroundColor = "red";
                        } else if (arr[i].textContent.includes("blue")) {
                              arr[i].style.backgroundColor = "blue";
                        } else if (arr[i].textContent.includes("green")) {
                              arr[i].style.backgroundColor = "green";
                        } else {
                              for (botao of arr) {
                                    botao.style.backgroundColor = "black";
                              }
                        }
                  }
            }