using { greetingAppSrv } from '../srv/service.cds';

annotate greetingAppSrv.App with @odata.draft.enabled;
annotate greetingAppSrv.Button with @odata.draft.enabled;
annotate greetingAppSrv.Button with @cds.odata.valuelist;
annotate greetingAppSrv.App with @cds.odata.valuelist;
annotate greetingAppSrv.App with @UI.HeaderInfo: { TypeName: 'App', TypeNamePlural: 'Apps', Title: { Value: appName } };
annotate greetingAppSrv.App with {
  ID @Common.Text: { $value: appName, ![@UI.TextArrangement]: #TextOnly }
};
annotate greetingAppSrv.App with @UI.Identification: [{ Value: appName }];
annotate greetingAppSrv.App with {
  appName @title: 'App Name'
};

annotate greetingAppSrv.App with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: appName },
    { $Type: 'UI.DataField', Label: 'Button', Value: button_ID }
];

annotate greetingAppSrv.App with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: appName },
    { $Type: 'UI.DataField', Label: 'Button', Value: button_ID }
  ]
};

annotate greetingAppSrv.App with {
  button @Common.Text: { $value: button.buttonLabel, ![@UI.TextArrangement]: #TextOnly }
};

annotate greetingAppSrv.App with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate greetingAppSrv.Button with @UI.HeaderInfo: { TypeName: 'Button', TypeNamePlural: 'Buttons', Title: { Value: buttonLabel } };
annotate greetingAppSrv.Button with {
  ID @Common.Text: { $value: buttonLabel, ![@UI.TextArrangement]: #TextOnly }
};
annotate greetingAppSrv.Button with @UI.Identification: [{ Value: buttonLabel }];
annotate greetingAppSrv.Button with {
  buttonLabel @title: 'Button Label';
  message @title: 'Message'
};

annotate greetingAppSrv.Button with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: buttonLabel },
    { $Type: 'UI.DataField', Value: message },
    { $Type: 'UI.DataField', Label: 'App', Value: app_ID }
];

annotate greetingAppSrv.Button with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: buttonLabel },
    { $Type: 'UI.DataField', Value: message },
    { $Type: 'UI.DataField', Label: 'App', Value: app_ID }
  ]
};

annotate greetingAppSrv.Button with {
  app @Common.Text: { $value: app.appName, ![@UI.TextArrangement]: #TextOnly }
};

annotate greetingAppSrv.Button with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

