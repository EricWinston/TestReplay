# ReplayKit  

## **Screen Recording**  
É um framework para gravação da tela e do som do aplicativo enquanto está aberto, o microfone pode ser gravado também para eventuais comentários do jogador, mas depende da vontade to jogar habilitar o microfone ou não.  

Este projeto tem o intuito te fazer um projeto toy para o aprendizado do uso do ReplayKit, o que importar, delegates a serem utilizados, método para inicializar a gravação da tela, edição do vídeo e salvar a gravação.  

## Passo a passo para implementar o replayKit para gravação de tela 
1. importar o ReplayKit para o projeto  
2. criar instancia da classe RPScreenRecorder => RPScreenRecorder.shared()  
3. verificar a disponibilidade por meio da property "available" da instancia criada  
4. configurar a property de delegate da instancia para o seu código e colocar no código o protocolo RPScreenRecorderDelegate e fazer o projeto entrar em conformidade com o protocolo  
5. chamar o método startRecordingWithMicrophoneEnabled(_:handler:) da instancia criada anteriormente  
6. para parar a gravação chame o método stopRecordingWithHandler(_:)  
7. Espere o handler ser chamado, nele você terá acesso à uma instancia da classe RPPreviewViewController  
8. configure a property  previewControllerDelegate da preview view controller para o seu código e entre em conformidade com o protocolo RPPreviewViewControllerDelegate  
9. apresente sua preview controller  
