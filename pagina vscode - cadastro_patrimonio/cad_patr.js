//Esta identificando o formulario e pagando os inputs através de um Id usando querySelector a função cadastrar_patrimonio está pegando as informações e trasnformando em um arquivo Json que sera enviado no método POST ao clicar no botão enviar

const formulario = document.querySelector("form");

const Idescricao = document.querySelector("#descricao");
const Icategoria = document.querySelector("#categoria");
const Iaquisicao = document.querySelector("#aquisicao");
const Ivalor = document.querySelector("#valor");
const Idepartamento = document.querySelector("#departamento");

function cadastrar_patrimonio() {
  fetch("http://localhost:8080/patrimonio", {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify({
      descricao: Idescricao.value,
      categoria: Icategoria.value,
      data_aquisicao: Iaquisicao.value,
      valor: Ivalor.value,
      departamento: Idepartamento.value,
    }),
  })
    .then(function (res) {
      console.log(res);
    })
    .catch(function (res) {
      console.log(res);
    });
}
function limpar() {
  Idescricao.value = "";
  Icategoria.value = "";
  Iaquisicao.value = "";
  Ivalor.value = "";
  Idepartamento.value = "";
}

formulario.addEventListener("submit", function (event) {
  event.preventDefault();
  cadastrar_patrimonio();
  limpar();
});
