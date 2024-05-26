//Esta identificando o formulario e pagando os inputs através de um Id usando querySelector a função cadastro_login está pegando as informações e trasnformando em um arquivo Json que sera enviado no método POST ao clicar no botão cadastrar

const formulario = document.querySelector("form");

const Inome = document.querySelector("#nome_login_c");
const Iemail = document.querySelector("#email_login_c");
const Isenha = document.querySelector("#senha_login_c");

function cadastro_login() {
  fetch("http://localhost:8080/usuarios", {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify({
      nome: Inome.value,
      email: Iemail.value,
      senha: Isenha.value,
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
  Isenha.value = "";
}

formulario.addEventListener("submit", function (event) {
  event.preventDefault();
  cadastro_login();
  limpar();
});
