$(document).ready(function () {
    var previousReasons = document.getElementById('previous_reasons');

    if (previousReasons.value) {
        var previousReasonIds = JSON.parse(previousReasons.value);
        $.each(previousReasonIds, function (index, id) {
            var reason = getReasonById(id);
            selectOption(reason);
        });
    }

    function getReasonById(id) {
        var reasonId = 'patient_reason_id_' + id;
        return document.getElementById(reasonId);
    }

    function selectOption(checkbox) {
        if (checkbox) {
            checkbox.checked = true;
        }
    }
});
