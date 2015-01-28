$(document).ready(function () {
    var availableAsaGrades = $('.patient_asa_grade input');
    var availableReasons = $('.patient_reason input');

    availableAsaGrades.on('change', function () {
        if (selectedAsaGradeIs(1, this)) {
            $.each(availableReasons, function (index, reason) {
                if (reasonIsNone(reason)) {
                    enableOption(reason);
                    selectOption(reason);
                } else {
                    disableOption(reason);
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
    });

    function selectedAsaGradeIs(grade, radioButton) {
        var asaGradeId = 'patient_asa_grade_id_' + grade;
        return radioButton.id === asaGradeId && radioButton.checked;
    }

    function reasonIsNone(radioButton) {
        return radioButton.value === '1';
    }

    function selectOption(radioButton) {
        radioButton.checked = true;
    }

    function deselectOption(radioButton) {
        radioButton.checked = false;
    }

    function enableOption(radioButton) {
        radioButton.disabled = false;
        $(radioButton).parent().removeClass('disabled');
    }

    function disableOption(radioButton) {
        radioButton.disabled = true;
        $(radioButton).parent().addClass('disabled');
    }
});
