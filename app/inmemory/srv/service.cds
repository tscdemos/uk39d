using { greetingApp } from '../db/schema.cds';

service greetingAppSrv {
  entity App as projection on greetingApp.App;
  entity Button as projection on greetingApp.Button;
}