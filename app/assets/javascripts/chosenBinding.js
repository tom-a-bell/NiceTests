$(document).ready(function() {
    ko.bindingHandlers.chosen = {
        init: function (element, valueAccessor, allBindings) {
            var properties = { placeholder: 'Select one...', disable_search_threshold: 11 };
            $.extend(properties, valueAccessor());

            $(element).attr('data-placeholder', properties.placeholder);
            $(element).chosen(properties);

            if (allBindings().value) {
                allBindings().value.subscribe(function () {
                    $(element).trigger('chosen:updated');
                });
            }
            if (allBindings().options) {
                allBindings().options.subscribe(function () {
                    $(element).trigger('chosen:updated');
                });
            }
        }
    };
});
