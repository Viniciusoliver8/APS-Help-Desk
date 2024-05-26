//Esta identificando o formulario e pagando os inputs através de um Id usando querySelector a função cadastrar_pessoa está pegando as informações e trasnformando em um arquivo Json que sera enviado no método POST ao clicar no botão enviar

const formulario = document.querySelector("form");
const Inome = document.querySelector("#name");
const Iemail = document.querySelector("#e-mail");
const Itel = document.querySelector("#telefone");
const Idepart = document.querySelector("#departamento");
const Icargo = document.querySelector("#car");

function cadastrar_pessoa() {
  fetch("http://localhost:8080/pessoa", {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify({
      nome: Inome.value,
      email: Iemail.value,
      telefone: Itel.value,
      departamento: Idepart.value,
      cargo: Icargo.value,
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
  Itel.value = "";
  Idepart.value = "";
  Icargo.value = "";
}

formulario.addEventListener("submit", function (event) {
  event.preventDefault();
  cadastrar_pessoa();
  limpar();
});
