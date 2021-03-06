# ReplayKit

Este conteúdo tem o intuito de instruir na criação de um projeto utilizando a estrutura do ReplayKit, tal como o importe da framework para o projeto, implementar delegates, métodos para inicializar, manipular, editar e armazenar a gravação.


+ ## Passo a passo para a implementação do ReplayKit 
```diff

+1. Importar o ReplayKit para o projeto;
+2. Criar instância da classe RPScreenRecorder => RPScreenRecorder.shared();
+3. Verificar a disponibilidade por meio da property "available" da instância criada;
+4. Configurar a property de delegate da instância para o seu código e colocar no código o protocolo RPScreenRecorderDelegate e fazer o projeto entrar em conformidade com o protocolo;
+5. Chamar o método startRecordingWithMicrophoneEnabled(_:handler:) da instância criada anteriormente;
+6. Para parar a gravação chame o método stopRecordingWithHandler(_:);
+7. Espere o handler ser chamado, nele você terá acesso a uma instância da classe RPPreviewViewController;
+8. Configure a property  previewControllerDelegate da preview view controller para o seu código e entre em conformidade com o protocolo RPPreviewViewControllerDelegate;
+9. Apresente sua preview controller;

``` 
## Construído

* [XCODE]
* [Swift4]
* [iOS,tvOS]

## Autores


* **Eric Winston** - *Developer Academy/UCB* - [GitHub](https://github.com/EricWinston)
* **Geovanni Oliveira** - *Developer Academy/UCB* - [GitHub](https://github.com/Geovannioj)
* **Arthur de Castro** - *Developer Academy/UCB* - [GitHub](https://github.com/ravinzin)
* **Matheus Clemente** - *Developer Academy/UCB* - [GitHub](https://github.com/matheusclemente)

## Agradecimentos

* Marcos T. Morais - Instrutor 
