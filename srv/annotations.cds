using {employeeService} from './cat-service';

annotate employeeService.Department with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable:false
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: false
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});

annotate employeeService.employee with{
    dob @title:'{i18n>dob}';
    fname @title:'{i18n>fname}'; 
    lname @title:'{i18n>lname}';
}