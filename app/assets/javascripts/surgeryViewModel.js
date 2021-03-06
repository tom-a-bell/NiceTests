$(document).ready(function () {
    function SurgeryViewModel() {
        function addEmptyEntryToOperations(operations) {
            if (operations[0].name) {
                operations.unshift({ name: undefined, surgery_id: undefined });
            }
        }

        var self = this;

        self.selectedSpecialty = ko.observable();
        self.selectedOperation = ko.observable();
        self.specialtyOptions = ko.observableArray();

        self.setSurgicalSpecialties = function (surgicalSpecialties) {
            surgicalSpecialties.unshift({ name: undefined, operations: undefined });
            self.specialtyOptions(surgicalSpecialties)
        };

        self.selectSpecialtyAndOperation = function (specialtyId, operationId) {
            if (specialtyId && operationId && self.specialtiesAreAvailable()) {
                var specialty = _.find(self.specialtyOptions(), 'id', parseInt(specialtyId));
                self.selectedSpecialty(specialty);

                var operation = _.find(self.operationOptions(), 'id', parseInt(operationId));
                self.selectedOperation(operation);
                self.selectedSpecialty(specialty);
            }
        };

        self.specialtiesAreAvailable = ko.computed(function () {
            return self.specialtyOptions() && self.specialtyOptions().length > 0;
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

        return self;
    }

    var surgeryViewModel = new SurgeryViewModel();
    ko.applyBindings(surgeryViewModel);

    var previousSpecialty = document.getElementById('previous_specialty');
    var previousOperation = document.getElementById('previous_operation');

    $.getJSON('/specialties', function (surgicalSpecialties) {
        surgeryViewModel.setSurgicalSpecialties(surgicalSpecialties);
        if (previousSpecialty.value && previousOperation.value) {
            surgeryViewModel.selectSpecialtyAndOperation(previousSpecialty.value, previousOperation.value);
        }
    });
});
