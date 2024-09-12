// javascript do index.html

let id_user = 1;

window.onload = () => {

    get_username(id_user);
    get_user_numero(id_user);

}

// ======================================
function get_username(id_user){

    fetch(`http://127.0.0.1:3000/user/${id_user}`)
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

// ======================================
function get_user_numero(id_user){

    fetch(`http://127.0.0.1:3000/user/${id_user}/numeros`)
    .then(response => {
        if(response.status === 200){
            return response.json();
        } else {
            console.log('ERRO!');
        }
    })
    .then(numeros => {
        if(numeros.length === 0){
            document.querySelector('#sem_numeros').classList.remove('d-none');
            document.querySelector('#total_numeros').classList.add('d-none');
        } else {

            document.querySelector('#numeros_container').innerHTML = null; // ''(vazio) ou null é a mesma coisa

            let colors = [
                {
                    num_status: 'novo',
                    selected_bg_color: 'bg-white'
                },
                {
                    num_status: 'em_progresso',
                    selected_bg_color: 'bg-info'
                },
                {
                    num_status: 'cancelado',
                    selected_bg_color: 'bg-danger'
                },
                {
                    num_status: 'concluido',
                    selected_bg_color: 'bg-success'
                },
            ]

            numeros.forEach(numero => {

                let color = colors.find(item => item.num_status == numero.numero_status);
                console.log(color);
                
                let html = `
                    <div class="col-12 border border-primary rounded p-2 shadow-sm">
                        <div class="row barra-tarefas">
                            <div class="col-8 d-flex align-items-center">
                                <h5><i class="fa-brands fa-whatsapp ms-2 me-2 text-success"></i></h5><h5>${numero.numero}</h5>
                            </div>
                            <div class="col-3 text-center">
                                <select id="task_status_${numero.id}" onchange="change_numero_status(${numero.id})" class="form-select py-1 filtro ${color.selected_bg_color}">
                                    <option value="novo" ${numero.numero_status == 'novo' ? 'selected' : ''}>Novo</option>
                                    <option value="em_progresso" ${numero.numero_status == 'em_progresso' ? 'selected' : ''}>Em progresso</option>
                                    <option value="cancelado" ${numero.numero_status == 'cancelado' ? 'selected' : ''}>Cancelado</option>
                                    <option value="concluido" ${numero.numero_status == 'concluido' ? 'selected' : ''}>Concluído</option>
                                </select>
                            </div>
                            <div class="col-1 d-flex align-items-center justify-content-center">
                                <i class="fa-regular fa-pen-to-square text-success me-4 edit_link" onclick="edit_numero(${numero.id})"></i>
                                <i class="fa-regular fa-trash-can text-danger edit_link" onclick="delete_numero(${numero.id})"></i>
                            </div>
                        </div>
                    </div>
                    </div>`;
                
                let novo_numero = document.createElement('div');
                novo_numero.classList.add('row', 'mb-1');
                novo_numero.innerHTML = html;

                document.querySelector('#numeros_container').appendChild(novo_numero);

            });
            
            document.querySelector('#sem_numeros').classList.add('d-none');
            document.querySelector('#total_numeros').classList.remove('d-none');
            document.querySelector('#total_numeros > div > h4 > span').textContent = numeros.length;

        }
    })
}

// ======================================
function edit_numero(id_numero){
    console.log(`editar ${id_numero}`);
}

// ======================================
function delete_numero(id_numero){
    console.log(`deletar ${id_numero}`);
}

// ======================================
function change_numero_status(id_numero){
    let status = document.querySelector(`#task_status_${id_numero}`).value;
    // console.log(`Número Id: ${id_numero} teve o status alterado para ${value}!`);

    // aqui iremos fazer o request(requisição)
    fetch(`http://127.0.0.1:3000/user/${id_user}/numeros/update_status`, {
        method: 'POST',
        headers: {'Content-Type' : 'application/json'},
        body: JSON.stringify({id_user, id_numero, status})
    })
    // aqui teremos a resposta
    .then(response => {
        console.log(response);
    })
}