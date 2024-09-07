// javascript do index.html

let id = 1

window.onload = () => {

    get_username(id);
    get_user_numero(id);

}

// ======================================
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

// ======================================
function get_user_numero(id){

    fetch(`http://127.0.0.1:3000/user/${id}/numeros`)
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

            numeros.forEach(numero => {
                
                let html = `
                    <div class="col-12 border border-primary rounded p-2 shadow-sm">
                        <div class="row barra-tarefas">
                            <div class="col-8 d-flex align-items-center">
                                <h5><i class="fa-brands fa-whatsapp ms-2 me-2 text-success"></i></h5><h5>${numero.numero}</h5>
                            </div>
                            <div class="col-3 text-center">
                                <select id="task_status" class="form-select py-1 filtro">
                                    <option value="novo" ${numero.numero_status == 'novo' ? 'selected' : ''}>Novo</option>
                                    <option value="em_progresso" ${numero.numero_status == 'em_progresso' ? 'selected' : ''}>Em progresso</option>
                                    <option value="cancelado" ${numero.numero_status == 'cancelado' ? 'selected' : ''}>Cancelado</option>
                                    <option value="concluido" ${numero.numero_status == 'concluido' ? 'selected' : ''}>Concluído</option>
                                </select>
                            </div>
                            <div class="col-1 text-danger d-flex align-items-center justify-content-center">
                                <i class="fa-regular fa-pen-to-square text-success me-4 edit_link" data-id-numero="${numero.id}"></i>
                                <i class="fa-regular fa-trash-can"></i>
                            </div>
                        </div>
                    </div>
                    </div>`;
                
                let novo_numero = document.createElement('div');
                novo_numero.classList.add('row', 'mb-3');
                novo_numero.innerHTML = html;

                document.querySelector('#numeros_container').appendChild(novo_numero);

            });
            
            document.querySelector('#sem_numeros').classList.add('d-none');
            document.querySelector('#total_numeros').classList.remove('d-none');
            document.querySelector('#total_numeros > div > h4 > span').textContent = numeros.length;

        }
    })
}