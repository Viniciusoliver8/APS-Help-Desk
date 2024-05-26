//Esta identificando o formulario e pagando os inputs através de um Id usando querySelector a função relatar_problema está pegando as informações e trasnformando em um arquivo Json que sera enviado no método POST ao clicar no botão enviar
const formulario = document.querySelector("form");

const Inome = document.querySelector("#nome");
const Iemail = document.querySelector("#email");
const Idepartamento = document.querySelector("#departamento");
const Idescricao = document.querySelector("#descricao");
const Iprioridade = document.querySelector("#prioridade");

function relatar_problema() {
  fetch("http://localhost:8080/problema", {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify({
      nome: Inome.value,
      email: Iemail.value,
      departamento: Idepartamento.value,
      problema: Idescricao.value,
      prioridade: Iprioridade.value,
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
  Inome.value = "";
  Iemail.value = "";
  Idepartamento.value = "";
  Idescricao.value = "";
  Iprioridade.value = "";
}

formulario.addEventListener("submit", function (event) {
  event.preventDefault();
  relatar_problema();
  limpar();
});
