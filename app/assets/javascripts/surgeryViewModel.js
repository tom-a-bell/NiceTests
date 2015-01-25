$(document).ready(function() {
    var surgeryViewModel = function(surgicalSpecialties) {
        var self = this;

        self.selectedSpecialty = ko.observable();
        self.selectedOperation = ko.observable();

        surgicalSpecialties.unshift({ name: '', operations: null });
        self.specialtyOptions = ko.observableArray(surgicalSpecialties);
        self.operationOptions = ko.computed(function() {
            if (self.selectedSpecialty()) {
                return self.selectedSpecialty().operations;
            }
            return [{ name: '' }];
        });
    };

    $.getJSON('/specialties', function (surgicalSpecialties) {
        var surgeryOptions = new surgeryViewModel(surgicalSpecialties);
        ko.applyBindings(surgeryOptions);
    });
});
