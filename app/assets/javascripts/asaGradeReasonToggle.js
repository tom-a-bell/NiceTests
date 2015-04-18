$(document).ready(function () {
    var availableReasons = $('.patient_reason input');
    var availableAsaGrades = $('.patient_asa_grade input');
    var initiallySelectedAsaGrade = $('.patient_asa_grade input:checked')[0];

    if (initiallySelectedAsaGrade) {
        setAvailableReasonsFor(initiallySelectedAsaGrade);
    }

    availableAsaGrades.on('change', function () {
        setAvailableReasonsFor(this);
    });

    function setAvailableReasonsFor(asaGrade) {
        if (selectedAsaGradeIs(asaGrade, 1)) {
            $.each(availableReasons, function (index, reason) {
                if (reasonIsNone(reason)) {
                    enableOption(reason);
                    selectOption(reason);
                } else {
                    disableOption(reason);
                    deselectOption(reason);
                }
            });
        } else {
            $.each(availableReasons, function (index, reason) {
                if (reasonIsNone(reason)) {
                    disableOption(reason);
                    deselectOption(reason);
                } else {
                    enableOption(reason);
                }
            });
        }
    }

    function selectedAsaGradeIs(radioButton, grade) {
        var asaGradeId = 'patient_asa_grade_id_' + grade;
        return radioButton.id === asaGradeId && radioButton.checked;
    }

    function reasonIsNone(checkbox) {
        return checkbox.value === '1';
    }

    function selectOption(checkbox) {
        checkbox.checked = true;
    }

    function deselectOption(checkbox) {
        checkbox.checked = false;
    }

    function enableOption(checkbox) {
        checkbox.disabled = false;
        $(checkbox).parent().removeClass('disabled');
    }

    function disableOption(checkbox) {
        checkbox.disabled = true;
        $(checkbox).parent().addClass('disabled');
    }
});
