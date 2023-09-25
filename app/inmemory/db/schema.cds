namespace greetingApp;

entity App {
  key ID: UUID;
  appName: String(200);
  button: Association to Button;
}

entity Button {
  key ID: UUID;
  buttonLabel: String(200);
  message: String(200);
  app: Association to App;
}

