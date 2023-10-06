# app

Código aplicável pra todas as plataformas (web, android, linux, macIOs e windows). Entretanto, as interfaces do aplicativo foram pensadas para android/iOs. Ele vai funcionar caso rode na web, mas algumas telas podem não estar com seus widgets posicionados de forma correta.

As Apis estão funcionais e o código delas estão na pasta lib/app/common/services.dart . Para esse exemplo de aplicação todos os dados estão
hardcode mockados no código, mas implementar os dados da api seria simples a partir do arquivo de services.

Para rodar esse código você vai precisar do flutter, assim como o vscode e o android studio propriamente instalados no seu computador. É importante verificar se o android studio está com uma imagem de celular instalada para que ela seja verificada pelo vscode e seja possível iniciar o aplicativo pelo emulador do celular. (O android studio sempre da problema, pelo menos é o caso que acontece com o coitado que esta escrevendo este readme. Caso dê algum problema na hora de compilar que seja relacionado ao android studio, certifique-se que você está iniciando o emulador em modo "cold boot", e, se tudo, tudo, absolutamente tudo der errado, execulte em modo web e reduza a tela de forma com que ela pegue o formato próximo de um celular).

Eu vou dividir esse readMe em duas partes. A parte do *usuário* e a parte do *profissional*

    Para a parte do *usuário* nós temos 2 fluxos principais:
        - No fluxo de cadastro o usuário poderá escolher um icone a gosto para sua identificação. Ele também poderá escolher uma forma para
         ser identificado e terá que informar a idade (para confirmar que ele tem mais de 12 anos e dentro da margem de uso do aplicativo), 
         assim como terá que informar o email e o telefone (unicamente por motivos de cadastro). Ele também terá um dropdownbutton para 
         escolher algum problema que o afringe mais (fizemos isso pro que nosso publico alvo de 12 e 17 anos, talvez não saiba descrever 
         qual problema ele tem. Para este exemplo nós colocamos 5 tipos de problemas porém é importante constar que certamente você teria 
         uma boa lista para se pensar antes de inserir alí)


    Com essas informações ele segue para a tela principal que contará basicamente com um CRUD (mas sem a parte do U e do D), de consultas 
    com psicologos. Ele poderá escolher o psicólogo que gosta mais e marcar uma consulta com ele clicando no botão de marcar consulta em 
    destaque na tela. Ele poderá escolher a data e horário dessa consulta. Ele também poderá ver as consultas que já marcou na aba de "ver 
    consultas".

    Já na parte do *profissional* nós temos a mesma coisa:
        - Temos o fluxo de cadastro porém, desta vez, em vez de uma interface trabalhada com uma alta verificação, podemos fazer um form com 
        uma validação mais prática devido ao conhecimento do público. Enfim ele vai inserir os dados dele (nome, cpf, cnp, email, telefone e 
        senha), e depois, TEORICAMENTE O CERTO A SE FAZER SERIA VALIDAR COM A API PÚBLICA A VERACIDADE DESSES DADOS. Como infelizmente nós 
        não temos os recursos para isso, seguimos automaticamente para a tela de gerenciamento de consultas. Onde o profissional consegue 
        ver a lista de todos os estudantes que marcaram consultas com ele.
        
