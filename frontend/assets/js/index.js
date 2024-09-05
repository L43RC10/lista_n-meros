window.onload = () => {
    get_username(1);
}

function get_username(id){
    fetch(`http://127.0.0.1:3000/user/${id}`)
    .then(response => {
        if(response.status === 200){
            return response.json();
        } else {
            console.log('ERRO!');
        }
    })
    .then(dados => {
        if(dados.length === 0){
            console.log('Erro!');
        } else {
            document.querySelector('#username').textContent = dados[0].username;
        }
    })
}