$(document).ready(function () {
    var surgeryViewModel = function(surgicalSpecialties) {

        function addEmptyEntryToOperations(operations) {
            if (operations[0].name) {
                operations.unshift({ name: undefined, surgery_id: undefined });
            }
        }

        surgicalSpecialties.unshift({ name: undefined, operations: undefined });

        var self = this;

        self.selectedSpecialty = ko.observable();
        self.selectedOperation = ko.observable();

        self.specialtyOptions = ko.observableArray(surgicalSpecialties);

        self.specialtiesAreAvailable = ko.computed(function () {
            return self.specialtyOptions()
        });

        self.operationsAreAvailable = ko.computed(function () {
            return self.selectedSpecialty() && self.selectedSpecialty().operations;
        });

        self.operationOptions = ko.computed(function () {
            if (self.operationsAreAvailable()) {
                var operations = self.selectedSpecialty().operations;
                addEmptyEntryToOperations(operations);
                return operations;
            }
            return undefined;
        });
    };

    $.getJSON('/specialties', function (surgicalSpecialties) {
        var surgeryOptions = new surgeryViewModel(surgicalSpecialties);
        ko.applyBindings(surgeryOptions);
    });
});
